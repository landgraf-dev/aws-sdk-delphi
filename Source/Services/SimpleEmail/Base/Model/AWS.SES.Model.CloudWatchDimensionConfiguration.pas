unit AWS.SES.Model.CloudWatchDimensionConfiguration;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SES.Enums;

type
  TCloudWatchDimensionConfiguration = class;
  
  ICloudWatchDimensionConfiguration = interface
    function GetDefaultDimensionValue: string;
    procedure SetDefaultDimensionValue(const Value: string);
    function GetDimensionName: string;
    procedure SetDimensionName(const Value: string);
    function GetDimensionValueSource: TDimensionValueSource;
    procedure SetDimensionValueSource(const Value: TDimensionValueSource);
    function Obj: TCloudWatchDimensionConfiguration;
    function IsSetDefaultDimensionValue: Boolean;
    function IsSetDimensionName: Boolean;
    function IsSetDimensionValueSource: Boolean;
    property DefaultDimensionValue: string read GetDefaultDimensionValue write SetDefaultDimensionValue;
    property DimensionName: string read GetDimensionName write SetDimensionName;
    property DimensionValueSource: TDimensionValueSource read GetDimensionValueSource write SetDimensionValueSource;
  end;
  
  TCloudWatchDimensionConfiguration = class
  strict private
    FDefaultDimensionValue: Nullable<string>;
    FDimensionName: Nullable<string>;
    FDimensionValueSource: Nullable<TDimensionValueSource>;
    function GetDefaultDimensionValue: string;
    procedure SetDefaultDimensionValue(const Value: string);
    function GetDimensionName: string;
    procedure SetDimensionName(const Value: string);
    function GetDimensionValueSource: TDimensionValueSource;
    procedure SetDimensionValueSource(const Value: TDimensionValueSource);
  strict protected
    function Obj: TCloudWatchDimensionConfiguration;
  public
    function IsSetDefaultDimensionValue: Boolean;
    function IsSetDimensionName: Boolean;
    function IsSetDimensionValueSource: Boolean;
    property DefaultDimensionValue: string read GetDefaultDimensionValue write SetDefaultDimensionValue;
    property DimensionName: string read GetDimensionName write SetDimensionName;
    property DimensionValueSource: TDimensionValueSource read GetDimensionValueSource write SetDimensionValueSource;
  end;
  
implementation

{ TCloudWatchDimensionConfiguration }

function TCloudWatchDimensionConfiguration.Obj: TCloudWatchDimensionConfiguration;
begin
  Result := Self;
end;

function TCloudWatchDimensionConfiguration.GetDefaultDimensionValue: string;
begin
  Result := FDefaultDimensionValue.ValueOrDefault;
end;

procedure TCloudWatchDimensionConfiguration.SetDefaultDimensionValue(const Value: string);
begin
  FDefaultDimensionValue := Value;
end;

function TCloudWatchDimensionConfiguration.IsSetDefaultDimensionValue: Boolean;
begin
  Result := FDefaultDimensionValue.HasValue;
end;

function TCloudWatchDimensionConfiguration.GetDimensionName: string;
begin
  Result := FDimensionName.ValueOrDefault;
end;

procedure TCloudWatchDimensionConfiguration.SetDimensionName(const Value: string);
begin
  FDimensionName := Value;
end;

function TCloudWatchDimensionConfiguration.IsSetDimensionName: Boolean;
begin
  Result := FDimensionName.HasValue;
end;

function TCloudWatchDimensionConfiguration.GetDimensionValueSource: TDimensionValueSource;
begin
  Result := FDimensionValueSource.ValueOrDefault;
end;

procedure TCloudWatchDimensionConfiguration.SetDimensionValueSource(const Value: TDimensionValueSource);
begin
  FDimensionValueSource := Value;
end;

function TCloudWatchDimensionConfiguration.IsSetDimensionValueSource: Boolean;
begin
  Result := FDimensionValueSource.HasValue;
end;

end.
