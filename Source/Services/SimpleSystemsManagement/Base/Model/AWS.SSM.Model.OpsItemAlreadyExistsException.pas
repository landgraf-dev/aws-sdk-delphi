unit AWS.SSM.Model.OpsItemAlreadyExistsException;

interface

uses
  AWS.SSM.Exception, 
  AWS.Nullable;

type
  EOpsItemAlreadyExistsException = class(EAmazonSimpleSystemsManagementException)
  strict private
    FOpsItemId: Nullable<string>;
    function GetOpsItemId: string;
    procedure SetOpsItemId(const Value: string);
  public
    function IsSetOpsItemId: Boolean;
    property OpsItemId: string read GetOpsItemId write SetOpsItemId;
  end;
  
implementation

{ EOpsItemAlreadyExistsException }

function EOpsItemAlreadyExistsException.GetOpsItemId: string;
begin
  Result := FOpsItemId.ValueOrDefault;
end;

procedure EOpsItemAlreadyExistsException.SetOpsItemId(const Value: string);
begin
  FOpsItemId := Value;
end;

function EOpsItemAlreadyExistsException.IsSetOpsItemId: Boolean;
begin
  Result := FOpsItemId.HasValue;
end;

end.
