unit AWS.SSM.Model.OpsItemDataValue;

interface

uses
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TOpsItemDataValue = class;
  
  IOpsItemDataValue = interface
    function GetType: TOpsItemDataType;
    procedure SetType(const Value: TOpsItemDataType);
    function GetValue: string;
    procedure SetValue(const Value: string);
    function Obj: TOpsItemDataValue;
    function IsSetType: Boolean;
    function IsSetValue: Boolean;
    property &Type: TOpsItemDataType read GetType write SetType;
    property Value: string read GetValue write SetValue;
  end;
  
  TOpsItemDataValue = class
  strict private
    FType: Nullable<TOpsItemDataType>;
    FValue: Nullable<string>;
    function GetType: TOpsItemDataType;
    procedure SetType(const Value: TOpsItemDataType);
    function GetValue: string;
    procedure SetValue(const Value: string);
  strict protected
    function Obj: TOpsItemDataValue;
  public
    function IsSetType: Boolean;
    function IsSetValue: Boolean;
    property &Type: TOpsItemDataType read GetType write SetType;
    property Value: string read GetValue write SetValue;
  end;
  
implementation

{ TOpsItemDataValue }

function TOpsItemDataValue.Obj: TOpsItemDataValue;
begin
  Result := Self;
end;

function TOpsItemDataValue.GetType: TOpsItemDataType;
begin
  Result := FType.ValueOrDefault;
end;

procedure TOpsItemDataValue.SetType(const Value: TOpsItemDataType);
begin
  FType := Value;
end;

function TOpsItemDataValue.IsSetType: Boolean;
begin
  Result := FType.HasValue;
end;

function TOpsItemDataValue.GetValue: string;
begin
  Result := FValue.ValueOrDefault;
end;

procedure TOpsItemDataValue.SetValue(const Value: string);
begin
  FValue := Value;
end;

function TOpsItemDataValue.IsSetValue: Boolean;
begin
  Result := FValue.HasValue;
end;

end.
