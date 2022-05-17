unit AWS.SNS.Extensions;

interface

uses
  System.SysUtils,
  AWS.SNS.Model.Topic,
  AWS.SNS.ClientIntf,
  AWS.Auth.Policy,
  AWS.Auth.Statement,
  AWS.Auth.Resource,
  AWS.Auth.Condition,
  AWS.Auth.ActionIdentifier,
  AWS.Auth.Principal;

function FindTopic(Client: IAmazonSimpleNotificationService; const TopicName: string): TTopic;
function HasSQSPermission(Policy: TPolicy; const TopicArn, SQSQueueArn: string): Boolean;
procedure AddSQSPermission(Policy: TPolicy; const TopicArn, SQSQueueArn: string);

implementation

uses
  AWS.SNS.Model.ListTopicsResponse,
  AWS.SNS.Model.ListTopicsRequest;

procedure AddSQSPermission(Policy: TPolicy; const TopicArn, SQSQueueArn: string);
var
  Statement: TStatement;
  Condition: TCondition;
begin
  Statement := TStatement.Create(TStatementEffect.Allow);
  Statement.Actions.Add(TActionIdentifier.Create('sqs:SendMessage')); // TODO: move to constant later
  Statement.Resources.Add(TResource.Create(SQSQueueArn));

  Condition := TCondition.Create;
  Statement.Conditions.Add(Condition);
  Condition.ConditionType := 'ArnLike'; // TODO: Review constants
  Condition.ConditionKey := 'aws:SourceArn'; // TODO: Review constants
  Condition.Values.Add(TopicArn);
  Statement.Principals.Add(TPrincipal.Create('*'));
  policy.Statements.Add(statement);
end;

function HasSQSPermission(Policy: TPolicy; const TopicArn, SQSQueueArn: string): Boolean;
var
  Statement: TStatement;
  ContainsResource: Boolean;
  Resource: TResource;
  Condition: TCondition;
begin
  for Statement in Policy.Statements do
  begin
    // See if the statement contains the topic as a resource
    ContainsResource := False;
    for Resource in Statement.Resources do
      if Resource.Id = SQSQueueArn then
      begin
        ContainsResource := True;
        Break;
      end;

    // If queue found as the resource see if the condition is for this topic
    if ContainsResource then
      for Condition in Statement.Conditions do
      begin
        if (SameText(Condition.ConditionType, 'StringLike') or
           SameText(Condition.ConditionType, 'StringEquals') or
           SameText(Condition.ConditionType, 'ArnEquals') or
           SameText(Condition.ConditionType, 'ArnLike'))
           and SameText(Condition.ConditionKey, 'aws:SourceArn') // TODO: Move to SOURCE_ARN_CONDITION_KEY constant
           and Condition.Values.Contains(TopicArn) then
          Exit(True);
      end;
  end;

  Result := False;
end;

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
