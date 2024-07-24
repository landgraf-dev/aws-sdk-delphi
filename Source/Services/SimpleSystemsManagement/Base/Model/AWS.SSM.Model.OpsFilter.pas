unit AWS.SSM.Model.OpsFilter;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TOpsFilter = class;
  
  IOpsFilter = interface
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetType: TOpsFilterOperatorType;
    procedure SetType(const Value: TOpsFilterOperatorType);
    function GetValues: TList<string>;
    procedure SetValues(const Value: TList<string>);
    function GetKeepValues: Boolean;
    procedure SetKeepValues(const Value: Boolean);
    function Obj: TOpsFilter;
    function IsSetKey: Boolean;
    function IsSetType: Boolean;
    function IsSetValues: Boolean;
    property Key: string read GetKey write SetKey;
    property &Type: TOpsFilterOperatorType read GetType write SetType;
    property Values: TList<string> read GetValues write SetValues;
    property KeepValues: Boolean read GetKeepValues write SetKeepValues;
  end;
  
  TOpsFilter = class
  strict private
    FKey: Nullable<string>;
    FType: Nullable<TOpsFilterOperatorType>;
    FValues: TList<string>;
    FKeepValues: Boolean;
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetType: TOpsFilterOperatorType;
    procedure SetType(const Value: TOpsFilterOperatorType);
    function GetValues: TList<string>;
    procedure SetValues(const Value: TList<string>);
    function GetKeepValues: Boolean;
    procedure SetKeepValues(const Value: Boolean);
  strict protected
    function Obj: TOpsFilter;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetKey: Boolean;
    function IsSetType: Boolean;
    function IsSetValues: Boolean;
    property Key: string read GetKey write SetKey;
    property &Type: TOpsFilterOperatorType read GetType write SetType;
    property Values: TList<string> read GetValues write SetValues;
    property KeepValues: Boolean read GetKeepValues write SetKeepValues;
  end;
  
implementation

{ TOpsFilter }

constructor TOpsFilter.Create;
begin
  inherited;
  FValues := TList<string>.Create;
end;

destructor TOpsFilter.Destroy;
begin
  Values := nil;
  inherited;
end;

function TOpsFilter.Obj: TOpsFilter;
begin
  Result := Self;
end;

function TOpsFilter.GetKey: string;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TOpsFilter.SetKey(const Value: string);
begin
  FKey := Value;
end;

function TOpsFilter.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TOpsFilter.GetType: TOpsFilterOperatorType;
begin
  Result := FType.ValueOrDefault;
end;

procedure TOpsFilter.SetType(const Value: TOpsFilterOperatorType);
begin
  FType := Value;
end;

function TOpsFilter.IsSetType: Boolean;
begin
  Result := FType.HasValue;
end;

function TOpsFilter.GetValues: TList<string>;
begin
  Result := FValues;
end;

procedure TOpsFilter.SetValues(const Value: TList<string>);
begin
  if FValues <> Value then
  begin
    if not KeepValues then
      FValues.Free;
    FValues := Value;
  end;
end;

function TOpsFilter.GetKeepValues: Boolean;
begin
  Result := FKeepValues;
end;

procedure TOpsFilter.SetKeepValues(const Value: Boolean);
begin
  FKeepValues := Value;
end;

function TOpsFilter.IsSetValues: Boolean;
begin
  Result := (FValues <> nil) and (FValues.Count > 0);
end;

end.
