unit AWS.SES.Model.CloudWatchDestination;

interface

uses
  System.Generics.Collections, 
  AWS.SES.Model.CloudWatchDimensionConfiguration;

type
  TCloudWatchDestination = class;
  
  ICloudWatchDestination = interface
    function GetDimensionConfigurations: TObjectList<TCloudWatchDimensionConfiguration>;
    procedure SetDimensionConfigurations(const Value: TObjectList<TCloudWatchDimensionConfiguration>);
    function Obj: TCloudWatchDestination;
    function IsSetDimensionConfigurations: Boolean;
    property DimensionConfigurations: TObjectList<TCloudWatchDimensionConfiguration> read GetDimensionConfigurations write SetDimensionConfigurations;
  end;
  
  TCloudWatchDestination = class
  strict private
    FDimensionConfigurations: TObjectList<TCloudWatchDimensionConfiguration>;
    function GetDimensionConfigurations: TObjectList<TCloudWatchDimensionConfiguration>;
    procedure SetDimensionConfigurations(const Value: TObjectList<TCloudWatchDimensionConfiguration>);
  strict protected
    function Obj: TCloudWatchDestination;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetDimensionConfigurations: Boolean;
    property DimensionConfigurations: TObjectList<TCloudWatchDimensionConfiguration> read GetDimensionConfigurations write SetDimensionConfigurations;
  end;
  
implementation

{ TCloudWatchDestination }

constructor TCloudWatchDestination.Create;
begin
  inherited;
  FDimensionConfigurations := TObjectList<TCloudWatchDimensionConfiguration>.Create;
end;

destructor TCloudWatchDestination.Destroy;
begin
  FDimensionConfigurations.Free;
  inherited;
end;

function TCloudWatchDestination.Obj: TCloudWatchDestination;
begin
  Result := Self;
end;

function TCloudWatchDestination.GetDimensionConfigurations: TObjectList<TCloudWatchDimensionConfiguration>;
begin
  Result := FDimensionConfigurations;
end;

procedure TCloudWatchDestination.SetDimensionConfigurations(const Value: TObjectList<TCloudWatchDimensionConfiguration>);
begin
  if FDimensionConfigurations <> Value then
  begin
    FDimensionConfigurations.Free;
    FDimensionConfigurations := Value;
  end;
end;

function TCloudWatchDestination.IsSetDimensionConfigurations: Boolean;
begin
  Result := (FDimensionConfigurations <> nil) and (FDimensionConfigurations.Count > 0);
end;

end.
