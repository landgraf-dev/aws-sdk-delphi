unit AWS.SQS.Model.SendMessageRequest;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.SQS.Model.Request, 
  AWS.SQS.Model.MessageAttributeValue, 
  AWS.SQS.Model.MessageSystemAttributeValue;

type
  TSendMessageRequest = class;
  
  ISendMessageRequest = interface
    function GetDelaySeconds: Integer;
    procedure SetDelaySeconds(const Value: Integer);
    function GetMessageAttributes: TObjectDictionary<string, TMessageAttributeValue>;
    procedure SetMessageAttributes(const Value: TObjectDictionary<string, TMessageAttributeValue>);
    function GetMessageBody: string;
    procedure SetMessageBody(const Value: string);
    function GetMessageDeduplicationId: string;
    procedure SetMessageDeduplicationId(const Value: string);
    function GetMessageGroupId: string;
    procedure SetMessageGroupId(const Value: string);
    function GetMessageSystemAttributes: TObjectDictionary<string, TMessageSystemAttributeValue>;
    procedure SetMessageSystemAttributes(const Value: TObjectDictionary<string, TMessageSystemAttributeValue>);
    function GetQueueUrl: string;
    procedure SetQueueUrl(const Value: string);
    function Obj: TSendMessageRequest;
    function IsSetDelaySeconds: Boolean;
    function IsSetMessageAttributes: Boolean;
    function IsSetMessageBody: Boolean;
    function IsSetMessageDeduplicationId: Boolean;
    function IsSetMessageGroupId: Boolean;
    function IsSetMessageSystemAttributes: Boolean;
    function IsSetQueueUrl: Boolean;
    property DelaySeconds: Integer read GetDelaySeconds write SetDelaySeconds;
    property MessageAttributes: TObjectDictionary<string, TMessageAttributeValue> read GetMessageAttributes write SetMessageAttributes;
    property MessageBody: string read GetMessageBody write SetMessageBody;
    property MessageDeduplicationId: string read GetMessageDeduplicationId write SetMessageDeduplicationId;
    property MessageGroupId: string read GetMessageGroupId write SetMessageGroupId;
    property MessageSystemAttributes: TObjectDictionary<string, TMessageSystemAttributeValue> read GetMessageSystemAttributes write SetMessageSystemAttributes;
    property QueueUrl: string read GetQueueUrl write SetQueueUrl;
  end;
  
  TSendMessageRequest = class(TAmazonSQSRequest, ISendMessageRequest)
  strict private
    FDelaySeconds: Nullable<Integer>;
    FMessageAttributes: TObjectDictionary<string, TMessageAttributeValue>;
    FMessageBody: Nullable<string>;
    FMessageDeduplicationId: Nullable<string>;
    FMessageGroupId: Nullable<string>;
    FMessageSystemAttributes: TObjectDictionary<string, TMessageSystemAttributeValue>;
    FQueueUrl: Nullable<string>;
    function GetDelaySeconds: Integer;
    procedure SetDelaySeconds(const Value: Integer);
    function GetMessageAttributes: TObjectDictionary<string, TMessageAttributeValue>;
    procedure SetMessageAttributes(const Value: TObjectDictionary<string, TMessageAttributeValue>);
    function GetMessageBody: string;
    procedure SetMessageBody(const Value: string);
    function GetMessageDeduplicationId: string;
    procedure SetMessageDeduplicationId(const Value: string);
    function GetMessageGroupId: string;
    procedure SetMessageGroupId(const Value: string);
    function GetMessageSystemAttributes: TObjectDictionary<string, TMessageSystemAttributeValue>;
    procedure SetMessageSystemAttributes(const Value: TObjectDictionary<string, TMessageSystemAttributeValue>);
    function GetQueueUrl: string;
    procedure SetQueueUrl(const Value: string);
  strict protected
    function Obj: TSendMessageRequest;
  public
    constructor Create; overload;
    destructor Destroy; override;
    constructor Create(const AQueueUrl: string; const AMessageBody: string); overload;
    function IsSetDelaySeconds: Boolean;
    function IsSetMessageAttributes: Boolean;
    function IsSetMessageBody: Boolean;
    function IsSetMessageDeduplicationId: Boolean;
    function IsSetMessageGroupId: Boolean;
    function IsSetMessageSystemAttributes: Boolean;
    function IsSetQueueUrl: Boolean;
    property DelaySeconds: Integer read GetDelaySeconds write SetDelaySeconds;
    property MessageAttributes: TObjectDictionary<string, TMessageAttributeValue> read GetMessageAttributes write SetMessageAttributes;
    property MessageBody: string read GetMessageBody write SetMessageBody;
    property MessageDeduplicationId: string read GetMessageDeduplicationId write SetMessageDeduplicationId;
    property MessageGroupId: string read GetMessageGroupId write SetMessageGroupId;
    property MessageSystemAttributes: TObjectDictionary<string, TMessageSystemAttributeValue> read GetMessageSystemAttributes write SetMessageSystemAttributes;
    property QueueUrl: string read GetQueueUrl write SetQueueUrl;
  end;
  
implementation

{ TSendMessageRequest }

constructor TSendMessageRequest.Create;
begin
  inherited;
  FMessageAttributes := TObjectDictionary<string, TMessageAttributeValue>.Create([doOwnsValues]);
  FMessageSystemAttributes := TObjectDictionary<string, TMessageSystemAttributeValue>.Create([doOwnsValues]);
end;

destructor TSendMessageRequest.Destroy;
begin
  MessageSystemAttributes := nil;
  MessageAttributes := nil;
  inherited;
end;

function TSendMessageRequest.Obj: TSendMessageRequest;
begin
  Result := Self;
end;

constructor TSendMessageRequest.Create(const AQueueUrl: string; const AMessageBody: string);
begin
  inherited Create;
  QueueUrl := AQueueUrl;
  MessageBody := AMessageBody;
end;

function TSendMessageRequest.GetDelaySeconds: Integer;
begin
  Result := FDelaySeconds.ValueOrDefault;
end;

procedure TSendMessageRequest.SetDelaySeconds(const Value: Integer);
begin
  FDelaySeconds := Value;
end;

function TSendMessageRequest.IsSetDelaySeconds: Boolean;
begin
  Result := FDelaySeconds.HasValue;
end;

function TSendMessageRequest.GetMessageAttributes: TObjectDictionary<string, TMessageAttributeValue>;
begin
  Result := FMessageAttributes;
end;

procedure TSendMessageRequest.SetMessageAttributes(const Value: TObjectDictionary<string, TMessageAttributeValue>);
begin
  if FMessageAttributes <> Value then
  begin
    FMessageAttributes.Free;
    FMessageAttributes := Value;
  end;
end;

function TSendMessageRequest.IsSetMessageAttributes: Boolean;
begin
  Result := (FMessageAttributes <> nil) and (FMessageAttributes.Count > 0);
end;

function TSendMessageRequest.GetMessageBody: string;
begin
  Result := FMessageBody.ValueOrDefault;
end;

procedure TSendMessageRequest.SetMessageBody(const Value: string);
begin
  FMessageBody := Value;
end;

function TSendMessageRequest.IsSetMessageBody: Boolean;
begin
  Result := FMessageBody.HasValue;
end;

function TSendMessageRequest.GetMessageDeduplicationId: string;
begin
  Result := FMessageDeduplicationId.ValueOrDefault;
end;

procedure TSendMessageRequest.SetMessageDeduplicationId(const Value: string);
begin
  FMessageDeduplicationId := Value;
end;

function TSendMessageRequest.IsSetMessageDeduplicationId: Boolean;
begin
  Result := FMessageDeduplicationId.HasValue;
end;

function TSendMessageRequest.GetMessageGroupId: string;
begin
  Result := FMessageGroupId.ValueOrDefault;
end;

procedure TSendMessageRequest.SetMessageGroupId(const Value: string);
begin
  FMessageGroupId := Value;
end;

function TSendMessageRequest.IsSetMessageGroupId: Boolean;
begin
  Result := FMessageGroupId.HasValue;
end;

function TSendMessageRequest.GetMessageSystemAttributes: TObjectDictionary<string, TMessageSystemAttributeValue>;
begin
  Result := FMessageSystemAttributes;
end;

procedure TSendMessageRequest.SetMessageSystemAttributes(const Value: TObjectDictionary<string, TMessageSystemAttributeValue>);
begin
  if FMessageSystemAttributes <> Value then
  begin
    FMessageSystemAttributes.Free;
    FMessageSystemAttributes := Value;
  end;
end;

function TSendMessageRequest.IsSetMessageSystemAttributes: Boolean;
begin
  Result := (FMessageSystemAttributes <> nil) and (FMessageSystemAttributes.Count > 0);
end;

function TSendMessageRequest.GetQueueUrl: string;
begin
  Result := FQueueUrl.ValueOrDefault;
end;

procedure TSendMessageRequest.SetQueueUrl(const Value: string);
begin
  FQueueUrl := Value;
end;

function TSendMessageRequest.IsSetQueueUrl: Boolean;
begin
  Result := FQueueUrl.HasValue;
end;

end.
