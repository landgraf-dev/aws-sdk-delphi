unit AWS.LexRuntimeV2.Model.Value;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable;

type
  TValue = class;
  
  IValue = interface
    function GetInterpretedValue: string;
    procedure SetInterpretedValue(const Value: string);
    function GetOriginalValue: string;
    procedure SetOriginalValue(const Value: string);
    function GetResolvedValues: TList<string>;
    procedure SetResolvedValues(const Value: TList<string>);
    function GetKeepResolvedValues: Boolean;
    procedure SetKeepResolvedValues(const Value: Boolean);
    function Obj: TValue;
    function IsSetInterpretedValue: Boolean;
    function IsSetOriginalValue: Boolean;
    function IsSetResolvedValues: Boolean;
    property InterpretedValue: string read GetInterpretedValue write SetInterpretedValue;
    property OriginalValue: string read GetOriginalValue write SetOriginalValue;
    property ResolvedValues: TList<string> read GetResolvedValues write SetResolvedValues;
    property KeepResolvedValues: Boolean read GetKeepResolvedValues write SetKeepResolvedValues;
  end;
  
  TValue = class
  strict private
    FInterpretedValue: Nullable<string>;
    FOriginalValue: Nullable<string>;
    FResolvedValues: TList<string>;
    FKeepResolvedValues: Boolean;
    function GetInterpretedValue: string;
    procedure SetInterpretedValue(const Value: string);
    function GetOriginalValue: string;
    procedure SetOriginalValue(const Value: string);
    function GetResolvedValues: TList<string>;
    procedure SetResolvedValues(const Value: TList<string>);
    function GetKeepResolvedValues: Boolean;
    procedure SetKeepResolvedValues(const Value: Boolean);
  strict protected
    function Obj: TValue;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetInterpretedValue: Boolean;
    function IsSetOriginalValue: Boolean;
    function IsSetResolvedValues: Boolean;
    property InterpretedValue: string read GetInterpretedValue write SetInterpretedValue;
    property OriginalValue: string read GetOriginalValue write SetOriginalValue;
    property ResolvedValues: TList<string> read GetResolvedValues write SetResolvedValues;
    property KeepResolvedValues: Boolean read GetKeepResolvedValues write SetKeepResolvedValues;
  end;
  
implementation

{ TValue }

constructor TValue.Create;
begin
  inherited;
  FResolvedValues := TList<string>.Create;
end;

destructor TValue.Destroy;
begin
  ResolvedValues := nil;
  inherited;
end;

function TValue.Obj: TValue;
begin
  Result := Self;
end;

function TValue.GetInterpretedValue: string;
begin
  Result := FInterpretedValue.ValueOrDefault;
end;

procedure TValue.SetInterpretedValue(const Value: string);
begin
  FInterpretedValue := Value;
end;

function TValue.IsSetInterpretedValue: Boolean;
begin
  Result := FInterpretedValue.HasValue;
end;

function TValue.GetOriginalValue: string;
begin
  Result := FOriginalValue.ValueOrDefault;
end;

procedure TValue.SetOriginalValue(const Value: string);
begin
  FOriginalValue := Value;
end;

function TValue.IsSetOriginalValue: Boolean;
begin
  Result := FOriginalValue.HasValue;
end;

function TValue.GetResolvedValues: TList<string>;
begin
  Result := FResolvedValues;
end;

procedure TValue.SetResolvedValues(const Value: TList<string>);
begin
  if FResolvedValues <> Value then
  begin
    if not KeepResolvedValues then
      FResolvedValues.Free;
    FResolvedValues := Value;
  end;
end;

function TValue.GetKeepResolvedValues: Boolean;
begin
  Result := FKeepResolvedValues;
end;

procedure TValue.SetKeepResolvedValues(const Value: Boolean);
begin
  FKeepResolvedValues := Value;
end;

function TValue.IsSetResolvedValues: Boolean;
begin
  Result := (FResolvedValues <> nil) and (FResolvedValues.Count > 0);
end;

end.
