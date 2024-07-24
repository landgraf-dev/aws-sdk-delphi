unit AWS.SSM.Model.UnsupportedInventoryItemContextException;

interface

uses
  AWS.SSM.Exception, 
  AWS.Nullable;

type
  EUnsupportedInventoryItemContextException = class(EAmazonSimpleSystemsManagementException)
  strict private
    FTypeName: Nullable<string>;
    function GetTypeName: string;
    procedure SetTypeName(const Value: string);
  public
    function IsSetTypeName: Boolean;
    property TypeName: string read GetTypeName write SetTypeName;
  end;
  
implementation

{ EUnsupportedInventoryItemContextException }

function EUnsupportedInventoryItemContextException.GetTypeName: string;
begin
  Result := FTypeName.ValueOrDefault;
end;

procedure EUnsupportedInventoryItemContextException.SetTypeName(const Value: string);
begin
  FTypeName := Value;
end;

function EUnsupportedInventoryItemContextException.IsSetTypeName: Boolean;
begin
  Result := FTypeName.HasValue;
end;

end.
