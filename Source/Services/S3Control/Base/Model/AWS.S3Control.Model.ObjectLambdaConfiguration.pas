unit AWS.S3Control.Model.ObjectLambdaConfiguration;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.S3Control.Model.ObjectLambdaTransformationConfiguration;

type
  TObjectLambdaConfiguration = class;
  
  IObjectLambdaConfiguration = interface
    function GetAllowedFeatures: TList<string>;
    procedure SetAllowedFeatures(const Value: TList<string>);
    function GetKeepAllowedFeatures: Boolean;
    procedure SetKeepAllowedFeatures(const Value: Boolean);
    function GetCloudWatchMetricsEnabled: Boolean;
    procedure SetCloudWatchMetricsEnabled(const Value: Boolean);
    function GetSupportingAccessPoint: string;
    procedure SetSupportingAccessPoint(const Value: string);
    function GetTransformationConfigurations: TObjectList<TObjectLambdaTransformationConfiguration>;
    procedure SetTransformationConfigurations(const Value: TObjectList<TObjectLambdaTransformationConfiguration>);
    function GetKeepTransformationConfigurations: Boolean;
    procedure SetKeepTransformationConfigurations(const Value: Boolean);
    function Obj: TObjectLambdaConfiguration;
    function IsSetAllowedFeatures: Boolean;
    function IsSetCloudWatchMetricsEnabled: Boolean;
    function IsSetSupportingAccessPoint: Boolean;
    function IsSetTransformationConfigurations: Boolean;
    property AllowedFeatures: TList<string> read GetAllowedFeatures write SetAllowedFeatures;
    property KeepAllowedFeatures: Boolean read GetKeepAllowedFeatures write SetKeepAllowedFeatures;
    property CloudWatchMetricsEnabled: Boolean read GetCloudWatchMetricsEnabled write SetCloudWatchMetricsEnabled;
    property SupportingAccessPoint: string read GetSupportingAccessPoint write SetSupportingAccessPoint;
    property TransformationConfigurations: TObjectList<TObjectLambdaTransformationConfiguration> read GetTransformationConfigurations write SetTransformationConfigurations;
    property KeepTransformationConfigurations: Boolean read GetKeepTransformationConfigurations write SetKeepTransformationConfigurations;
  end;
  
  TObjectLambdaConfiguration = class
  strict private
    FAllowedFeatures: TList<string>;
    FKeepAllowedFeatures: Boolean;
    FCloudWatchMetricsEnabled: Nullable<Boolean>;
    FSupportingAccessPoint: Nullable<string>;
    FTransformationConfigurations: TObjectList<TObjectLambdaTransformationConfiguration>;
    FKeepTransformationConfigurations: Boolean;
    function GetAllowedFeatures: TList<string>;
    procedure SetAllowedFeatures(const Value: TList<string>);
    function GetKeepAllowedFeatures: Boolean;
    procedure SetKeepAllowedFeatures(const Value: Boolean);
    function GetCloudWatchMetricsEnabled: Boolean;
    procedure SetCloudWatchMetricsEnabled(const Value: Boolean);
    function GetSupportingAccessPoint: string;
    procedure SetSupportingAccessPoint(const Value: string);
    function GetTransformationConfigurations: TObjectList<TObjectLambdaTransformationConfiguration>;
    procedure SetTransformationConfigurations(const Value: TObjectList<TObjectLambdaTransformationConfiguration>);
    function GetKeepTransformationConfigurations: Boolean;
    procedure SetKeepTransformationConfigurations(const Value: Boolean);
  strict protected
    function Obj: TObjectLambdaConfiguration;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAllowedFeatures: Boolean;
    function IsSetCloudWatchMetricsEnabled: Boolean;
    function IsSetSupportingAccessPoint: Boolean;
    function IsSetTransformationConfigurations: Boolean;
    property AllowedFeatures: TList<string> read GetAllowedFeatures write SetAllowedFeatures;
    property KeepAllowedFeatures: Boolean read GetKeepAllowedFeatures write SetKeepAllowedFeatures;
    property CloudWatchMetricsEnabled: Boolean read GetCloudWatchMetricsEnabled write SetCloudWatchMetricsEnabled;
    property SupportingAccessPoint: string read GetSupportingAccessPoint write SetSupportingAccessPoint;
    property TransformationConfigurations: TObjectList<TObjectLambdaTransformationConfiguration> read GetTransformationConfigurations write SetTransformationConfigurations;
    property KeepTransformationConfigurations: Boolean read GetKeepTransformationConfigurations write SetKeepTransformationConfigurations;
  end;
  
implementation

{ TObjectLambdaConfiguration }

constructor TObjectLambdaConfiguration.Create;
begin
  inherited;
  FAllowedFeatures := TList<string>.Create;
  FTransformationConfigurations := TObjectList<TObjectLambdaTransformationConfiguration>.Create;
end;

destructor TObjectLambdaConfiguration.Destroy;
begin
  TransformationConfigurations := nil;
  AllowedFeatures := nil;
  inherited;
end;

function TObjectLambdaConfiguration.Obj: TObjectLambdaConfiguration;
begin
  Result := Self;
end;

function TObjectLambdaConfiguration.GetAllowedFeatures: TList<string>;
begin
  Result := FAllowedFeatures;
end;

procedure TObjectLambdaConfiguration.SetAllowedFeatures(const Value: TList<string>);
begin
  if FAllowedFeatures <> Value then
  begin
    if not KeepAllowedFeatures then
      FAllowedFeatures.Free;
    FAllowedFeatures := Value;
  end;
end;

function TObjectLambdaConfiguration.GetKeepAllowedFeatures: Boolean;
begin
  Result := FKeepAllowedFeatures;
end;

procedure TObjectLambdaConfiguration.SetKeepAllowedFeatures(const Value: Boolean);
begin
  FKeepAllowedFeatures := Value;
end;

function TObjectLambdaConfiguration.IsSetAllowedFeatures: Boolean;
begin
  Result := (FAllowedFeatures <> nil) and (FAllowedFeatures.Count > 0);
end;

function TObjectLambdaConfiguration.GetCloudWatchMetricsEnabled: Boolean;
begin
  Result := FCloudWatchMetricsEnabled.ValueOrDefault;
end;

procedure TObjectLambdaConfiguration.SetCloudWatchMetricsEnabled(const Value: Boolean);
begin
  FCloudWatchMetricsEnabled := Value;
end;

function TObjectLambdaConfiguration.IsSetCloudWatchMetricsEnabled: Boolean;
begin
  Result := FCloudWatchMetricsEnabled.HasValue;
end;

function TObjectLambdaConfiguration.GetSupportingAccessPoint: string;
begin
  Result := FSupportingAccessPoint.ValueOrDefault;
end;

procedure TObjectLambdaConfiguration.SetSupportingAccessPoint(const Value: string);
begin
  FSupportingAccessPoint := Value;
end;

function TObjectLambdaConfiguration.IsSetSupportingAccessPoint: Boolean;
begin
  Result := FSupportingAccessPoint.HasValue;
end;

function TObjectLambdaConfiguration.GetTransformationConfigurations: TObjectList<TObjectLambdaTransformationConfiguration>;
begin
  Result := FTransformationConfigurations;
end;

procedure TObjectLambdaConfiguration.SetTransformationConfigurations(const Value: TObjectList<TObjectLambdaTransformationConfiguration>);
begin
  if FTransformationConfigurations <> Value then
  begin
    if not KeepTransformationConfigurations then
      FTransformationConfigurations.Free;
    FTransformationConfigurations := Value;
  end;
end;

function TObjectLambdaConfiguration.GetKeepTransformationConfigurations: Boolean;
begin
  Result := FKeepTransformationConfigurations;
end;

procedure TObjectLambdaConfiguration.SetKeepTransformationConfigurations(const Value: Boolean);
begin
  FKeepTransformationConfigurations := Value;
end;

function TObjectLambdaConfiguration.IsSetTransformationConfigurations: Boolean;
begin
  Result := (FTransformationConfigurations <> nil) and (FTransformationConfigurations.Count > 0);
end;

end.
