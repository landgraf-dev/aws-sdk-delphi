unit AWS.LexRuntimeV2.Model.Slot;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.LexRuntimeV2.Enums, 
  AWS.LexRuntimeV2.Model.Value;

type
  TSlot = class;
  
  ISlot = interface
    function GetShape: TShape;
    procedure SetShape(const Value: TShape);
    function GetValue: TValue;
    procedure SetValue(const Value: TValue);
    function GetKeepValue: Boolean;
    procedure SetKeepValue(const Value: Boolean);
    function GetValues: TObjectList<TSlot>;
    procedure SetValues(const Value: TObjectList<TSlot>);
    function GetKeepValues: Boolean;
    procedure SetKeepValues(const Value: Boolean);
    function Obj: TSlot;
    function IsSetShape: Boolean;
    function IsSetValue: Boolean;
    function IsSetValues: Boolean;
    property Shape: TShape read GetShape write SetShape;
    property Value: TValue read GetValue write SetValue;
    property KeepValue: Boolean read GetKeepValue write SetKeepValue;
    property Values: TObjectList<TSlot> read GetValues write SetValues;
    property KeepValues: Boolean read GetKeepValues write SetKeepValues;
  end;
  
  TSlot = class
  strict private
    FShape: Nullable<TShape>;
    FValue: TValue;
    FKeepValue: Boolean;
    FValues: TObjectList<TSlot>;
    FKeepValues: Boolean;
    function GetShape: TShape;
    procedure SetShape(const Value: TShape);
    function GetValue: TValue;
    procedure SetValue(const Value: TValue);
    function GetKeepValue: Boolean;
    procedure SetKeepValue(const Value: Boolean);
    function GetValues: TObjectList<TSlot>;
    procedure SetValues(const Value: TObjectList<TSlot>);
    function GetKeepValues: Boolean;
    procedure SetKeepValues(const Value: Boolean);
  strict protected
    function Obj: TSlot;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetShape: Boolean;
    function IsSetValue: Boolean;
    function IsSetValues: Boolean;
    property Shape: TShape read GetShape write SetShape;
    property Value: TValue read GetValue write SetValue;
    property KeepValue: Boolean read GetKeepValue write SetKeepValue;
    property Values: TObjectList<TSlot> read GetValues write SetValues;
    property KeepValues: Boolean read GetKeepValues write SetKeepValues;
  end;
  
implementation

{ TSlot }

constructor TSlot.Create;
begin
  inherited;
  FValues := TObjectList<TSlot>.Create;
end;

destructor TSlot.Destroy;
begin
  Values := nil;
  Value := nil;
  inherited;
end;

function TSlot.Obj: TSlot;
begin
  Result := Self;
end;

function TSlot.GetShape: TShape;
begin
  Result := FShape.ValueOrDefault;
end;

procedure TSlot.SetShape(const Value: TShape);
begin
  FShape := Value;
end;

function TSlot.IsSetShape: Boolean;
begin
  Result := FShape.HasValue;
end;

function TSlot.GetValue: TValue;
begin
  Result := FValue;
end;

procedure TSlot.SetValue(const Value: TValue);
begin
  if FValue <> Value then
  begin
    if not KeepValue then
      FValue.Free;
    FValue := Value;
  end;
end;

function TSlot.GetKeepValue: Boolean;
begin
  Result := FKeepValue;
end;

procedure TSlot.SetKeepValue(const Value: Boolean);
begin
  FKeepValue := Value;
end;

function TSlot.IsSetValue: Boolean;
begin
  Result := FValue <> nil;
end;

function TSlot.GetValues: TObjectList<TSlot>;
begin
  Result := FValues;
end;

procedure TSlot.SetValues(const Value: TObjectList<TSlot>);
begin
  if FValues <> Value then
  begin
    if not KeepValues then
      FValues.Free;
    FValues := Value;
  end;
end;

function TSlot.GetKeepValues: Boolean;
begin
  Result := FKeepValues;
end;

procedure TSlot.SetKeepValues(const Value: Boolean);
begin
  FKeepValues := Value;
end;

function TSlot.IsSetValues: Boolean;
begin
  Result := (FValues <> nil) and (FValues.Count > 0);
end;

end.
