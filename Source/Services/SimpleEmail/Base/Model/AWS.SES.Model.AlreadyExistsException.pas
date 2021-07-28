unit AWS.SES.Model.AlreadyExistsException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SES.Exception;

type
  EAlreadyExistsException = class(EAmazonSimpleEmailServiceException)
  strict private
    FName: Nullable<string>;
    function GetName: string;
    procedure SetName(const Value: string);
  public
    function IsSetName: Boolean;
    property Name: string read GetName write SetName;
  end;
  
implementation

{ EAlreadyExistsException }

function EAlreadyExistsException.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure EAlreadyExistsException.SetName(const Value: string);
begin
  FName := Value;
end;

function EAlreadyExistsException.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

end.
