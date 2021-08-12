unit AWS.SNS.Extensions;

{$I AWS.inc}

interface

uses
  AWS.SNS.Model.Topic,
  AWS.SNS.ClientIntf;

function FindTopic(Client: IAmazonSimpleNotificationService; const TopicName: string): TTopic;

implementation

uses
  AWS.SNS.Model.ListTopicsResponse,
  AWS.SNS.Model.ListTopicsRequest;

function TopicNameMatcher(const TopicArn, TopicName: string): Boolean;
var
  IndexOfLastColon: Integer;
  I: Integer;
begin
  if (TopicArn = '') or (TopicName = '') then
    Exit(False);

  IndexOfLastColon := 0;
  for I := Length(TopicArn) downto 1 do
    if TopicArn[I] = ':' then
    begin
      IndexOfLastColon := I;
      Break;
    end;
  if IndexOfLastColon > 0 then
    Result := Copy(TopicArn, IndexOfLastColon + 1) = TopicName
  else
    Result := False;
end;

function FindTopic(Client: IAmazonSimpleNotificationService; const TopicName: string): TTopic;
var
  NextToken: string;
  Response: IListTopicsResponse;
  Topic: TTopic;
begin
  NextToken := '';
  repeat
    Response := Client.ListTopics(TListTopicsRequest.Create(NextToken));
    for Topic in Response.Topics do
      if TopicNameMatcher(Topic.TopicArn, topicName) then
        Exit(Topic);
    NextToken := Response.NextToken;
  until NextToken = '';
  Result := nil;
end;

end.
