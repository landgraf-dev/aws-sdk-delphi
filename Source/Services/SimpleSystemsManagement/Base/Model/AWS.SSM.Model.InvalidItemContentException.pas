unit AWS.SSM.Model.InvalidItemContentException;

interface

uses
  AWS.SSM.Exception, 
  AWS.Nullable;

type
  EInvalidItemContentException = class(EAmazonSimpleSystemsManagementException)
  strict private
    FTypeName: Nullable<string>;
    function GetTypeName: string;
    procedure SetTypeName(const Value: string);
  public
    function IsSetTypeName: Boolean;
    property TypeName: string read GetTypeName write SetTypeName;
  end;
  
implementation

{ EInvalidItemContentException }

function EInvalidItemContentException.GetTypeName: string;
begin
  Result := FTypeName.ValueOrDefault;
end;

procedure EInvalidItemContentException.SetTypeName(const Value: string);
begin
  FTypeName := Value;
end;

function EInvalidItemContentException.IsSetTypeName: Boolean;
begin
  Result := FTypeName.HasValue;
end;

end.
