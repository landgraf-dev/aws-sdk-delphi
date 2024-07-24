unit AWS.SSM.Model.InventoryGroup;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.InventoryFilter, 
  AWS.Nullable;

type
  TInventoryGroup = class;
  
  IInventoryGroup = interface
    function GetFilters: TObjectList<TInventoryFilter>;
    procedure SetFilters(const Value: TObjectList<TInventoryFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetName: string;
    procedure SetName(const Value: string);
    function Obj: TInventoryGroup;
    function IsSetFilters: Boolean;
    function IsSetName: Boolean;
    property Filters: TObjectList<TInventoryFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property Name: string read GetName write SetName;
  end;
  
  TInventoryGroup = class
  strict private
    FFilters: TObjectList<TInventoryFilter>;
    FKeepFilters: Boolean;
    FName: Nullable<string>;
    function GetFilters: TObjectList<TInventoryFilter>;
    procedure SetFilters(const Value: TObjectList<TInventoryFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetName: string;
    procedure SetName(const Value: string);
  strict protected
    function Obj: TInventoryGroup;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetFilters: Boolean;
    function IsSetName: Boolean;
    property Filters: TObjectList<TInventoryFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property Name: string read GetName write SetName;
  end;
  
implementation

{ TInventoryGroup }

constructor TInventoryGroup.Create;
begin
  inherited;
  FFilters := TObjectList<TInventoryFilter>.Create;
end;

destructor TInventoryGroup.Destroy;
begin
  Filters := nil;
  inherited;
end;

function TInventoryGroup.Obj: TInventoryGroup;
begin
  Result := Self;
end;

function TInventoryGroup.GetFilters: TObjectList<TInventoryFilter>;
begin
  Result := FFilters;
end;

procedure TInventoryGroup.SetFilters(const Value: TObjectList<TInventoryFilter>);
begin
  if FFilters <> Value then
  begin
    if not KeepFilters then
      FFilters.Free;
    FFilters := Value;
  end;
end;

function TInventoryGroup.GetKeepFilters: Boolean;
begin
  Result := FKeepFilters;
end;

procedure TInventoryGroup.SetKeepFilters(const Value: Boolean);
begin
  FKeepFilters := Value;
end;

function TInventoryGroup.IsSetFilters: Boolean;
begin
  Result := (FFilters <> nil) and (FFilters.Count > 0);
end;

function TInventoryGroup.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TInventoryGroup.SetName(const Value: string);
begin
  FName := Value;
end;

function TInventoryGroup.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

end.
