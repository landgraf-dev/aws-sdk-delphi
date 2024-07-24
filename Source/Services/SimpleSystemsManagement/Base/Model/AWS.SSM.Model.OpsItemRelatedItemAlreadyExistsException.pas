unit AWS.SSM.Model.OpsItemRelatedItemAlreadyExistsException;

interface

uses
  AWS.SSM.Exception, 
  AWS.Nullable;

type
  EOpsItemRelatedItemAlreadyExistsException = class(EAmazonSimpleSystemsManagementException)
  strict private
    FOpsItemId: Nullable<string>;
    FResourceUri: Nullable<string>;
    function GetOpsItemId: string;
    procedure SetOpsItemId(const Value: string);
    function GetResourceUri: string;
    procedure SetResourceUri(const Value: string);
  public
    function IsSetOpsItemId: Boolean;
    function IsSetResourceUri: Boolean;
    property OpsItemId: string read GetOpsItemId write SetOpsItemId;
    property ResourceUri: string read GetResourceUri write SetResourceUri;
  end;
  
implementation

{ EOpsItemRelatedItemAlreadyExistsException }

function EOpsItemRelatedItemAlreadyExistsException.GetOpsItemId: string;
begin
  Result := FOpsItemId.ValueOrDefault;
end;

procedure EOpsItemRelatedItemAlreadyExistsException.SetOpsItemId(const Value: string);
begin
  FOpsItemId := Value;
end;

function EOpsItemRelatedItemAlreadyExistsException.IsSetOpsItemId: Boolean;
begin
  Result := FOpsItemId.HasValue;
end;

function EOpsItemRelatedItemAlreadyExistsException.GetResourceUri: string;
begin
  Result := FResourceUri.ValueOrDefault;
end;

procedure EOpsItemRelatedItemAlreadyExistsException.SetResourceUri(const Value: string);
begin
  FResourceUri := Value;
end;

function EOpsItemRelatedItemAlreadyExistsException.IsSetResourceUri: Boolean;
begin
  Result := FResourceUri.HasValue;
end;

end.
