unit AWS.SNS.Model.UserErrorException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SNS.Exception;

type
  EUserErrorException = class(EAmazonSimpleNotificationServiceException)
  strict private
    FMessage: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
  public
    function IsSetMessage: Boolean;
    property Message: string read GetMessage write SetMessage;
  end;
  
implementation

{ EUserErrorException }

function EUserErrorException.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure EUserErrorException.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function EUserErrorException.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

end.
