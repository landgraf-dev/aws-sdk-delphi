unit AWS.SSM.Model.InventoryFilter;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TInventoryFilter = class;
  
  IInventoryFilter = interface
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetType: TInventoryQueryOperatorType;
    procedure SetType(const Value: TInventoryQueryOperatorType);
    function GetValues: TList<string>;
    procedure SetValues(const Value: TList<string>);
    function GetKeepValues: Boolean;
    procedure SetKeepValues(const Value: Boolean);
    function Obj: TInventoryFilter;
    function IsSetKey: Boolean;
    function IsSetType: Boolean;
    function IsSetValues: Boolean;
    property Key: string read GetKey write SetKey;
    property &Type: TInventoryQueryOperatorType read GetType write SetType;
    property Values: TList<string> read GetValues write SetValues;
    property KeepValues: Boolean read GetKeepValues write SetKeepValues;
  end;
  
  TInventoryFilter = class
  strict private
    FKey: Nullable<string>;
    FType: Nullable<TInventoryQueryOperatorType>;
    FValues: TList<string>;
    FKeepValues: Boolean;
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetType: TInventoryQueryOperatorType;
    procedure SetType(const Value: TInventoryQueryOperatorType);
    function GetValues: TList<string>;
    procedure SetValues(const Value: TList<string>);
    function GetKeepValues: Boolean;
    procedure SetKeepValues(const Value: Boolean);
  strict protected
    function Obj: TInventoryFilter;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetKey: Boolean;
    function IsSetType: Boolean;
    function IsSetValues: Boolean;
    property Key: string read GetKey write SetKey;
    property &Type: TInventoryQueryOperatorType read GetType write SetType;
    property Values: TList<string> read GetValues write SetValues;
    property KeepValues: Boolean read GetKeepValues write SetKeepValues;
  end;
  
implementation

{ TInventoryFilter }

constructor TInventoryFilter.Create;
begin
  inherited;
  FValues := TList<string>.Create;
end;

destructor TInventoryFilter.Destroy;
begin
  Values := nil;
  inherited;
end;

function TInventoryFilter.Obj: TInventoryFilter;
begin
  Result := Self;
end;

function TInventoryFilter.GetKey: string;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TInventoryFilter.SetKey(const Value: string);
begin
  FKey := Value;
end;

function TInventoryFilter.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TInventoryFilter.GetType: TInventoryQueryOperatorType;
begin
  Result := FType.ValueOrDefault;
end;

procedure TInventoryFilter.SetType(const Value: TInventoryQueryOperatorType);
begin
  FType := Value;
end;

function TInventoryFilter.IsSetType: Boolean;
begin
  Result := FType.HasValue;
end;

function TInventoryFilter.GetValues: TList<string>;
begin
  Result := FValues;
end;

procedure TInventoryFilter.SetValues(const Value: TList<string>);
begin
  if FValues <> Value then
  begin
    if not KeepValues then
      FValues.Free;
    FValues := Value;
  end;
end;

function TInventoryFilter.GetKeepValues: Boolean;
begin
  Result := FKeepValues;
end;

procedure TInventoryFilter.SetKeepValues(const Value: Boolean);
begin
  FKeepValues := Value;
end;

function TInventoryFilter.IsSetValues: Boolean;
begin
  Result := (FValues <> nil) and (FValues.Count > 0);
end;

end.
