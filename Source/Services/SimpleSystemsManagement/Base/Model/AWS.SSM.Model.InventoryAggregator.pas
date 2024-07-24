unit AWS.SSM.Model.InventoryAggregator;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.SSM.Model.InventoryGroup;

type
  TInventoryAggregator = class;
  
  IInventoryAggregator = interface
    function GetAggregators: TObjectList<TInventoryAggregator>;
    procedure SetAggregators(const Value: TObjectList<TInventoryAggregator>);
    function GetKeepAggregators: Boolean;
    procedure SetKeepAggregators(const Value: Boolean);
    function GetExpression: string;
    procedure SetExpression(const Value: string);
    function GetGroups: TObjectList<TInventoryGroup>;
    procedure SetGroups(const Value: TObjectList<TInventoryGroup>);
    function GetKeepGroups: Boolean;
    procedure SetKeepGroups(const Value: Boolean);
    function Obj: TInventoryAggregator;
    function IsSetAggregators: Boolean;
    function IsSetExpression: Boolean;
    function IsSetGroups: Boolean;
    property Aggregators: TObjectList<TInventoryAggregator> read GetAggregators write SetAggregators;
    property KeepAggregators: Boolean read GetKeepAggregators write SetKeepAggregators;
    property Expression: string read GetExpression write SetExpression;
    property Groups: TObjectList<TInventoryGroup> read GetGroups write SetGroups;
    property KeepGroups: Boolean read GetKeepGroups write SetKeepGroups;
  end;
  
  TInventoryAggregator = class
  strict private
    FAggregators: TObjectList<TInventoryAggregator>;
    FKeepAggregators: Boolean;
    FExpression: Nullable<string>;
    FGroups: TObjectList<TInventoryGroup>;
    FKeepGroups: Boolean;
    function GetAggregators: TObjectList<TInventoryAggregator>;
    procedure SetAggregators(const Value: TObjectList<TInventoryAggregator>);
    function GetKeepAggregators: Boolean;
    procedure SetKeepAggregators(const Value: Boolean);
    function GetExpression: string;
    procedure SetExpression(const Value: string);
    function GetGroups: TObjectList<TInventoryGroup>;
    procedure SetGroups(const Value: TObjectList<TInventoryGroup>);
    function GetKeepGroups: Boolean;
    procedure SetKeepGroups(const Value: Boolean);
  strict protected
    function Obj: TInventoryAggregator;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAggregators: Boolean;
    function IsSetExpression: Boolean;
    function IsSetGroups: Boolean;
    property Aggregators: TObjectList<TInventoryAggregator> read GetAggregators write SetAggregators;
    property KeepAggregators: Boolean read GetKeepAggregators write SetKeepAggregators;
    property Expression: string read GetExpression write SetExpression;
    property Groups: TObjectList<TInventoryGroup> read GetGroups write SetGroups;
    property KeepGroups: Boolean read GetKeepGroups write SetKeepGroups;
  end;
  
implementation

{ TInventoryAggregator }

constructor TInventoryAggregator.Create;
begin
  inherited;
  FAggregators := TObjectList<TInventoryAggregator>.Create;
  FGroups := TObjectList<TInventoryGroup>.Create;
end;

destructor TInventoryAggregator.Destroy;
begin
  Groups := nil;
  Aggregators := nil;
  inherited;
end;

function TInventoryAggregator.Obj: TInventoryAggregator;
begin
  Result := Self;
end;

function TInventoryAggregator.GetAggregators: TObjectList<TInventoryAggregator>;
begin
  Result := FAggregators;
end;

procedure TInventoryAggregator.SetAggregators(const Value: TObjectList<TInventoryAggregator>);
begin
  if FAggregators <> Value then
  begin
    if not KeepAggregators then
      FAggregators.Free;
    FAggregators := Value;
  end;
end;

function TInventoryAggregator.GetKeepAggregators: Boolean;
begin
  Result := FKeepAggregators;
end;

procedure TInventoryAggregator.SetKeepAggregators(const Value: Boolean);
begin
  FKeepAggregators := Value;
end;

function TInventoryAggregator.IsSetAggregators: Boolean;
begin
  Result := (FAggregators <> nil) and (FAggregators.Count > 0);
end;

function TInventoryAggregator.GetExpression: string;
begin
  Result := FExpression.ValueOrDefault;
end;

procedure TInventoryAggregator.SetExpression(const Value: string);
begin
  FExpression := Value;
end;

function TInventoryAggregator.IsSetExpression: Boolean;
begin
  Result := FExpression.HasValue;
end;

function TInventoryAggregator.GetGroups: TObjectList<TInventoryGroup>;
begin
  Result := FGroups;
end;

procedure TInventoryAggregator.SetGroups(const Value: TObjectList<TInventoryGroup>);
begin
  if FGroups <> Value then
  begin
    if not KeepGroups then
      FGroups.Free;
    FGroups := Value;
  end;
end;

function TInventoryAggregator.GetKeepGroups: Boolean;
begin
  Result := FKeepGroups;
end;

procedure TInventoryAggregator.SetKeepGroups(const Value: Boolean);
begin
  FKeepGroups := Value;
end;

function TInventoryAggregator.IsSetGroups: Boolean;
begin
  Result := (FGroups <> nil) and (FGroups.Count > 0);
end;

end.
