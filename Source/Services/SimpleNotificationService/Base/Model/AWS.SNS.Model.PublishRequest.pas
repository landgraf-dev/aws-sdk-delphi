unit AWS.SNS.Model.PublishRequest;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.SNS.Model.Request, 
  AWS.SNS.Model.MessageAttributeValue;

type
  TPublishRequest = class;
  
  IPublishRequest = interface
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
    function GetPhoneNumber: string;
    procedure SetPhoneNumber(const Value: string);
    function GetSubject: string;
    procedure SetSubject(const Value: string);
    function GetTargetArn: string;
    procedure SetTargetArn(const Value: string);
    function GetTopicArn: string;
    procedure SetTopicArn(const Value: string);
    function Obj: TPublishRequest;
    function IsSetMessage: Boolean;
    function IsSetMessageAttributes: Boolean;
    function IsSetMessageDeduplicationId: Boolean;
    function IsSetMessageGroupId: Boolean;
    function IsSetMessageStructure: Boolean;
    function IsSetPhoneNumber: Boolean;
    function IsSetSubject: Boolean;
    function IsSetTargetArn: Boolean;
    function IsSetTopicArn: Boolean;
    property Message: string read GetMessage write SetMessage;
    property MessageAttributes: TObjectDictionary<string, TMessageAttributeValue> read GetMessageAttributes write SetMessageAttributes;
    property KeepMessageAttributes: Boolean read GetKeepMessageAttributes write SetKeepMessageAttributes;
    property MessageDeduplicationId: string read GetMessageDeduplicationId write SetMessageDeduplicationId;
    property MessageGroupId: string read GetMessageGroupId write SetMessageGroupId;
    property MessageStructure: string read GetMessageStructure write SetMessageStructure;
    property PhoneNumber: string read GetPhoneNumber write SetPhoneNumber;
    property Subject: string read GetSubject write SetSubject;
    property TargetArn: string read GetTargetArn write SetTargetArn;
    property TopicArn: string read GetTopicArn write SetTopicArn;
  end;
  
  TPublishRequest = class(TAmazonSimpleNotificationServiceRequest, IPublishRequest)
  strict private
    FMessage: Nullable<string>;
    FMessageAttributes: TObjectDictionary<string, TMessageAttributeValue>;
    FKeepMessageAttributes: Boolean;
    FMessageDeduplicationId: Nullable<string>;
    FMessageGroupId: Nullable<string>;
    FMessageStructure: Nullable<string>;
    FPhoneNumber: Nullable<string>;
    FSubject: Nullable<string>;
    FTargetArn: Nullable<string>;
    FTopicArn: Nullable<string>;
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
    function GetPhoneNumber: string;
    procedure SetPhoneNumber(const Value: string);
    function GetSubject: string;
    procedure SetSubject(const Value: string);
    function GetTargetArn: string;
    procedure SetTargetArn(const Value: string);
    function GetTopicArn: string;
    procedure SetTopicArn(const Value: string);
  strict protected
    function Obj: TPublishRequest;
  public
    constructor Create; overload;
    destructor Destroy; override;
    constructor Create(const ATopicArn: string; const AMessage: string); overload;
    constructor Create(const ATopicArn: string; const AMessage: string; const ASubject: string); overload;
    function IsSetMessage: Boolean;
    function IsSetMessageAttributes: Boolean;
    function IsSetMessageDeduplicationId: Boolean;
    function IsSetMessageGroupId: Boolean;
    function IsSetMessageStructure: Boolean;
    function IsSetPhoneNumber: Boolean;
    function IsSetSubject: Boolean;
    function IsSetTargetArn: Boolean;
    function IsSetTopicArn: Boolean;
    property Message: string read GetMessage write SetMessage;
    property MessageAttributes: TObjectDictionary<string, TMessageAttributeValue> read GetMessageAttributes write SetMessageAttributes;
    property KeepMessageAttributes: Boolean read GetKeepMessageAttributes write SetKeepMessageAttributes;
    property MessageDeduplicationId: string read GetMessageDeduplicationId write SetMessageDeduplicationId;
    property MessageGroupId: string read GetMessageGroupId write SetMessageGroupId;
    property MessageStructure: string read GetMessageStructure write SetMessageStructure;
    property PhoneNumber: string read GetPhoneNumber write SetPhoneNumber;
    property Subject: string read GetSubject write SetSubject;
    property TargetArn: string read GetTargetArn write SetTargetArn;
    property TopicArn: string read GetTopicArn write SetTopicArn;
  end;
  
implementation

{ TPublishRequest }

constructor TPublishRequest.Create;
begin
  inherited;
  FMessageAttributes := TObjectDictionary<string, TMessageAttributeValue>.Create([doOwnsValues]);
end;

destructor TPublishRequest.Destroy;
begin
  MessageAttributes := nil;
  inherited;
end;

function TPublishRequest.Obj: TPublishRequest;
begin
  Result := Self;
end;

constructor TPublishRequest.Create(const ATopicArn: string; const AMessage: string);
begin
  inherited Create;
  TopicArn := ATopicArn;
  Message := AMessage;
end;

constructor TPublishRequest.Create(const ATopicArn: string; const AMessage: string; const ASubject: string);
begin
  inherited Create;
  TopicArn := ATopicArn;
  Message := AMessage;
  Subject := ASubject;
end;

function TPublishRequest.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure TPublishRequest.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function TPublishRequest.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

function TPublishRequest.GetMessageAttributes: TObjectDictionary<string, TMessageAttributeValue>;
begin
  Result := FMessageAttributes;
end;

procedure TPublishRequest.SetMessageAttributes(const Value: TObjectDictionary<string, TMessageAttributeValue>);
begin
  if FMessageAttributes <> Value then
  begin
    if not KeepMessageAttributes then
      FMessageAttributes.Free;
    FMessageAttributes := Value;
  end;
end;

function TPublishRequest.GetKeepMessageAttributes: Boolean;
begin
  Result := FKeepMessageAttributes;
end;

procedure TPublishRequest.SetKeepMessageAttributes(const Value: Boolean);
begin
  FKeepMessageAttributes := Value;
end;

function TPublishRequest.IsSetMessageAttributes: Boolean;
begin
  Result := (FMessageAttributes <> nil) and (FMessageAttributes.Count > 0);
end;

function TPublishRequest.GetMessageDeduplicationId: string;
begin
  Result := FMessageDeduplicationId.ValueOrDefault;
end;

procedure TPublishRequest.SetMessageDeduplicationId(const Value: string);
begin
  FMessageDeduplicationId := Value;
end;

function TPublishRequest.IsSetMessageDeduplicationId: Boolean;
begin
  Result := FMessageDeduplicationId.HasValue;
end;

function TPublishRequest.GetMessageGroupId: string;
begin
  Result := FMessageGroupId.ValueOrDefault;
end;

procedure TPublishRequest.SetMessageGroupId(const Value: string);
begin
  FMessageGroupId := Value;
end;

function TPublishRequest.IsSetMessageGroupId: Boolean;
begin
  Result := FMessageGroupId.HasValue;
end;

function TPublishRequest.GetMessageStructure: string;
begin
  Result := FMessageStructure.ValueOrDefault;
end;

procedure TPublishRequest.SetMessageStructure(const Value: string);
begin
  FMessageStructure := Value;
end;

function TPublishRequest.IsSetMessageStructure: Boolean;
begin
  Result := FMessageStructure.HasValue;
end;

function TPublishRequest.GetPhoneNumber: string;
begin
  Result := FPhoneNumber.ValueOrDefault;
end;

procedure TPublishRequest.SetPhoneNumber(const Value: string);
begin
  FPhoneNumber := Value;
end;

function TPublishRequest.IsSetPhoneNumber: Boolean;
begin
  Result := FPhoneNumber.HasValue;
end;

function TPublishRequest.GetSubject: string;
begin
  Result := FSubject.ValueOrDefault;
end;

procedure TPublishRequest.SetSubject(const Value: string);
begin
  FSubject := Value;
end;

function TPublishRequest.IsSetSubject: Boolean;
begin
  Result := FSubject.HasValue;
end;

function TPublishRequest.GetTargetArn: string;
begin
  Result := FTargetArn.ValueOrDefault;
end;

procedure TPublishRequest.SetTargetArn(const Value: string);
begin
  FTargetArn := Value;
end;

function TPublishRequest.IsSetTargetArn: Boolean;
begin
  Result := FTargetArn.HasValue;
end;

function TPublishRequest.GetTopicArn: string;
begin
  Result := FTopicArn.ValueOrDefault;
end;

procedure TPublishRequest.SetTopicArn(const Value: string);
begin
  FTopicArn := Value;
end;

function TPublishRequest.IsSetTopicArn: Boolean;
begin
  Result := FTopicArn.HasValue;
end;

end.
