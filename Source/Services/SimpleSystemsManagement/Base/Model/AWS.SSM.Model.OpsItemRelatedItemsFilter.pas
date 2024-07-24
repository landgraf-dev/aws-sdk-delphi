unit AWS.SSM.Model.OpsItemRelatedItemsFilter;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TOpsItemRelatedItemsFilter = class;
  
  IOpsItemRelatedItemsFilter = interface
    function GetKey: TOpsItemRelatedItemsFilterKey;
    procedure SetKey(const Value: TOpsItemRelatedItemsFilterKey);
    function GetOperator: TOpsItemRelatedItemsFilterOperator;
    procedure SetOperator(const Value: TOpsItemRelatedItemsFilterOperator);
    function GetValues: TList<string>;
    procedure SetValues(const Value: TList<string>);
    function GetKeepValues: Boolean;
    procedure SetKeepValues(const Value: Boolean);
    function Obj: TOpsItemRelatedItemsFilter;
    function IsSetKey: Boolean;
    function IsSetOperator: Boolean;
    function IsSetValues: Boolean;
    property Key: TOpsItemRelatedItemsFilterKey read GetKey write SetKey;
    property Operator: TOpsItemRelatedItemsFilterOperator read GetOperator write SetOperator;
    property Values: TList<string> read GetValues write SetValues;
    property KeepValues: Boolean read GetKeepValues write SetKeepValues;
  end;
  
  TOpsItemRelatedItemsFilter = class
  strict private
    FKey: Nullable<TOpsItemRelatedItemsFilterKey>;
    FOperator: Nullable<TOpsItemRelatedItemsFilterOperator>;
    FValues: TList<string>;
    FKeepValues: Boolean;
    function GetKey: TOpsItemRelatedItemsFilterKey;
    procedure SetKey(const Value: TOpsItemRelatedItemsFilterKey);
    function GetOperator: TOpsItemRelatedItemsFilterOperator;
    procedure SetOperator(const Value: TOpsItemRelatedItemsFilterOperator);
    function GetValues: TList<string>;
    procedure SetValues(const Value: TList<string>);
    function GetKeepValues: Boolean;
    procedure SetKeepValues(const Value: Boolean);
  strict protected
    function Obj: TOpsItemRelatedItemsFilter;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetKey: Boolean;
    function IsSetOperator: Boolean;
    function IsSetValues: Boolean;
    property Key: TOpsItemRelatedItemsFilterKey read GetKey write SetKey;
    property Operator: TOpsItemRelatedItemsFilterOperator read GetOperator write SetOperator;
    property Values: TList<string> read GetValues write SetValues;
    property KeepValues: Boolean read GetKeepValues write SetKeepValues;
  end;
  
implementation

{ TOpsItemRelatedItemsFilter }

constructor TOpsItemRelatedItemsFilter.Create;
begin
  inherited;
  FValues := TList<string>.Create;
end;

destructor TOpsItemRelatedItemsFilter.Destroy;
begin
  Values := nil;
  inherited;
end;

function TOpsItemRelatedItemsFilter.Obj: TOpsItemRelatedItemsFilter;
begin
  Result := Self;
end;

function TOpsItemRelatedItemsFilter.GetKey: TOpsItemRelatedItemsFilterKey;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TOpsItemRelatedItemsFilter.SetKey(const Value: TOpsItemRelatedItemsFilterKey);
begin
  FKey := Value;
end;

function TOpsItemRelatedItemsFilter.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TOpsItemRelatedItemsFilter.GetOperator: TOpsItemRelatedItemsFilterOperator;
begin
  Result := FOperator.ValueOrDefault;
end;

procedure TOpsItemRelatedItemsFilter.SetOperator(const Value: TOpsItemRelatedItemsFilterOperator);
begin
  FOperator := Value;
end;

function TOpsItemRelatedItemsFilter.IsSetOperator: Boolean;
begin
  Result := FOperator.HasValue;
end;

function TOpsItemRelatedItemsFilter.GetValues: TList<string>;
begin
  Result := FValues;
end;

procedure TOpsItemRelatedItemsFilter.SetValues(const Value: TList<string>);
begin
  if FValues <> Value then
  begin
    if not KeepValues then
      FValues.Free;
    FValues := Value;
  end;
end;

function TOpsItemRelatedItemsFilter.GetKeepValues: Boolean;
begin
  Result := FKeepValues;
end;

procedure TOpsItemRelatedItemsFilter.SetKeepValues(const Value: Boolean);
begin
  FKeepValues := Value;
end;

function TOpsItemRelatedItemsFilter.IsSetValues: Boolean;
begin
  Result := (FValues <> nil) and (FValues.Count > 0);
end;

end.
