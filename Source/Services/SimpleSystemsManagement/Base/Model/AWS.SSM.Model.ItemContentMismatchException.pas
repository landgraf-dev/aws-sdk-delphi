unit AWS.SSM.Model.ItemContentMismatchException;

interface

uses
  AWS.SSM.Exception, 
  AWS.Nullable;

type
  EItemContentMismatchException = class(EAmazonSimpleSystemsManagementException)
  strict private
    FTypeName: Nullable<string>;
    function GetTypeName: string;
    procedure SetTypeName(const Value: string);
  public
    function IsSetTypeName: Boolean;
    property TypeName: string read GetTypeName write SetTypeName;
  end;
  
implementation

{ EItemContentMismatchException }

function EItemContentMismatchException.GetTypeName: string;
begin
  Result := FTypeName.ValueOrDefault;
end;

procedure EItemContentMismatchException.SetTypeName(const Value: string);
begin
  FTypeName := Value;
end;

function EItemContentMismatchException.IsSetTypeName: Boolean;
begin
  Result := FTypeName.HasValue;
end;

end.
