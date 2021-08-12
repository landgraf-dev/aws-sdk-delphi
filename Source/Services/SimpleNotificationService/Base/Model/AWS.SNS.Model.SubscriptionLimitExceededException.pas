unit AWS.SNS.Model.SubscriptionLimitExceededException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SNS.Exception;

type
  ESubscriptionLimitExceededException = class(EAmazonSimpleNotificationServiceException)
  strict private
    FMessage: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
  public
    function IsSetMessage: Boolean;
    property Message: string read GetMessage write SetMessage;
  end;
  
implementation

{ ESubscriptionLimitExceededException }

function ESubscriptionLimitExceededException.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure ESubscriptionLimitExceededException.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function ESubscriptionLimitExceededException.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

end.
