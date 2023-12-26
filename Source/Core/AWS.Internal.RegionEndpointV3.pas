unit AWS.Internal.RegionEndpointV3;

{$I AWS.inc}

interface

{$R AWS.Region.res}

uses
  System.Generics.Collections, System.SysUtils, System.Classes, System.Types, System.StrUtils, System.RegularExpressions,
  System.JSON,
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
    FPartitionJsonData: TJSONObject;
    FServicesJsonData: TJSONObject;
    FServiceMap: TRegionServiceMap;
    FServicesLoaded: Boolean;
    function GetRegionName: string;
    function GetDisplayName: string;
    function GetPartitionDnsSuffix: string;
    function GetPartitionName: string;
    function CreateUnknownEndpoint(const AServiceName: string; ADualStack: Boolean): IEndpoint;
    procedure ParseAllServices;
    procedure AddServiceToMap(AService: TJSONObject; const AServiceName: string);
    procedure MergeJsonData(ATarget, ASource: TJSONObject);
    procedure CreateEndpointAndAddToServiceMap(AData: TJSONObject; const ARegionName, AServiceName: string); overload;
    procedure CreateEndpointAndAddToServiceMap(AData: TJSONObject; const ARegionName, AServiceName: string;
      ADualStack: Boolean); overload;
    function DetermineSignatureOverride(ADefaults: TJSONObject; const AServiceName: string): string;
    function DetermineAuthRegion(ACredentialScope: TJSONObject): string;
  public
    constructor Create(const ARegionName, ADisplayName: string; APartition, AServices: TJSONObject);
    destructor Destroy; override;
    function GetEndpointForService(const AServiceName: string; ADualStack: Boolean): IEndpoint;
    property PartitionName: string read GetPartitionName;
    property PartitionDnsSuffix: string read GetPartitionDnsSuffix;
  end;

  TRegionEndpointProviderV3 = class(TInterfacedObject, IRegionEndpointProvider)
  strict private
    const ENDPOINT_JSON_RESOURCE = 'AWS_ENDPOINTS';
  strict private
    FRoot: TJSONObject;
    FRegionEndpointMap: TList<IRegionEndpoint>; // Check if a dictionary is faster later, if needed
    FNonStandardRegionNameToObjectMap: TList<IRegionEndpoint>; // Check if a dictionary is faster later, if needed
    FAllRegionEndpoints: TList<IRegionEndpoint>;
    procedure LoadEndpointsJson;
    function IsRegionInPartition(const ARegionName: string; APartition: TJSONObject; var Description: string): Boolean;
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

{ TRegionEndpointV3 }

procedure TRegionEndpointV3.AddServiceToMap(AService: TJSONObject; const AServiceName: string);
var
  PartitionEndpoint: string;
  IsRegionalized: Boolean;
  ServiceEndpoint: string;
  RegionEndpoint: TJSONObject;
  ResultData: TJSONObject;
begin
  if AService.GetValue('partitionEndpoint') <> nil then
    PartitionEndpoint := TJSONString(AService.Values['partitionEndpoint']).Value;
  if AService.GetValue('isRegionalized') <> nil then
    IsRegionalized := TJSONBool(AService.Values['isRegionalized']).AsBoolean
  else
    IsRegionalized := True;

  ServiceEndpoint := GetRegionName;

  // Use the partition's default endpoint if the service is not regionalized, like Route53, and there is no
  // endpoint defined for the this service name.
  if not IsRegionalized and not (TJSONObject(AService.Values['endpoints']).GetValue(ServiceEndpoint) <> nil)
    and (PartitionEndpoint <> '') then
    ServiceEndpoint := PartitionEndpoint;

  if not (TJSONObject(AService.Values['endpoints']).GetValue(ServiceEndpoint) <> nil) then
    Exit;

  RegionEndpoint := (AService.Values['endpoints'] as TJSONObject).Values[ServiceEndpoint] as TJSONObject;

  ResultData := TJSONObject.Create;
  try
    MergeJsonData(ResultData, RegionEndpoint);
    if AService.GetValue('defaults') <> nil then
      MergeJsonData(ResultData, AService.Values['defaults'] as TJSONObject);
    if FPartitionJsonData.GetValue('defaults') <> nil then
      MergeJsonData(ResultData, FPartitionJsonData.Values['defaults'] as TJSONObject);
    CreateEndpointAndAddToServiceMap(ResultData, GetRegionName, AServiceName);
  finally
    ResultData.Free;
  end;
end;

constructor TRegionEndpointV3.Create(const ARegionName, ADisplayName: string;
  APartition, AServices: TJSONObject);
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

procedure TRegionEndpointV3.CreateEndpointAndAddToServiceMap(AData: TJSONObject; const ARegionName, AServiceName: string;
  ADualStack: Boolean);
var
  HostName: string;
  FirstDot: Integer;
  AuthRegion: string;
  CustomService: string;
  CredentialScope: TJSONObject;
  SignatureOverride: string;
  Endpoint: IEndpoint;
begin
  HostName := (AData.Values['hostname'] as TJSONString).Value;
  HostName := StringReplace(HostName, '{service}', AServiceName, []);
  HostName := StringReplace(HostName, '{region}', ARegionName, []);
  HostName := StringReplace(HostName, '{dnsSuffix}', (FPartitionJsonData.Values['dnsSuffix'] as TJSONString).Value, []);

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
        (FPartitionJsonData.Values['dnsSuffix'] as TJSONString).Value]);
    end;
  end;

  if AData.GetValue('credentialScope') <> nil then
  begin
    CredentialScope := AData.Values['credentialScope'] as TJSONObject;
    AuthRegion := DetermineAuthRegion(CredentialScope);

    // This is a workaround until we overhaul how the SDK consumes the v3 endpoint structure
    // and customize the signing based on the metadata in the endpoint structure.
    // There are points in SDK where we retrieve endpoints via service name such as "execute-api".
    // Since we are building a cache, just add the custom service entry.
    if (CredentialScope.GetValue('service') <> nil) and not SameText(AServiceName, (CredentialScope.Values['service'] as TJSONString).Value) then
      CustomService := (CredentialScope.Values['service'] as TJSONString).Value;
  end;

  SignatureOverride := DetermineSignatureOverride(AData, AServiceName);

  Endpoint := TEndpoint.Create(HostName, AuthRegion, SignatureOverride);
  FServiceMap.Add(AServiceName, ADualStack, Endpoint);
  if (CustomService <> '') and not FServiceMap.ContainsKey(CustomService) then
    FServiceMap.Add(CustomService, ADualStack, Endpoint);
end;

procedure TRegionEndpointV3.CreateEndpointAndAddToServiceMap(AData: TJSONObject; const ARegionName, AServiceName: string);
begin
  CreateEndpointAndAddToServiceMap(AData, ARegionName, AServiceName, False);
  CreateEndpointAndAddToServiceMap(AData, ARegionName, AServiceName, True);
end;

function TRegionEndpointV3.CreateUnknownEndpoint(const AServiceName: string; ADualStack: Boolean): IEndpoint;
var
  Template: string;
begin
  Template := ((FPartitionJsonData.Values['defaults'] as TJSONObject).Values['hostname'] as TJSONString).Value;
  if ADualStack then
    Template := StringReplace(Template, '{region}', 'dualstack.{region}', []);

  Template := StringReplace(Template, '{service}', AServiceName, []);
  Template := StringReplace(Template, '{region}', GetRegionName, []);
  Template := StringReplace(Template, '{dnsSuffix}', (FPartitionJsonData.Values['dnsSuffix'] as TJSONString).Value, []);

  Result := TEndpoint.Create(Template, '', '');
end;

destructor TRegionEndpointV3.Destroy;
begin
  FServiceMap.Free;
//  FPartitionJsonData.Free;
//  FServicesJsonData.Free;
  inherited;
end;

function TRegionEndpointV3.DetermineSignatureOverride(ADefaults: TJSONObject; const AServiceName: string): string;
var
  SupportsSigV2: Boolean;
  Element: TJSONValue;
  Sig: string;
begin
  if SameText(AServiceName, 's3') then
  begin
    SupportsSigV2 := False;
    for Element in (ADefaults.Values['signatureVersions'] as TJSONArray) do
    begin
      Sig := (Element as TJSONString).Value;
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

function TRegionEndpointV3.DetermineAuthRegion(ACredentialScope: TJSONObject): string;
begin
  if ACredentialScope.GetValue('region') <> nil then
    Result := (ACredentialScope.Values['region'] as TJSONString).Value
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
  Result := (FPartitionJsonData.Values['dnsSuffix'] as TJSONString).Value;
end;

function TRegionEndpointV3.GetPartitionName: string;
begin
  Result := (FPartitionJsonData.Values['partition'] as TJSONString).Value;
end;

function TRegionEndpointV3.GetRegionName: string;
begin
  Result := FRegionName;
end;

procedure TRegionEndpointV3.MergeJsonData(ATarget, ASource: TJSONObject);
var
  Member: TJSONPair;
begin
  for Member in ASource do
    if not (ATarget.GetValue(Member.JsonString.Value) <> nil) then
      ATarget.AddPair(Member.JsonString.Value, Member.JsonValue.Clone as TJSONValue);
end;

procedure TRegionEndpointV3.ParseAllServices;
var
  Item: TJSONPair;
begin
  for Item in FServicesJsonData do
    if Item.JsonValue is TJSONObject then
      AddServiceToMap((Item.JsonValue as TJSONObject), Item.JsonString.Value);
end;

{ TRegionEndpointProviderV3 }

//function TRegionEndpointProviderV3.AllRegionEndpoints: TArray<IRegionEndpoint>;
//begin
//
//end;

function TRegionEndpointProviderV3.AllRegionEndpoints: TEnumerable<IRegionEndpoint>;
var
  Partitions: TJSONArray;
  PartitionItem: TJSONValue;
  Partition: TJSONObject;
  Regions: TJSONObject;
  RegionMember: TJSONPair;
  Endpoint: IRegionEndpoint;
begin
  if FAllRegionEndpoints = nil then
  begin
    TMonitor.Enter(FRegionEndpointMap);
    try
      if FAllRegionEndpoints = nil then
      begin
        Partitions := FRoot.Values['partitions'] as TJSONArray;
        FAllRegionEndpoints := TList<IRegionEndpoint>.Create;
        for PartitionItem in Partitions do
        begin
          Partition := PartitionItem as TJSONObject;
          Regions := Partition.Values['regions'] as TJSONObject;
          for RegionMember in Regions do
          begin
            if not TryGetValue(RegionMember.JsonString.Value, Endpoint) then
            begin
              Endpoint := TRegionEndpointV3.Create(RegionMember.JsonString.Value,
                ((RegionMember.JsonValue as TJSONObject).Values['description'] as TJSONString).Value,
                Partition, Partition.Values['services'] as TJSONObject);
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
  PartitionData: TJSONObject;
  PartitionItem: TJSONValue;
  Partition: TJSONObject;
  ServicesData: TJSONObject;
  RegionDescription: string;
  FoundContainingPartition: Boolean;
  ValidRegionRegexStr: string;
  Match: TMatch;
  PartitionServices: TJSONObject;
  Service: string;
  ServiceItem: TJSONPair;
  ServiceData: TJSONObject;
begin
  // If needed change this to a reader-writer lock
  TMonitor.Enter(FNonStandardRegionNameToObjectMap);
  try
    for Endpoint in FNonStandardRegionNameToObjectMap do
      if Endpoint.RegionName = ARegionName then
        Exit(Endpoint);

    PartitionData := (FRoot.Values['partitions'] as TJSONArray).Items[0] as TJSONObject;
    RegionDescription := GetUnknownRegionDescription(ARegionName);
    ServicesData := nil;
    FoundContainingPartition := False;
    ValidRegionRegexStr := '^[a-zA-Z0-9]([a-zA-Z0-9\-]*[a-zA-Z0-9])?$';
    Match := TRegEx.Match(ARegionName, ValidRegionRegexStr, [roCompiled]);
    for PartitionItem in (FRoot.Values['partitions'] as TJSONArray) do
    begin
      Partition := PartitionItem as TJSONObject;
      PartitionServices := Partition.Values['services'] as TJSONObject;
      for ServiceItem in PartitionServices do
      begin
        Service := ServiceItem.JsonString.Value;
        if ServiceItem.JsonValue is TJSONObject then
        begin
          ServiceData := ServiceItem.JsonValue as TJSONObject;
          if (ServiceData.GetValue('endpoints') <> nil) and (ServiceData.Values['endpoints'] is TJSONObject) and
            ((ServiceData.Values['endpoints'] as TJSONObject).Get(ARegionName) <> nil) then
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
  Partitions: TJSONArray;
  PartitionItem: TJSONValue;
  Partition: TJSONObject;
  Description: string;
begin
  // If needed change this to a reader-writer lock
  TMonitor.Enter(FRegionEndpointMap);
  try
    if TryGetValue(ARegionName, Endpoint) then
      Exit(Endpoint);

    Partitions := FRoot.Values['partitions'] as TJSONArray;
    for PartitionItem in Partitions do
    begin
      Partition := PartitionItem as TJSONObject;
      if IsRegionInPartition(ARegionName, Partition, Description) then
      begin
        Endpoint := TRegionEndpointV3.Create(ARegionName, Description, Partition, Partition.Values['services'] as TJSONObject);
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

function TRegionEndpointProviderV3.IsRegionInPartition(const ARegionName: string; APartition: TJSONObject;
  var Description: string): Boolean;
var
  RegionsData: TJSONObject;
  RegionPattern: string;
begin
  RegionsData := APartition.Values['regions'] as TJSONObject;
  RegionPattern := (APartition.Values['regionRegex'] as TJSONString).Value;
  if RegionsData.GetValue(ARegionName) <> nil then
  begin
    Description := ((RegionsData.Values[ARegionName] as TJSONObject).Values['description'] as TJSONString).Value;
    Result := True;
  end
  else
  if SameText(ARegionName, (APartition.Values['partition'] as TJSONString).Value + '-global') then
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
  Bytes: TArray<Byte>;
begin
  Stream := TResourceStream.Create(HInstance, ENDPOINT_JSON_RESOURCE, RT_RCDATA);
  try
    SetLength(Bytes, Stream.Size);
    Stream.Read(Bytes[0], Length(Bytes));
    FRoot := TJSONObject.ParseJSONValue(Bytes, 0, Length(Bytes)) as TJSONObject;
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

