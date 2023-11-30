unit AWS.SES.Model.InvalidSnsTopicException;

interface

uses
  AWS.SES.Exception, 
  AWS.Nullable;

type
  EInvalidSnsTopicException = class(EAmazonSimpleEmailServiceException)
  strict private
    FTopic: Nullable<string>;
    function GetTopic: string;
    procedure SetTopic(const Value: string);
  public
    function IsSetTopic: Boolean;
    property Topic: string read GetTopic write SetTopic;
  end;
  
implementation

{ EInvalidSnsTopicException }

function EInvalidSnsTopicException.GetTopic: string;
begin
  Result := FTopic.ValueOrDefault;
end;

procedure EInvalidSnsTopicException.SetTopic(const Value: string);
begin
  FTopic := Value;
end;

function EInvalidSnsTopicException.IsSetTopic: Boolean;
begin
  Result := FTopic.HasValue;
end;

end.
