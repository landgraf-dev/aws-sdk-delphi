unit AWS.SSM.Model.ResultAttribute;

interface

uses
  AWS.Nullable;

type
  TResultAttribute = class;
  
  IResultAttribute = interface
    function GetTypeName: string;
    procedure SetTypeName(const Value: string);
    function Obj: TResultAttribute;
    function IsSetTypeName: Boolean;
    property TypeName: string read GetTypeName write SetTypeName;
  end;
  
  TResultAttribute = class
  strict private
    FTypeName: Nullable<string>;
    function GetTypeName: string;
    procedure SetTypeName(const Value: string);
  strict protected
    function Obj: TResultAttribute;
  public
    function IsSetTypeName: Boolean;
    property TypeName: string read GetTypeName write SetTypeName;
  end;
  
implementation

{ TResultAttribute }

function TResultAttribute.Obj: TResultAttribute;
begin
  Result := Self;
end;

function TResultAttribute.GetTypeName: string;
begin
  Result := FTypeName.ValueOrDefault;
end;

procedure TResultAttribute.SetTypeName(const Value: string);
begin
  FTypeName := Value;
end;

function TResultAttribute.IsSetTypeName: Boolean;
begin
  Result := FTypeName.HasValue;
end;

end.
