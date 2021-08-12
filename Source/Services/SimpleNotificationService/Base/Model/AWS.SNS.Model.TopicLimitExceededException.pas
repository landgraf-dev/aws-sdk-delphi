unit AWS.SNS.Model.TopicLimitExceededException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SNS.Exception;

type
  ETopicLimitExceededException = class(EAmazonSimpleNotificationServiceException)
  strict private
    FMessage: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
  public
    function IsSetMessage: Boolean;
    property Message: string read GetMessage write SetMessage;
  end;
  
implementation

{ ETopicLimitExceededException }

function ETopicLimitExceededException.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure ETopicLimitExceededException.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function ETopicLimitExceededException.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

end.
