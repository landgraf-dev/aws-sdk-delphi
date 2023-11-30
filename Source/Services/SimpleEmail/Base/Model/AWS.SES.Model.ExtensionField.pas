unit AWS.SES.Model.ExtensionField;

interface

uses
  AWS.Nullable;

type
  TExtensionField = class;
  
  IExtensionField = interface
    function GetName: string;
    procedure SetName(const Value: string);
    function GetValue: string;
    procedure SetValue(const Value: string);
    function Obj: TExtensionField;
    function IsSetName: Boolean;
    function IsSetValue: Boolean;
    property Name: string read GetName write SetName;
    property Value: string read GetValue write SetValue;
  end;
  
  TExtensionField = class
  strict private
    FName: Nullable<string>;
    FValue: Nullable<string>;
    function GetName: string;
    procedure SetName(const Value: string);
    function GetValue: string;
    procedure SetValue(const Value: string);
  strict protected
    function Obj: TExtensionField;
  public
    function IsSetName: Boolean;
    function IsSetValue: Boolean;
    property Name: string read GetName write SetName;
    property Value: string read GetValue write SetValue;
  end;
  
implementation

{ TExtensionField }

function TExtensionField.Obj: TExtensionField;
begin
  Result := Self;
end;

function TExtensionField.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TExtensionField.SetName(const Value: string);
begin
  FName := Value;
end;

function TExtensionField.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TExtensionField.GetValue: string;
begin
  Result := FValue.ValueOrDefault;
end;

procedure TExtensionField.SetValue(const Value: string);
begin
  FValue := Value;
end;

function TExtensionField.IsSetValue: Boolean;
begin
  Result := FValue.HasValue;
end;

end.
