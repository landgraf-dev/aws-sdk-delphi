unit AWS.SSM.Model.ItemSizeLimitExceededException;

interface

uses
  AWS.SSM.Exception, 
  AWS.Nullable;

type
  EItemSizeLimitExceededException = class(EAmazonSimpleSystemsManagementException)
  strict private
    FTypeName: Nullable<string>;
    function GetTypeName: string;
    procedure SetTypeName(const Value: string);
  public
    function IsSetTypeName: Boolean;
    property TypeName: string read GetTypeName write SetTypeName;
  end;
  
implementation

{ EItemSizeLimitExceededException }

function EItemSizeLimitExceededException.GetTypeName: string;
begin
  Result := FTypeName.ValueOrDefault;
end;

procedure EItemSizeLimitExceededException.SetTypeName(const Value: string);
begin
  FTypeName := Value;
end;

function EItemSizeLimitExceededException.IsSetTypeName: Boolean;
begin
  Result := FTypeName.HasValue;
end;

end.
