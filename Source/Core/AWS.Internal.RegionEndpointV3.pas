unit AWS.Internal.RegionEndpointV3;

{$I AWS.inc}

interface

{$R AWS.Region.res}

uses
  System.Generics.Collections, System.SysUtils, System.Classes, System.Types,
  System.StrUtils,
  Bcl.Json.Classes,
  AWS.Internal.IRegionEndpoint;

type
  TRegionServiceMap = class
  strict private
    FServiceMap: TDictionary<string, IEndpoint>;
    FDualServiceMap: TDictionary<string, IEndpoint>;
    function GetMap(ADualStack: Boolean): TDictionary<string, IEndpoint>;
  public
    constructor Create;
    destructor Destroy; override;
    function ContainsKey(const AServiceName: string): Boolean;
    procedure Add(const AServiceName: string; ADualStack: Boolean; AEndpoint: IEndpoint);
    function TryGetEndpoint(const AServiceName: string; ADualStack: Boolean; var AEndpoint: IEndpoint): Boolean;
  end;

  TRegionEndpointV3 = class(TInterfacedObject, IRegionEndpoint)
  strict private
    FRegionName: string;
    FDisplayName: string;
    FPartitionJsonData: TJObject;
    FServicesJsonData: TJObject;
    FServiceMap: TRegionServiceMap;
    FServicesLoaded: Boolean;
    function GetRegionName: string;
    function GetDisplayName: string;
    function GetPartitionDnsSuffix: string;
    function GetPartitionName: string;
    function CreateUnknownEndpoint(const AServiceName: string; ADualStack: Boolean): IEndpoint;
    procedure ParseAllServices;
    procedure AddServiceToMap(AService: TJObject; const AServiceName: string);
    procedure MergeJsonData(ATarget, ASource: TJObject);
    procedure CreateEndpointAndAddToServiceMap(AData: TJObject; const ARegionName, AServiceName: string); overload;
    procedure CreateEndpointAndAddToServiceMap(AData: TJObject; const ARegionName, AServiceName: string;
      ADualStack: Boolean); overload;
    function DetermineSignatureOverride(ADefaults: TJObject; const AServiceName: string): string;
    function DetermineAuthRegion(ACredentialScope: TJObject): string;
  public
    constructor Create(const ARegionName, ADisplayName: string; APartition, AServices: TJObject);
    destructor Destroy; override;
    function GetEndpointForService(const AServiceName: string; ADualStack: Boolean): IEndpoint;
    property PartitionName: string read GetPartitionName;
    property PartitionDnsSuffix: string read GetPartitionDnsSuffix;
  end;

  TRegionEndpointProviderV3 = class(TInterfacedObject, IRegionEndpointProvider)
  strict private
    const ENDPOINT_JSON_RESOURCE = 'AWS_ENDPOINTS';
  strict private
    FRoot: TJObject;
    FRegionEndpointMap: TList<IRegionEndpoint>; // Check if a dictionary is faster later, if needed
    FNonStandardRegionNameToObjectMap: TList<IRegionEndpoint>; // Check if a dictionary is faster later, if needed
    FAllRegionEndpoints: TList<IRegionEndpoint>;
    procedure LoadEndpointsJson;
    function IsRegionInPartition(const ARegionName: string; APartition: TJObject; var Description: string): Boolean;
    function GetNonStandardRegionEndpoint(const ARegionName: string): IRegionEndpoint;
    function GetUnknownRegionDescription(const ARegionName: string): string;
    function TryGetValue(const ARegionName: string; var AEndpoint: IRegionEndpoint): Boolean;
  public
    constructor Create;
    destructor Destroy; override;
    function AllRegionEndpoints: TEnumerable<IRegionEndpoint>;
    function GetRegionEndpoint(const ARegionName: string): IRegionEndpoint;
  end;

implementation

uses
  System.RegularExpressions,
  Bcl.Json;

{ TRegionEndpointV3 }

procedure TRegionEndpointV3.AddServiceToMap(AService: TJObject; const AServiceName: string);
var
  PartitionEndpoint: string;
  IsRegionalized: Boolean;
  ServiceEndpoint: string;
  RegionEndpoint: TJObject;
  ResultData: TJObject;
begin
  if AService.Contains('partitionEndpoint') then
    PartitionEndpoint := AService['partitionEndpoint'].AsString;
  if AService.Contains('isRegionalized') then
    IsRegionalized := AService['isRegionalized'].AsBoolean
  else
    IsRegionalized := True;

  ServiceEndpoint := GetRegionName;

  // Use the partition's default endpoint if the service is not regionalized, like Route53, and there is no
  // endpoint defined for the this service name.
  if not IsRegionalized and not AService['endpoints'].AsObject.Contains(ServiceEndpoint)
    and (PartitionEndpoint <> '') then
    ServiceEndpoint := PartitionEndpoint;

  if not AService['endpoints'].AsObject.Contains(ServiceEndpoint) then
    Exit;

  RegionEndpoint := AService['endpoints'].AsObject[ServiceEndpoint].AsObject;

  ResultData := TJObject.Create;
  try
    MergeJsonData(ResultData, RegionEndpoint);
    if AService.Contains('defaults') then
      MergeJsonData(ResultData, AService['defaults'].AsObject);
    if FPartitionJsonData.Contains('defaults') then
      MergeJsonData(ResultData, FPartitionJsonData['defaults'].AsObject);
    CreateEndpointAndAddToServiceMap(ResultData, GetRegionName, AServiceName);
  finally
    ResultData.Free;
  end;
end;

constructor TRegionEndpointV3.Create(const ARegionName, ADisplayName: string;
  APartition, AServices: TJObject);
begin
  inherited Create;
  FRegionName := ARegionName;
  FDisplayName := ADisplayName;
//  FPartitionJsonData := APartition.Clone.AsObject;
//  if AServices = nil then
//    FServicesJsonData := TJObject.Create
//  else
//    FServicesJsonData := AServices.Clone.AsObject;

  FPartitionJsonData := APartition;
  FServicesJsonData := AServices;
  FServiceMap := TRegionServiceMap.Create;
end;

procedure TRegionEndpointV3.CreateEndpointAndAddToServiceMap(AData: TJObject; const ARegionName, AServiceName: string;
  ADualStack: Boolean);
var
  HostName: string;
  FirstDot: Integer;
  AuthRegion: string;
  CustomService: string;
  CredentialScope: TJObject;
  SignatureOverride: string;
  Endpoint: IEndpoint;
begin
  HostName := AData['hostname'].AsString;
  HostName := StringReplace(HostName, '{service}', AServiceName, []);
  HostName := StringReplace(HostName, '{region}', ARegionName, []);
  HostName := StringReplace(HostName, '{dnsSuffix}', FPartitionJsonData['dnsSuffix'].AsString, []);

  if ADualStack then
  begin
    // We need special handling for S3's s3.amazonaws.com endpoint, which doesn't
    // support dualstack (need to transform to s3.dualstack.us-east-1.amazonaws.com).
    // Other endpoints that begin s3-* need to transform to s3.* for dualstack support.
    // S3's 'external' endpoints do not support dualstack and should not be transformed.
    if SameText(AServiceName, 's3') then
    begin
      if SameText(HostName, 's3.amazonaws.com') then
        HostName := 's3.dualstack.us-east-1.amazonaws.com'
      else
      if not StartsText('s3-external-', HostName) then
      begin
        // transform fixed s3-<region> to s3.<region> and then onto s3.dualstack.<region>,
        // bypassing endpoints that do not start with the expected tags.
        if StartsText('s3-', HostName) then
          HostName := 's3.' + Copy(HostName, 4);

        if StartsText('s3.', HostName) then
          HostName := StringReplace(HostName, 's3.', 's3.dualstack.', [rfIgnoreCase]);
      end;
    end
    else if SameText(AServiceName, 's3-control') then
    begin
      // transform s3-control.<region>.amazonaws.com or s3-control-fips.<region>.amazonaws.com into
      // s3-control.dualstack.<region>.amazonaws.com and s3-control-fips.dualstack.<region>.amazonaws.com
      if StartsText('s3-control', HostName) then
      begin
        FirstDot := Pos('.', HostName);
        if FirstDot > 0 then
          HostName := Copy(HostName, 1, FirstDot - 1) + '.dualstack.' + Copy(HostName, FirstDot + 1);
      end;
    end
    else
    begin
      // For certain region and endpoint combination, we actually get an explicit endpoint as "hostname" property
      // (e.g. sts.ap-northeast-2.amazon.com). We can't assume that the template variable will be {service}.{region}.{dnsSuffix},
      // so just construct a brand new endpoint.
      HostName := Format('%s.%s.%s', [AServiceName, 'dualstack.' + GetRegionName,
        FPartitionJsonData['dnsSuffix'].AsString]);
    end;
  end;

  if AData.Contains('credentialScope') then
  begin
    CredentialScope := AData['credentialScope'].AsObject;
    AuthRegion := DetermineAuthRegion(CredentialScope);

    // This is a workaround until we overhaul how the SDK consumes the v3 endpoint structure
    // and customize the signing based on the metadata in the endpoint structure.
    // There are points in SDK where we retrieve endpoints via service name such as "execute-api".
    // Since we are building a cache, just add the custom service entry.
    if CredentialScope.Contains('service') and not SameText(AServiceName, CredentialScope['service'].AsString) then
      CustomService := CredentialScope['service'].AsString;
  end;

  SignatureOverride := DetermineSignatureOverride(AData, AServiceName);

  Endpoint := TEndpoint.Create(HostName, AuthRegion, SignatureOverride);
  FServiceMap.Add(AServiceName, ADualStack, Endpoint);
  if (CustomService <> '') and not FServiceMap.ContainsKey(CustomService) then
    FServiceMap.Add(CustomService, ADualStack, Endpoint);
end;

procedure TRegionEndpointV3.CreateEndpointAndAddToServiceMap(AData: TJObject; const ARegionName, AServiceName: string);
begin
  CreateEndpointAndAddToServiceMap(AData, ARegionName, AServiceName, False);
  CreateEndpointAndAddToServiceMap(AData, ARegionName, AServiceName, True);
end;

function TRegionEndpointV3.CreateUnknownEndpoint(const AServiceName: string; ADualStack: Boolean): IEndpoint;
var
  Template: string;
begin
  Template := FPartitionJsonData['defaults'].AsObject['hostname'].AsString;
  if ADualStack then
    Template := StringReplace(Template, '{region}', 'dualstack.{region}', []);

  Template := StringReplace(Template, '{service}', AServiceName, []);
  Template := StringReplace(Template, '{region}', GetRegionName, []);
  Template := StringReplace(Template, '{dnsSuffix}', FPartitionJsonData['dnsSuffix'].AsString, []);

  Result := TEndpoint.Create(Template, '', '');
end;

destructor TRegionEndpointV3.Destroy;
begin
  FServiceMap.Free;
//  FPartitionJsonData.Free;
//  FServicesJsonData.Free;
  inherited;
end;

function TRegionEndpointV3.DetermineSignatureOverride(ADefaults: TJObject; const AServiceName: string): string;
var
  SupportsSigV2: Boolean;
  Element: TJElement;
  Sig: string;
begin
  if SameText(AServiceName, 's3') then
  begin
    SupportsSigV2 := False;
    for Element in ADefaults['signatureVersions'].AsArray do
    begin
      Sig := Element.AsString;
      if SameText(Sig, 's3') then
      begin
        supportsSigV2 := True;
        Break;
      end;
    end;
    if SupportsSigV2 then
      Result := '2'
    else
      Result := '4';
  end
  else
    Result := '';
end;

function TRegionEndpointV3.DetermineAuthRegion(ACredentialScope: TJObject): string;
begin
  if ACredentialScope.Contains('region') then
    Result := ACredentialScope['region'].AsString
  else
    Result := '';
end;

function TRegionEndpointV3.GetDisplayName: string;
begin
  Result := FDisplayName;
end;

function TRegionEndpointV3.GetEndpointForService(const AServiceName: string; ADualStack: Boolean): IEndpoint;
begin
  Result := nil;
  TMonitor.Enter(FServiceMap);
  try
    if not FServicesLoaded then
    begin
      ParseAllServices;
      FServicesLoaded := True;
    end;
    if not FServiceMap.TryGetEndpoint(AServiceName, ADualStack, Result) then
      Result := CreateUnknownEndpoint(AServiceName, ADualStack);
  finally
    TMonitor.Exit(FServiceMap);
  end;
end;

function TRegionEndpointV3.GetPartitionDnsSuffix: string;
begin
  Result := FPartitionJsonData['dnsSuffix'].AsString;
end;

function TRegionEndpointV3.GetPartitionName: string;
begin
  Result := FPartitionJsonData['partition'].AsString;
end;

function TRegionEndpointV3.GetRegionName: string;
begin
  Result := FRegionName;
end;

procedure TRegionEndpointV3.MergeJsonData(ATarget, ASource: TJObject);
var
  Member: TJMember;
begin
  for Member in ASource do
    if not ATarget.Contains(Member.Name) then
      ATarget[Member.Name] := Member.Value.Clone;
end;

procedure TRegionEndpointV3.ParseAllServices;
var
  Item: TJMember;
begin
  for Item in FServicesJsonData do
    if Item.Value.IsObject then
      AddServiceToMap(Item.Value.AsObject, Item.Name);
end;

{ TRegionEndpointProviderV3 }

//function TRegionEndpointProviderV3.AllRegionEndpoints: TArray<IRegionEndpoint>;
//begin
//
//end;

function TRegionEndpointProviderV3.AllRegionEndpoints: TEnumerable<IRegionEndpoint>;
var
  Partitions: TJArray;
  PartitionItem: TJElement;
  Partition: TJObject;
  Regions: TJObject;
  RegionMember: TJMember;
  Endpoint: IRegionEndpoint;
begin
  if FAllRegionEndpoints = nil then
  begin
    TMonitor.Enter(FRegionEndpointMap);
    try
      if FAllRegionEndpoints = nil then
      begin
        Partitions := FRoot['partitions'].AsArray;
        FAllRegionEndpoints := TList<IRegionEndpoint>.Create;
        for PartitionItem in Partitions do
        begin
          Partition := PartitionItem.AsObject;
          Regions := Partition['regions'].AsObject;
          for RegionMember in Regions do
          begin
            if not TryGetValue(RegionMember.Name, Endpoint) then
            begin
              Endpoint := TRegionEndpointV3.Create(RegionMember.Name,
                RegionMember.Value.AsObject['description'].AsString,
                Partition, Partition['services'].AsObject);
              FRegionEndpointMap.Add(Endpoint);
            end;
            FAllRegionEndpoints.Add(Endpoint);
          end;
        end;
      end;
    finally
      TMonitor.Exit(FRegionEndpointMap);
    end;
  end;
  Result := FAllRegionEndpoints;
end;

constructor TRegionEndpointProviderV3.Create;
begin
  inherited Create;
  FRegionEndpointMap := TList<IRegionEndpoint>.Create;
  FNonStandardRegionNameToObjectMap := TList<IRegionEndpoint>.Create;
  LoadEndpointsJson;
end;

destructor TRegionEndpointProviderV3.Destroy;
begin
  FRegionEndpointMap.Free;
  FNonStandardRegionNameToObjectMap.Free;
  FAllRegionEndpoints.Free;
  FRoot.Free;
  inherited;
end;

function TRegionEndpointProviderV3.GetNonStandardRegionEndpoint(const ARegionName: string): IRegionEndpoint;
var
  Endpoint: IRegionEndpoint;
  PartitionData: TJObject;
  PartitionItem: TJElement;
  Partition: TJObject;
  ServicesData: TJObject;
  RegionDescription: string;
  FoundContainingPartition: Boolean;
  ValidRegionRegexStr: string;
  Match: TMatch;
  PartitionServices: TJObject;
  Service: string;
  ServiceItem: TJMember;
  ServiceData: TJObject;
begin
  // If needed change this to a reader-writer lock
  TMonitor.Enter(FNonStandardRegionNameToObjectMap);
  try
    for Endpoint in FNonStandardRegionNameToObjectMap do
      if Endpoint.RegionName = ARegionName then
        Exit(Endpoint);

    PartitionData := FRoot['partitions'].AsArray[0].AsObject;
    RegionDescription := GetUnknownRegionDescription(ARegionName);
    ServicesData := nil;
    FoundContainingPartition := False;
    ValidRegionRegexStr := '^[a-zA-Z0-9]([a-zA-Z0-9\-]*[a-zA-Z0-9])?$';
    Match := TRegEx.Match(ARegionName, ValidRegionRegexStr, [roCompiled]);
    for PartitionItem in FRoot['partitions'].AsArray do
    begin
      Partition := PartitionItem.AsObject;
      PartitionServices := Partition['services'].AsObject;
      for ServiceItem in PartitionServices do
      begin
        Service := ServiceItem.Name;
        if ServiceItem.Value.IsObject then
        begin
          ServiceData := ServiceItem.Value.AsObject;
          if ServiceData.Contains('endpoints') and ServiceData['endpoints'].IsObject and
            ServiceData['endpoints'].AsObject.Contains(ARegionName) then
          begin
            PartitionData := Partition;
            ServicesData := PartitionServices;
            FoundContainingPartition := True;
            Break;
          end;
        end;
      end;
    end;
    if not FoundContainingPartition and not Match.Success then
      raise EArgumentException.Create('Invalid region endpoint provided');

    Result := TRegionEndpointV3.Create(ARegionName, RegionDescription, PartitionData, ServicesData);
    FNonStandardRegionNameToObjectMap.Add(Result);
  finally
    TMonitor.Exit(FNonStandardRegionNameToObjectMap);
  end;
end;

function TRegionEndpointProviderV3.GetRegionEndpoint(const ARegionName: string): IRegionEndpoint;
var
  Endpoint: IRegionEndpoint;
  Partitions: TJArray;
  PartitionItem: TJElement;
  Partition: TJObject;
  Description: string;
begin
  // If needed change this to a reader-writer lock
  TMonitor.Enter(FRegionEndpointMap);
  try
    if TryGetValue(ARegionName, Endpoint) then
      Exit(Endpoint);

    Partitions := FRoot['partitions'].AsArray;
    for PartitionItem in Partitions do
    begin
      Partition := PartitionItem.AsObject;
      if IsRegionInPartition(ARegionName, Partition, Description) then
      begin
        Endpoint := TRegionEndpointV3.Create(ARegionName, Description, Partition, Partition['services'].AsObject);
        FRegionEndpointMap.Add(Endpoint);
        Exit(Endpoint);
      end;
    end;
  finally
    TMonitor.Exit(FRegionEndpointMap);
  end;

  Result := GetNonstandardRegionEndpoint(ARegionName);
end;

function TRegionEndpointProviderV3.GetUnknownRegionDescription(const ARegionName: string): string;
begin
  if StartsText('cn-', ARegionName) or EndsText('cn-global', ARegionName) then
    Result := 'China (Unknown)'
  else
    Result := 'Unknown';
end;

function TRegionEndpointProviderV3.IsRegionInPartition(const ARegionName: string; APartition: TJObject;
  var Description: string): Boolean;
var
  RegionsData: TJObject;
  RegionPattern: string;
begin
  RegionsData := APartition['regions'].AsObject;
  RegionPattern := APartition['regionRegex'].AsString;
  if RegionsData.Contains(ARegionName) then
  begin
    Description := RegionsData[ARegionName].AsObject['description'].AsString;
    Result := True;
  end
  else
  if SameText(ARegionName, APartition['partition'].AsString + '-global') then
  begin
    Description := 'Global';
    Result := True;
  end
  else if TRegEx.Create(RegionPattern).Match(ARegionName).Success then
  begin
    Description := GetUnknownRegionDescription(ARegionName);
    Result := True;
  end
  else
  begin
    Description := GetUnknownRegionDescription(ARegionName);
    Result := False;
  end;
end;

procedure TRegionEndpointProviderV3.LoadEndpointsJson;
var
  Stream: TStream;
begin
  Stream := TResourceStream.Create(HInstance, ENDPOINT_JSON_RESOURCE, RT_RCDATA);
  try
    FRoot := TJson.Deserialize<TJObject>(Stream);
  finally
    Stream.Free;
  end;
end;

function TRegionEndpointProviderV3.TryGetValue(const ARegionName: string; var AEndpoint: IRegionEndpoint): Boolean;
var
  Endpoint: IRegionEndpoint;
begin
  for Endpoint in FRegionEndpointMap do
    if Endpoint.RegionName = ARegionName then
    begin
      AEndpoint := Endpoint;
      Exit(True);
    end;
  Result := False;
end;

{ TRegionServiceMap }

procedure TRegionServiceMap.Add(const AServiceName: string; ADualStack: Boolean; AEndpoint: IEndpoint);
begin
  GetMap(ADualStack).Add(AServiceName, AEndpoint);
end;

function TRegionServiceMap.ContainsKey(const AServiceName: string): Boolean;
begin
  Result := FServiceMap.ContainsKey(AServiceName);
end;

constructor TRegionServiceMap.Create;
begin
  inherited;
  FServiceMap := TDictionary<string, IEndpoint>.Create;
  FDualServiceMap := TDictionary<string, IEndpoint>.Create;
end;

destructor TRegionServiceMap.Destroy;
begin
  FServiceMap.Free;
  FDualServiceMap.Free;
  inherited;
end;

function TRegionServiceMap.GetMap(ADualStack: Boolean): TDictionary<string, IEndpoint>;
begin
  if ADualStack then
    Result := FDualServiceMap
  else
    Result := FServiceMap;
end;

function TRegionServiceMap.TryGetEndpoint(const AServiceName: string; ADualStack: Boolean;
  var AEndpoint: IEndpoint): Boolean;
begin
  Result := GetMap(ADualStack).TryGetValue(AServiceName, AEndpoint);
end;

end.

