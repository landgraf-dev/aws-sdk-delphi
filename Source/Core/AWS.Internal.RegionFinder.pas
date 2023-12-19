unit AWS.Internal.RegionFinder;

{$I AWS.inc}

interface

uses
  System.Generics.Collections, System.SysUtils, System.StrUtils,
  AWS.Lib.Logging,
  AWS.Internal.IRegionEndpoint;

type
  TEndpointSegment = class
  strict private
    FValue: string;
    FRegionEndpoint: IRegionEndpoint;
    FUseThisValue: Boolean;
    FChildren: TList<TEndpointSegment>;
    FDoDestroy: Boolean;
  public
    constructor Create;
    destructor Destroy; override;
    function FindChildByValue(const AValue: string): TEndpointSegment;
    property Value: string read FValue write FValue;
    property RegionEndpoint: IRegionEndpoint read FRegionEndpoint write FRegionEndpoint;
    property UseThisValue: Boolean read FUseThisValue write FUseThisValue;
    property Children: TList<TEndpointSegment> read FChildren;
    property DoDestroy: Boolean read FDoDestroy write FDoDestroy;
  end;

  TRegionFinder = class
  strict private const
    DefaultRegion = 'us-east-1';
    DefaultGovRegion = 'us-gov-west-1';
  strict private
    class var FInstance: TRegionFinder;
    class destructor Destroy;
  public
    class function Instance: TRegionFinder;
  strict private
    FRoot: TEndpointSegment;
    FLogger: ILogger;
    FRegionEndpoints: TDictionary<string, IRegionEndpoint>;
    FProvider: IRegionEndpointProvider;
    procedure BuildRegionEndpoints;
    procedure BuildRoot;
    function FindExactRegion(const AEndpoint: string): TEndpointSegment; overload;
    function FindExactRegion(const ASegments: TArray<string>; ASegmentIndex: Integer;
      ACurrentEndpointSegment: TEndpointSegment): TEndpointSegment; overload;
  public
    constructor Create;
    destructor Destroy; override;
    function FindRegion(AEndpoint: string): IRegionEndpoint;
    function FindFuzzyRegion(AEndpoint: string): IRegionEndpoint;
    class function GetAuthority(const AUrl: string): string; static;
  end;

implementation

uses
  AWS.Internal.RegionEndpointV3;

{ TRegionFinder }

procedure TRegionFinder.BuildRegionEndpoints;
var
  RegionEndpoint: IRegionEndpoint;
begin
  FRegionEndpoints := TDictionary<string, IRegionEndpoint>.Create;
  for RegionEndpoint in FProvider.AllRegionEndpoints do
    FRegionEndpoints.Add(RegionEndpoint.RegionName, RegionEndpoint);
end;

procedure TRegionFinder.BuildRoot;
var
  Child: TEndpointSegment;
begin
  FRoot := TEndpointSegment.Create;

  Child := TEndpointSegment.Create;
  FRoot.Children.Add(Child);
  Child.Value := 's3-accelerate';
  Child.UseThisValue := True;

  Child := TEndpointSegment.Create;
  FRoot.Children.Add(Child);
  Child.Value := 'us-gov';
  Child.RegionEndpoint := FRegionEndpoints[DefaultGovRegion];
  Child.UseThisValue := True;

  FRoot.RegionEndpoint := FRegionEndpoints[DefaultRegion];
end;

constructor TRegionFinder.Create;
begin
  inherited Create;
  FProvider := TRegionEndpointProviderV3.Create;
  BuildRegionEndpoints;
  BuildRoot;
  FLogger := LogManager.GetLogger(TRegionFinder);
end;

class destructor TRegionFinder.Destroy;
begin
  FInstance.Free;
end;

destructor TRegionFinder.Destroy;
begin
  FRoot.Free;
  FRegionEndpoints.Free;
  inherited;
end;

function TRegionFinder.FindExactRegion(const AEndpoint: string): TEndpointSegment;
var
  Segments: TArray<string>;
begin
  Segments := TArray<string>(SplitString(AEndpoint, '.'));
  Result := FindExactRegion(Segments, Length(Segments) - 1, FRoot);
end;

function TRegionFinder.FindExactRegion(const ASegments: TArray<string>; ASegmentIndex: Integer;
  ACurrentEndpointSegment: TEndpointSegment): TEndpointSegment;
var
  Segment: string;
  NextEndpointSegment: TEndpointSegment;
  ValueToCheck: string;
  DashedSegments: TArray<string>;
  DashedSegmentIndex: Integer;
begin
  if ASegmentIndex < 0 then
    Exit(nil);

  Segment := ASegments[ASegmentIndex];
  NextEndpointSegment := ACurrentEndpointSegment.FindChildByValue(Segment);
  if NextEndpointSegment <> nil then
    ACurrentEndpointSegment := NextEndpointSegment;

  if ACurrentEndpointSegment.UseThisValue then
    Exit(ACurrentEndpointSegment);

  ValueToCheck := '';
  DashedSegments := SplitString(Segment, '-');
  for DashedSegmentIndex := Length(DashedSegments) - 1 downto 0 do
  begin
    if ValueToCheck = '' then
      ValueToCheck := DashedSegments[DashedSegmentIndex]
    else
      ValueToCheck := DashedSegments[DashedSegmentIndex] + '-' + ValueToCheck;
    if FRegionEndpoints.ContainsKey(ValueToCheck) then
    begin
      Result := TEndpointSegment.Create;
      Result.RegionEndpoint := FRegionEndpoints[ValueToCheck];
      Result.UseThisValue := True;
      Result.DoDestroy := True;
      Exit;
    end;
  end;
  Result := FindExactRegion(ASegments, ASegmentIndex - 1, ACurrentEndpointSegment);
end;

function TRegionFinder.FindFuzzyRegion(AEndpoint: string): IRegionEndpoint;
begin
  {TODO: Implement FindFuzzyRegion}
  Result := nil;
end;

function TRegionFinder.FindRegion(AEndpoint: string): IRegionEndpoint;
var
  ExactRegion: TEndpointSegment;
  FuzzyRegion: IRegionEndpoint;
begin
  if AEndpoint = '' then
    Exit(FRoot.RegionEndpoint);

  AEndpoint := GetAuthority(LowerCase(AEndpoint));

  ExactRegion := FindExactRegion(AEndpoint);
  try
    if (ExactRegion <> nil) and ExactRegion.UseThisValue then
      Exit(ExactRegion.RegionEndpoint);
  finally
    if (ExactRegion <> nil) and ExactRegion.DoDestroy then
      ExactRegion.Free;
  end;

  FLogger.Info('Unable to find exact matched region in endpoint ' + AEndpoint);

  FuzzyRegion := FindFuzzyRegion(AEndpoint);
  if FuzzyRegion <> nil then
  begin
    FLogger.Info(Format('%s fuzzy region found in endpoint %s', [FuzzyRegion.RegionName, AEndpoint]));
    Result := FuzzyRegion;
  end
  else
  begin
    FLogger.Info('Unable to find fuzzy matched region in endpoint ' + AEndpoint);
    Result := FRoot.RegionEndpoint;
  end;
end;

class function TRegionFinder.GetAuthority(const AUrl: string): string;
var
  SchemeEndIndex: Integer;
  HostEndIndex: Integer;
begin
  if AUrl = '' then
    Exit('');

  SchemeEndIndex := Pos('://', AUrl);
  Result := AUrl;
  if SchemeEndIndex > 0 then
    Result := Copy(Result, SchemeEndIndex + 3);

  HostEndIndex := Pos('/', Result);
  if HostEndIndex > 0 then
    Result := Copy(Result, 1, HostEndIndex - 1);
end;

class function TRegionFinder.Instance: TRegionFinder;
begin
  if FInstance = nil then
    FInstance := TRegionFinder.Create;
  Result := FInstance;
end;

{ TEndpointSegment }

constructor TEndpointSegment.Create;
begin
  inherited Create;
  FChildren := TObjectList<TEndpointSegment>.Create;
end;

destructor TEndpointSegment.Destroy;
begin
  FChildren.Free;
  inherited;
end;

function TEndpointSegment.FindChildByValue(const AValue: string): TEndpointSegment;
var
  I: Integer;
begin
  for I := 0 to Children.Count - 1 do
    if AValue = Children[I].Value then
      Exit(Children[I]);
  Result := nil;
end;

end.
