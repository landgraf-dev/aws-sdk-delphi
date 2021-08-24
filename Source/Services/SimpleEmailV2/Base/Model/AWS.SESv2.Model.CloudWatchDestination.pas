unit AWS.SESv2.Model.CloudWatchDestination;

interface

uses
  System.Generics.Collections, 
  AWS.SESv2.Model.CloudWatchDimensionConfiguration;

type
  TCloudWatchDestination = class;
  
  ICloudWatchDestination = interface
    function GetDimensionConfigurations: TObjectList<TCloudWatchDimensionConfiguration>;
    procedure SetDimensionConfigurations(const Value: TObjectList<TCloudWatchDimensionConfiguration>);
    function GetKeepDimensionConfigurations: Boolean;
    procedure SetKeepDimensionConfigurations(const Value: Boolean);
    function Obj: TCloudWatchDestination;
    function IsSetDimensionConfigurations: Boolean;
    property DimensionConfigurations: TObjectList<TCloudWatchDimensionConfiguration> read GetDimensionConfigurations write SetDimensionConfigurations;
    property KeepDimensionConfigurations: Boolean read GetKeepDimensionConfigurations write SetKeepDimensionConfigurations;
  end;
  
  TCloudWatchDestination = class
  strict private
    FDimensionConfigurations: TObjectList<TCloudWatchDimensionConfiguration>;
    FKeepDimensionConfigurations: Boolean;
    function GetDimensionConfigurations: TObjectList<TCloudWatchDimensionConfiguration>;
    procedure SetDimensionConfigurations(const Value: TObjectList<TCloudWatchDimensionConfiguration>);
    function GetKeepDimensionConfigurations: Boolean;
    procedure SetKeepDimensionConfigurations(const Value: Boolean);
  strict protected
    function Obj: TCloudWatchDestination;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetDimensionConfigurations: Boolean;
    property DimensionConfigurations: TObjectList<TCloudWatchDimensionConfiguration> read GetDimensionConfigurations write SetDimensionConfigurations;
    property KeepDimensionConfigurations: Boolean read GetKeepDimensionConfigurations write SetKeepDimensionConfigurations;
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
  DimensionConfigurations := nil;
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
    if not KeepDimensionConfigurations then
      FDimensionConfigurations.Free;
    FDimensionConfigurations := Value;
  end;
end;

function TCloudWatchDestination.GetKeepDimensionConfigurations: Boolean;
begin
  Result := FKeepDimensionConfigurations;
end;

procedure TCloudWatchDestination.SetKeepDimensionConfigurations(const Value: Boolean);
begin
  FKeepDimensionConfigurations := Value;
end;

function TCloudWatchDestination.IsSetDimensionConfigurations: Boolean;
begin
  Result := (FDimensionConfigurations <> nil) and (FDimensionConfigurations.Count > 0);
end;

end.
