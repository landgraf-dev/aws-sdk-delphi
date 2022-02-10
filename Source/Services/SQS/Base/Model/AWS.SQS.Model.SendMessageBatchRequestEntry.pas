unit AWS.SQS.Model.SendMessageBatchRequestEntry;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.SQS.Model.MessageAttributeValue, 
  AWS.SQS.Model.MessageSystemAttributeValue;

type
  TSendMessageBatchRequestEntry = class;
  
  ISendMessageBatchRequestEntry = interface
    function GetDelaySeconds: Integer;
    procedure SetDelaySeconds(const Value: Integer);
    function GetId: string;
    procedure SetId(const Value: string);
    function GetMessageAttributes: TObjectDictionary<string, TMessageAttributeValue>;
    procedure SetMessageAttributes(const Value: TObjectDictionary<string, TMessageAttributeValue>);
    function GetKeepMessageAttributes: Boolean;
    procedure SetKeepMessageAttributes(const Value: Boolean);
    function GetMessageBody: string;
    procedure SetMessageBody(const Value: string);
    function GetMessageDeduplicationId: string;
    procedure SetMessageDeduplicationId(const Value: string);
    function GetMessageGroupId: string;
    procedure SetMessageGroupId(const Value: string);
    function GetMessageSystemAttributes: TObjectDictionary<string, TMessageSystemAttributeValue>;
    procedure SetMessageSystemAttributes(const Value: TObjectDictionary<string, TMessageSystemAttributeValue>);
    function GetKeepMessageSystemAttributes: Boolean;
    procedure SetKeepMessageSystemAttributes(const Value: Boolean);
    function Obj: TSendMessageBatchRequestEntry;
    function IsSetDelaySeconds: Boolean;
    function IsSetId: Boolean;
    function IsSetMessageAttributes: Boolean;
    function IsSetMessageBody: Boolean;
    function IsSetMessageDeduplicationId: Boolean;
    function IsSetMessageGroupId: Boolean;
    function IsSetMessageSystemAttributes: Boolean;
    property DelaySeconds: Integer read GetDelaySeconds write SetDelaySeconds;
    property Id: string read GetId write SetId;
    property MessageAttributes: TObjectDictionary<string, TMessageAttributeValue> read GetMessageAttributes write SetMessageAttributes;
    property KeepMessageAttributes: Boolean read GetKeepMessageAttributes write SetKeepMessageAttributes;
    property MessageBody: string read GetMessageBody write SetMessageBody;
    property MessageDeduplicationId: string read GetMessageDeduplicationId write SetMessageDeduplicationId;
    property MessageGroupId: string read GetMessageGroupId write SetMessageGroupId;
    property MessageSystemAttributes: TObjectDictionary<string, TMessageSystemAttributeValue> read GetMessageSystemAttributes write SetMessageSystemAttributes;
    property KeepMessageSystemAttributes: Boolean read GetKeepMessageSystemAttributes write SetKeepMessageSystemAttributes;
  end;
  
  TSendMessageBatchRequestEntry = class
  strict private
    FDelaySeconds: Nullable<Integer>;
    FId: Nullable<string>;
    FMessageAttributes: TObjectDictionary<string, TMessageAttributeValue>;
    FKeepMessageAttributes: Boolean;
    FMessageBody: Nullable<string>;
    FMessageDeduplicationId: Nullable<string>;
    FMessageGroupId: Nullable<string>;
    FMessageSystemAttributes: TObjectDictionary<string, TMessageSystemAttributeValue>;
    FKeepMessageSystemAttributes: Boolean;
    function GetDelaySeconds: Integer;
    procedure SetDelaySeconds(const Value: Integer);
    function GetId: string;
    procedure SetId(const Value: string);
    function GetMessageAttributes: TObjectDictionary<string, TMessageAttributeValue>;
    procedure SetMessageAttributes(const Value: TObjectDictionary<string, TMessageAttributeValue>);
    function GetKeepMessageAttributes: Boolean;
    procedure SetKeepMessageAttributes(const Value: Boolean);
    function GetMessageBody: string;
    procedure SetMessageBody(const Value: string);
    function GetMessageDeduplicationId: string;
    procedure SetMessageDeduplicationId(const Value: string);
    function GetMessageGroupId: string;
    procedure SetMessageGroupId(const Value: string);
    function GetMessageSystemAttributes: TObjectDictionary<string, TMessageSystemAttributeValue>;
    procedure SetMessageSystemAttributes(const Value: TObjectDictionary<string, TMessageSystemAttributeValue>);
    function GetKeepMessageSystemAttributes: Boolean;
    procedure SetKeepMessageSystemAttributes(const Value: Boolean);
  strict protected
    function Obj: TSendMessageBatchRequestEntry;
  public
    constructor Create; overload;
    destructor Destroy; override;
    constructor Create(const AId: string; const AMessageBody: string); overload;
    function IsSetDelaySeconds: Boolean;
    function IsSetId: Boolean;
    function IsSetMessageAttributes: Boolean;
    function IsSetMessageBody: Boolean;
    function IsSetMessageDeduplicationId: Boolean;
    function IsSetMessageGroupId: Boolean;
    function IsSetMessageSystemAttributes: Boolean;
    property DelaySeconds: Integer read GetDelaySeconds write SetDelaySeconds;
    property Id: string read GetId write SetId;
    property MessageAttributes: TObjectDictionary<string, TMessageAttributeValue> read GetMessageAttributes write SetMessageAttributes;
    property KeepMessageAttributes: Boolean read GetKeepMessageAttributes write SetKeepMessageAttributes;
    property MessageBody: string read GetMessageBody write SetMessageBody;
    property MessageDeduplicationId: string read GetMessageDeduplicationId write SetMessageDeduplicationId;
    property MessageGroupId: string read GetMessageGroupId write SetMessageGroupId;
    property MessageSystemAttributes: TObjectDictionary<string, TMessageSystemAttributeValue> read GetMessageSystemAttributes write SetMessageSystemAttributes;
    property KeepMessageSystemAttributes: Boolean read GetKeepMessageSystemAttributes write SetKeepMessageSystemAttributes;
  end;
  
implementation

{ TSendMessageBatchRequestEntry }

constructor TSendMessageBatchRequestEntry.Create;
begin
  inherited;
  FMessageAttributes := TObjectDictionary<string, TMessageAttributeValue>.Create([doOwnsValues]);
  FMessageSystemAttributes := TObjectDictionary<string, TMessageSystemAttributeValue>.Create([doOwnsValues]);
end;

destructor TSendMessageBatchRequestEntry.Destroy;
begin
  MessageSystemAttributes := nil;
  MessageAttributes := nil;
  inherited;
end;

function TSendMessageBatchRequestEntry.Obj: TSendMessageBatchRequestEntry;
begin
  Result := Self;
end;

constructor TSendMessageBatchRequestEntry.Create(const AId: string; const AMessageBody: string);
begin
  Create;
  Id := AId;
  MessageBody := AMessageBody;
end;

function TSendMessageBatchRequestEntry.GetDelaySeconds: Integer;
begin
  Result := FDelaySeconds.ValueOrDefault;
end;

procedure TSendMessageBatchRequestEntry.SetDelaySeconds(const Value: Integer);
begin
  FDelaySeconds := Value;
end;

function TSendMessageBatchRequestEntry.IsSetDelaySeconds: Boolean;
begin
  Result := FDelaySeconds.HasValue;
end;

function TSendMessageBatchRequestEntry.GetId: string;
begin
  Result := FId.ValueOrDefault;
end;

procedure TSendMessageBatchRequestEntry.SetId(const Value: string);
begin
  FId := Value;
end;

function TSendMessageBatchRequestEntry.IsSetId: Boolean;
begin
  Result := FId.HasValue;
end;

function TSendMessageBatchRequestEntry.GetMessageAttributes: TObjectDictionary<string, TMessageAttributeValue>;
begin
  Result := FMessageAttributes;
end;

procedure TSendMessageBatchRequestEntry.SetMessageAttributes(const Value: TObjectDictionary<string, TMessageAttributeValue>);
begin
  if FMessageAttributes <> Value then
  begin
    if not KeepMessageAttributes then
      FMessageAttributes.Free;
    FMessageAttributes := Value;
  end;
end;

function TSendMessageBatchRequestEntry.GetKeepMessageAttributes: Boolean;
begin
  Result := FKeepMessageAttributes;
end;

procedure TSendMessageBatchRequestEntry.SetKeepMessageAttributes(const Value: Boolean);
begin
  FKeepMessageAttributes := Value;
end;

function TSendMessageBatchRequestEntry.IsSetMessageAttributes: Boolean;
begin
  Result := (FMessageAttributes <> nil) and (FMessageAttributes.Count > 0);
end;

function TSendMessageBatchRequestEntry.GetMessageBody: string;
begin
  Result := FMessageBody.ValueOrDefault;
end;

procedure TSendMessageBatchRequestEntry.SetMessageBody(const Value: string);
begin
  FMessageBody := Value;
end;

function TSendMessageBatchRequestEntry.IsSetMessageBody: Boolean;
begin
  Result := FMessageBody.HasValue;
end;

function TSendMessageBatchRequestEntry.GetMessageDeduplicationId: string;
begin
  Result := FMessageDeduplicationId.ValueOrDefault;
end;

procedure TSendMessageBatchRequestEntry.SetMessageDeduplicationId(const Value: string);
begin
  FMessageDeduplicationId := Value;
end;

function TSendMessageBatchRequestEntry.IsSetMessageDeduplicationId: Boolean;
begin
  Result := FMessageDeduplicationId.HasValue;
end;

function TSendMessageBatchRequestEntry.GetMessageGroupId: string;
begin
  Result := FMessageGroupId.ValueOrDefault;
end;

procedure TSendMessageBatchRequestEntry.SetMessageGroupId(const Value: string);
begin
  FMessageGroupId := Value;
end;

function TSendMessageBatchRequestEntry.IsSetMessageGroupId: Boolean;
begin
  Result := FMessageGroupId.HasValue;
end;

function TSendMessageBatchRequestEntry.GetMessageSystemAttributes: TObjectDictionary<string, TMessageSystemAttributeValue>;
begin
  Result := FMessageSystemAttributes;
end;

procedure TSendMessageBatchRequestEntry.SetMessageSystemAttributes(const Value: TObjectDictionary<string, TMessageSystemAttributeValue>);
begin
  if FMessageSystemAttributes <> Value then
  begin
    if not KeepMessageSystemAttributes then
      FMessageSystemAttributes.Free;
    FMessageSystemAttributes := Value;
  end;
end;

function TSendMessageBatchRequestEntry.GetKeepMessageSystemAttributes: Boolean;
begin
  Result := FKeepMessageSystemAttributes;
end;

procedure TSendMessageBatchRequestEntry.SetKeepMessageSystemAttributes(const Value: Boolean);
begin
  FKeepMessageSystemAttributes := Value;
end;

function TSendMessageBatchRequestEntry.IsSetMessageSystemAttributes: Boolean;
begin
  Result := (FMessageSystemAttributes <> nil) and (FMessageSystemAttributes.Count > 0);
end;

end.
