unit AWS.SSM.Model.OpsItemEventFilter;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TOpsItemEventFilter = class;
  
  IOpsItemEventFilter = interface
    function GetKey: TOpsItemEventFilterKey;
    procedure SetKey(const Value: TOpsItemEventFilterKey);
    function GetOperator: TOpsItemEventFilterOperator;
    procedure SetOperator(const Value: TOpsItemEventFilterOperator);
    function GetValues: TList<string>;
    procedure SetValues(const Value: TList<string>);
    function GetKeepValues: Boolean;
    procedure SetKeepValues(const Value: Boolean);
    function Obj: TOpsItemEventFilter;
    function IsSetKey: Boolean;
    function IsSetOperator: Boolean;
    function IsSetValues: Boolean;
    property Key: TOpsItemEventFilterKey read GetKey write SetKey;
    property Operator: TOpsItemEventFilterOperator read GetOperator write SetOperator;
    property Values: TList<string> read GetValues write SetValues;
    property KeepValues: Boolean read GetKeepValues write SetKeepValues;
  end;
  
  TOpsItemEventFilter = class
  strict private
    FKey: Nullable<TOpsItemEventFilterKey>;
    FOperator: Nullable<TOpsItemEventFilterOperator>;
    FValues: TList<string>;
    FKeepValues: Boolean;
    function GetKey: TOpsItemEventFilterKey;
    procedure SetKey(const Value: TOpsItemEventFilterKey);
    function GetOperator: TOpsItemEventFilterOperator;
    procedure SetOperator(const Value: TOpsItemEventFilterOperator);
    function GetValues: TList<string>;
    procedure SetValues(const Value: TList<string>);
    function GetKeepValues: Boolean;
    procedure SetKeepValues(const Value: Boolean);
  strict protected
    function Obj: TOpsItemEventFilter;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetKey: Boolean;
    function IsSetOperator: Boolean;
    function IsSetValues: Boolean;
    property Key: TOpsItemEventFilterKey read GetKey write SetKey;
    property Operator: TOpsItemEventFilterOperator read GetOperator write SetOperator;
    property Values: TList<string> read GetValues write SetValues;
    property KeepValues: Boolean read GetKeepValues write SetKeepValues;
  end;
  
implementation

{ TOpsItemEventFilter }

constructor TOpsItemEventFilter.Create;
begin
  inherited;
  FValues := TList<string>.Create;
end;

destructor TOpsItemEventFilter.Destroy;
begin
  Values := nil;
  inherited;
end;

function TOpsItemEventFilter.Obj: TOpsItemEventFilter;
begin
  Result := Self;
end;

function TOpsItemEventFilter.GetKey: TOpsItemEventFilterKey;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TOpsItemEventFilter.SetKey(const Value: TOpsItemEventFilterKey);
begin
  FKey := Value;
end;

function TOpsItemEventFilter.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TOpsItemEventFilter.GetOperator: TOpsItemEventFilterOperator;
begin
  Result := FOperator.ValueOrDefault;
end;

procedure TOpsItemEventFilter.SetOperator(const Value: TOpsItemEventFilterOperator);
begin
  FOperator := Value;
end;

function TOpsItemEventFilter.IsSetOperator: Boolean;
begin
  Result := FOperator.HasValue;
end;

function TOpsItemEventFilter.GetValues: TList<string>;
begin
  Result := FValues;
end;

procedure TOpsItemEventFilter.SetValues(const Value: TList<string>);
begin
  if FValues <> Value then
  begin
    if not KeepValues then
      FValues.Free;
    FValues := Value;
  end;
end;

function TOpsItemEventFilter.GetKeepValues: Boolean;
begin
  Result := FKeepValues;
end;

procedure TOpsItemEventFilter.SetKeepValues(const Value: Boolean);
begin
  FKeepValues := Value;
end;

function TOpsItemEventFilter.IsSetValues: Boolean;
begin
  Result := (FValues <> nil) and (FValues.Count > 0);
end;

end.
