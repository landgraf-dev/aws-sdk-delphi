unit AWS.SNS.Model.AuthorizationErrorException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SNS.Exception;

type
  EAuthorizationErrorException = class(EAmazonSimpleNotificationServiceException)
  strict private
    FMessage: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
  public
    function IsSetMessage: Boolean;
    property Message: string read GetMessage write SetMessage;
  end;
  
implementation

{ EAuthorizationErrorException }

function EAuthorizationErrorException.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure EAuthorizationErrorException.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function EAuthorizationErrorException.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

end.
