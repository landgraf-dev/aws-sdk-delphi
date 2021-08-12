unit AWS.SNS.Model.InvalidSecurityException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SNS.Exception;

type
  EInvalidSecurityException = class(EAmazonSimpleNotificationServiceException)
  strict private
    FMessage: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
  public
    function IsSetMessage: Boolean;
    property Message: string read GetMessage write SetMessage;
  end;
  
implementation

{ EInvalidSecurityException }

function EInvalidSecurityException.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure EInvalidSecurityException.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function EInvalidSecurityException.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

end.
