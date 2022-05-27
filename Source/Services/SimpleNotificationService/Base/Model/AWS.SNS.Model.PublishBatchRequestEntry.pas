unit AWS.SNS.Model.PublishBatchRequestEntry;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.SNS.Model.MessageAttributeValue;

type
  TPublishBatchRequestEntry = class;
  
  IPublishBatchRequestEntry = interface
    function GetId: string;
    procedure SetId(const Value: string);
    function GetMessage: string;
    procedure SetMessage(const Value: string);
    function GetMessageAttributes: TObjectDictionary<string, TMessageAttributeValue>;
    procedure SetMessageAttributes(const Value: TObjectDictionary<string, TMessageAttributeValue>);
    function GetKeepMessageAttributes: Boolean;
    procedure SetKeepMessageAttributes(const Value: Boolean);
    function GetMessageDeduplicationId: string;
    procedure SetMessageDeduplicationId(const Value: string);
    function GetMessageGroupId: string;
    procedure SetMessageGroupId(const Value: string);
    function GetMessageStructure: string;
    procedure SetMessageStructure(const Value: string);
    function GetSubject: string;
    procedure SetSubject(const Value: string);
    function Obj: TPublishBatchRequestEntry;
    function IsSetId: Boolean;
    function IsSetMessage: Boolean;
    function IsSetMessageAttributes: Boolean;
    function IsSetMessageDeduplicationId: Boolean;
    function IsSetMessageGroupId: Boolean;
    function IsSetMessageStructure: Boolean;
    function IsSetSubject: Boolean;
    property Id: string read GetId write SetId;
    property Message: string read GetMessage write SetMessage;
    property MessageAttributes: TObjectDictionary<string, TMessageAttributeValue> read GetMessageAttributes write SetMessageAttributes;
    property KeepMessageAttributes: Boolean read GetKeepMessageAttributes write SetKeepMessageAttributes;
    property MessageDeduplicationId: string read GetMessageDeduplicationId write SetMessageDeduplicationId;
    property MessageGroupId: string read GetMessageGroupId write SetMessageGroupId;
    property MessageStructure: string read GetMessageStructure write SetMessageStructure;
    property Subject: string read GetSubject write SetSubject;
  end;
  
  TPublishBatchRequestEntry = class
  strict private
    FId: Nullable<string>;
    FMessage: Nullable<string>;
    FMessageAttributes: TObjectDictionary<string, TMessageAttributeValue>;
    FKeepMessageAttributes: Boolean;
    FMessageDeduplicationId: Nullable<string>;
    FMessageGroupId: Nullable<string>;
    FMessageStructure: Nullable<string>;
    FSubject: Nullable<string>;
    function GetId: string;
    procedure SetId(const Value: string);
    function GetMessage: string;
    procedure SetMessage(const Value: string);
    function GetMessageAttributes: TObjectDictionary<string, TMessageAttributeValue>;
    procedure SetMessageAttributes(const Value: TObjectDictionary<string, TMessageAttributeValue>);
    function GetKeepMessageAttributes: Boolean;
    procedure SetKeepMessageAttributes(const Value: Boolean);
    function GetMessageDeduplicationId: string;
    procedure SetMessageDeduplicationId(const Value: string);
    function GetMessageGroupId: string;
    procedure SetMessageGroupId(const Value: string);
    function GetMessageStructure: string;
    procedure SetMessageStructure(const Value: string);
    function GetSubject: string;
    procedure SetSubject(const Value: string);
  strict protected
    function Obj: TPublishBatchRequestEntry;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetId: Boolean;
    function IsSetMessage: Boolean;
    function IsSetMessageAttributes: Boolean;
    function IsSetMessageDeduplicationId: Boolean;
    function IsSetMessageGroupId: Boolean;
    function IsSetMessageStructure: Boolean;
    function IsSetSubject: Boolean;
    property Id: string read GetId write SetId;
    property Message: string read GetMessage write SetMessage;
    property MessageAttributes: TObjectDictionary<string, TMessageAttributeValue> read GetMessageAttributes write SetMessageAttributes;
    property KeepMessageAttributes: Boolean read GetKeepMessageAttributes write SetKeepMessageAttributes;
    property MessageDeduplicationId: string read GetMessageDeduplicationId write SetMessageDeduplicationId;
    property MessageGroupId: string read GetMessageGroupId write SetMessageGroupId;
    property MessageStructure: string read GetMessageStructure write SetMessageStructure;
    property Subject: string read GetSubject write SetSubject;
  end;
  
implementation

{ TPublishBatchRequestEntry }

constructor TPublishBatchRequestEntry.Create;
begin
  inherited;
  FMessageAttributes := TObjectDictionary<string, TMessageAttributeValue>.Create([doOwnsValues]);
end;

destructor TPublishBatchRequestEntry.Destroy;
begin
  MessageAttributes := nil;
  inherited;
end;

function TPublishBatchRequestEntry.Obj: TPublishBatchRequestEntry;
begin
  Result := Self;
end;

function TPublishBatchRequestEntry.GetId: string;
begin
  Result := FId.ValueOrDefault;
end;

procedure TPublishBatchRequestEntry.SetId(const Value: string);
begin
  FId := Value;
end;

function TPublishBatchRequestEntry.IsSetId: Boolean;
begin
  Result := FId.HasValue;
end;

function TPublishBatchRequestEntry.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure TPublishBatchRequestEntry.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function TPublishBatchRequestEntry.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

function TPublishBatchRequestEntry.GetMessageAttributes: TObjectDictionary<string, TMessageAttributeValue>;
begin
  Result := FMessageAttributes;
end;

procedure TPublishBatchRequestEntry.SetMessageAttributes(const Value: TObjectDictionary<string, TMessageAttributeValue>);
begin
  if FMessageAttributes <> Value then
  begin
    if not KeepMessageAttributes then
      FMessageAttributes.Free;
    FMessageAttributes := Value;
  end;
end;

function TPublishBatchRequestEntry.GetKeepMessageAttributes: Boolean;
begin
  Result := FKeepMessageAttributes;
end;

procedure TPublishBatchRequestEntry.SetKeepMessageAttributes(const Value: Boolean);
begin
  FKeepMessageAttributes := Value;
end;

function TPublishBatchRequestEntry.IsSetMessageAttributes: Boolean;
begin
  Result := (FMessageAttributes <> nil) and (FMessageAttributes.Count > 0);
end;

function TPublishBatchRequestEntry.GetMessageDeduplicationId: string;
begin
  Result := FMessageDeduplicationId.ValueOrDefault;
end;

procedure TPublishBatchRequestEntry.SetMessageDeduplicationId(const Value: string);
begin
  FMessageDeduplicationId := Value;
end;

function TPublishBatchRequestEntry.IsSetMessageDeduplicationId: Boolean;
begin
  Result := FMessageDeduplicationId.HasValue;
end;

function TPublishBatchRequestEntry.GetMessageGroupId: string;
begin
  Result := FMessageGroupId.ValueOrDefault;
end;

procedure TPublishBatchRequestEntry.SetMessageGroupId(const Value: string);
begin
  FMessageGroupId := Value;
end;

function TPublishBatchRequestEntry.IsSetMessageGroupId: Boolean;
begin
  Result := FMessageGroupId.HasValue;
end;

function TPublishBatchRequestEntry.GetMessageStructure: string;
begin
  Result := FMessageStructure.ValueOrDefault;
end;

procedure TPublishBatchRequestEntry.SetMessageStructure(const Value: string);
begin
  FMessageStructure := Value;
end;

function TPublishBatchRequestEntry.IsSetMessageStructure: Boolean;
begin
  Result := FMessageStructure.HasValue;
end;

function TPublishBatchRequestEntry.GetSubject: string;
begin
  Result := FSubject.ValueOrDefault;
end;

procedure TPublishBatchRequestEntry.SetSubject(const Value: string);
begin
  FSubject := Value;
end;

function TPublishBatchRequestEntry.IsSetSubject: Boolean;
begin
  Result := FSubject.HasValue;
end;

end.
