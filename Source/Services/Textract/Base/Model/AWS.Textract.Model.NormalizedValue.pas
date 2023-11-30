unit AWS.Textract.Model.NormalizedValue;

interface

uses
  AWS.Nullable, 
  AWS.Textract.Enums;

type
  TNormalizedValue = class;
  
  INormalizedValue = interface
    function GetValue: string;
    procedure SetValue(const Value: string);
    function GetValueType: TValueType;
    procedure SetValueType(const Value: TValueType);
    function Obj: TNormalizedValue;
    function IsSetValue: Boolean;
    function IsSetValueType: Boolean;
    property Value: string read GetValue write SetValue;
    property ValueType: TValueType read GetValueType write SetValueType;
  end;
  
  TNormalizedValue = class
  strict private
    FValue: Nullable<string>;
    FValueType: Nullable<TValueType>;
    function GetValue: string;
    procedure SetValue(const Value: string);
    function GetValueType: TValueType;
    procedure SetValueType(const Value: TValueType);
  strict protected
    function Obj: TNormalizedValue;
  public
    function IsSetValue: Boolean;
    function IsSetValueType: Boolean;
    property Value: string read GetValue write SetValue;
    property ValueType: TValueType read GetValueType write SetValueType;
  end;
  
implementation

{ TNormalizedValue }

function TNormalizedValue.Obj: TNormalizedValue;
begin
  Result := Self;
end;

function TNormalizedValue.GetValue: string;
begin
  Result := FValue.ValueOrDefault;
end;

procedure TNormalizedValue.SetValue(const Value: string);
begin
  FValue := Value;
end;

function TNormalizedValue.IsSetValue: Boolean;
begin
  Result := FValue.HasValue;
end;

function TNormalizedValue.GetValueType: TValueType;
begin
  Result := FValueType.ValueOrDefault;
end;

procedure TNormalizedValue.SetValueType(const Value: TValueType);
begin
  FValueType := Value;
end;

function TNormalizedValue.IsSetValueType: Boolean;
begin
  Result := FValueType.HasValue;
end;

end.
