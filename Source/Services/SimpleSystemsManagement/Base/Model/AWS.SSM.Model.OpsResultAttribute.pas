unit AWS.SSM.Model.OpsResultAttribute;

interface

uses
  AWS.Nullable;

type
  TOpsResultAttribute = class;
  
  IOpsResultAttribute = interface
    function GetTypeName: string;
    procedure SetTypeName(const Value: string);
    function Obj: TOpsResultAttribute;
    function IsSetTypeName: Boolean;
    property TypeName: string read GetTypeName write SetTypeName;
  end;
  
  TOpsResultAttribute = class
  strict private
    FTypeName: Nullable<string>;
    function GetTypeName: string;
    procedure SetTypeName(const Value: string);
  strict protected
    function Obj: TOpsResultAttribute;
  public
    function IsSetTypeName: Boolean;
    property TypeName: string read GetTypeName write SetTypeName;
  end;
  
implementation

{ TOpsResultAttribute }

function TOpsResultAttribute.Obj: TOpsResultAttribute;
begin
  Result := Self;
end;

function TOpsResultAttribute.GetTypeName: string;
begin
  Result := FTypeName.ValueOrDefault;
end;

procedure TOpsResultAttribute.SetTypeName(const Value: string);
begin
  FTypeName := Value;
end;

function TOpsResultAttribute.IsSetTypeName: Boolean;
begin
  Result := FTypeName.HasValue;
end;

end.
