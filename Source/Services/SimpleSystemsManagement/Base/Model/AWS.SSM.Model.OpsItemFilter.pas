unit AWS.SSM.Model.OpsItemFilter;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TOpsItemFilter = class;
  
  IOpsItemFilter = interface
    function GetKey: TOpsItemFilterKey;
    procedure SetKey(const Value: TOpsItemFilterKey);
    function GetOperator: TOpsItemFilterOperator;
    procedure SetOperator(const Value: TOpsItemFilterOperator);
    function GetValues: TList<string>;
    procedure SetValues(const Value: TList<string>);
    function GetKeepValues: Boolean;
    procedure SetKeepValues(const Value: Boolean);
    function Obj: TOpsItemFilter;
    function IsSetKey: Boolean;
    function IsSetOperator: Boolean;
    function IsSetValues: Boolean;
    property Key: TOpsItemFilterKey read GetKey write SetKey;
    property Operator: TOpsItemFilterOperator read GetOperator write SetOperator;
    property Values: TList<string> read GetValues write SetValues;
    property KeepValues: Boolean read GetKeepValues write SetKeepValues;
  end;
  
  TOpsItemFilter = class
  strict private
    FKey: Nullable<TOpsItemFilterKey>;
    FOperator: Nullable<TOpsItemFilterOperator>;
    FValues: TList<string>;
    FKeepValues: Boolean;
    function GetKey: TOpsItemFilterKey;
    procedure SetKey(const Value: TOpsItemFilterKey);
    function GetOperator: TOpsItemFilterOperator;
    procedure SetOperator(const Value: TOpsItemFilterOperator);
    function GetValues: TList<string>;
    procedure SetValues(const Value: TList<string>);
    function GetKeepValues: Boolean;
    procedure SetKeepValues(const Value: Boolean);
  strict protected
    function Obj: TOpsItemFilter;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetKey: Boolean;
    function IsSetOperator: Boolean;
    function IsSetValues: Boolean;
    property Key: TOpsItemFilterKey read GetKey write SetKey;
    property Operator: TOpsItemFilterOperator read GetOperator write SetOperator;
    property Values: TList<string> read GetValues write SetValues;
    property KeepValues: Boolean read GetKeepValues write SetKeepValues;
  end;
  
implementation

{ TOpsItemFilter }

constructor TOpsItemFilter.Create;
begin
  inherited;
  FValues := TList<string>.Create;
end;

destructor TOpsItemFilter.Destroy;
begin
  Values := nil;
  inherited;
end;

function TOpsItemFilter.Obj: TOpsItemFilter;
begin
  Result := Self;
end;

function TOpsItemFilter.GetKey: TOpsItemFilterKey;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TOpsItemFilter.SetKey(const Value: TOpsItemFilterKey);
begin
  FKey := Value;
end;

function TOpsItemFilter.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TOpsItemFilter.GetOperator: TOpsItemFilterOperator;
begin
  Result := FOperator.ValueOrDefault;
end;

procedure TOpsItemFilter.SetOperator(const Value: TOpsItemFilterOperator);
begin
  FOperator := Value;
end;

function TOpsItemFilter.IsSetOperator: Boolean;
begin
  Result := FOperator.HasValue;
end;

function TOpsItemFilter.GetValues: TList<string>;
begin
  Result := FValues;
end;

procedure TOpsItemFilter.SetValues(const Value: TList<string>);
begin
  if FValues <> Value then
  begin
    if not KeepValues then
      FValues.Free;
    FValues := Value;
  end;
end;

function TOpsItemFilter.GetKeepValues: Boolean;
begin
  Result := FKeepValues;
end;

procedure TOpsItemFilter.SetKeepValues(const Value: Boolean);
begin
  FKeepValues := Value;
end;

function TOpsItemFilter.IsSetValues: Boolean;
begin
  Result := (FValues <> nil) and (FValues.Count > 0);
end;

end.
