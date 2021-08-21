unit AWS.SQS.Model.ReceiveMessageRequest;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.SQS.Model.Request;

type
  TReceiveMessageRequest = class;
  
  IReceiveMessageRequest = interface
    function GetAttributeNames: TList<string>;
    procedure SetAttributeNames(const Value: TList<string>);
    function GetKeepAttributeNames: Boolean;
    procedure SetKeepAttributeNames(const Value: Boolean);
    function GetMaxNumberOfMessages: Integer;
    procedure SetMaxNumberOfMessages(const Value: Integer);
    function GetMessageAttributeNames: TList<string>;
    procedure SetMessageAttributeNames(const Value: TList<string>);
    function GetKeepMessageAttributeNames: Boolean;
    procedure SetKeepMessageAttributeNames(const Value: Boolean);
    function GetQueueUrl: string;
    procedure SetQueueUrl(const Value: string);
    function GetReceiveRequestAttemptId: string;
    procedure SetReceiveRequestAttemptId(const Value: string);
    function GetVisibilityTimeout: Integer;
    procedure SetVisibilityTimeout(const Value: Integer);
    function GetWaitTimeSeconds: Integer;
    procedure SetWaitTimeSeconds(const Value: Integer);
    function Obj: TReceiveMessageRequest;
    function IsSetAttributeNames: Boolean;
    function IsSetMaxNumberOfMessages: Boolean;
    function IsSetMessageAttributeNames: Boolean;
    function IsSetQueueUrl: Boolean;
    function IsSetReceiveRequestAttemptId: Boolean;
    function IsSetVisibilityTimeout: Boolean;
    function IsSetWaitTimeSeconds: Boolean;
    property AttributeNames: TList<string> read GetAttributeNames write SetAttributeNames;
    property KeepAttributeNames: Boolean read GetKeepAttributeNames write SetKeepAttributeNames;
    property MaxNumberOfMessages: Integer read GetMaxNumberOfMessages write SetMaxNumberOfMessages;
    property MessageAttributeNames: TList<string> read GetMessageAttributeNames write SetMessageAttributeNames;
    property KeepMessageAttributeNames: Boolean read GetKeepMessageAttributeNames write SetKeepMessageAttributeNames;
    property QueueUrl: string read GetQueueUrl write SetQueueUrl;
    property ReceiveRequestAttemptId: string read GetReceiveRequestAttemptId write SetReceiveRequestAttemptId;
    property VisibilityTimeout: Integer read GetVisibilityTimeout write SetVisibilityTimeout;
    property WaitTimeSeconds: Integer read GetWaitTimeSeconds write SetWaitTimeSeconds;
  end;
  
  TReceiveMessageRequest = class(TAmazonSQSRequest, IReceiveMessageRequest)
  strict private
    FAttributeNames: TList<string>;
    FKeepAttributeNames: Boolean;
    FMaxNumberOfMessages: Nullable<Integer>;
    FMessageAttributeNames: TList<string>;
    FKeepMessageAttributeNames: Boolean;
    FQueueUrl: Nullable<string>;
    FReceiveRequestAttemptId: Nullable<string>;
    FVisibilityTimeout: Nullable<Integer>;
    FWaitTimeSeconds: Nullable<Integer>;
    function GetAttributeNames: TList<string>;
    procedure SetAttributeNames(const Value: TList<string>);
    function GetKeepAttributeNames: Boolean;
    procedure SetKeepAttributeNames(const Value: Boolean);
    function GetMaxNumberOfMessages: Integer;
    procedure SetMaxNumberOfMessages(const Value: Integer);
    function GetMessageAttributeNames: TList<string>;
    procedure SetMessageAttributeNames(const Value: TList<string>);
    function GetKeepMessageAttributeNames: Boolean;
    procedure SetKeepMessageAttributeNames(const Value: Boolean);
    function GetQueueUrl: string;
    procedure SetQueueUrl(const Value: string);
    function GetReceiveRequestAttemptId: string;
    procedure SetReceiveRequestAttemptId(const Value: string);
    function GetVisibilityTimeout: Integer;
    procedure SetVisibilityTimeout(const Value: Integer);
    function GetWaitTimeSeconds: Integer;
    procedure SetWaitTimeSeconds(const Value: Integer);
  strict protected
    function Obj: TReceiveMessageRequest;
  public
    constructor Create; overload;
    destructor Destroy; override;
    constructor Create(const AQueueUrl: string); overload;
    function IsSetAttributeNames: Boolean;
    function IsSetMaxNumberOfMessages: Boolean;
    function IsSetMessageAttributeNames: Boolean;
    function IsSetQueueUrl: Boolean;
    function IsSetReceiveRequestAttemptId: Boolean;
    function IsSetVisibilityTimeout: Boolean;
    function IsSetWaitTimeSeconds: Boolean;
    property AttributeNames: TList<string> read GetAttributeNames write SetAttributeNames;
    property KeepAttributeNames: Boolean read GetKeepAttributeNames write SetKeepAttributeNames;
    property MaxNumberOfMessages: Integer read GetMaxNumberOfMessages write SetMaxNumberOfMessages;
    property MessageAttributeNames: TList<string> read GetMessageAttributeNames write SetMessageAttributeNames;
    property KeepMessageAttributeNames: Boolean read GetKeepMessageAttributeNames write SetKeepMessageAttributeNames;
    property QueueUrl: string read GetQueueUrl write SetQueueUrl;
    property ReceiveRequestAttemptId: string read GetReceiveRequestAttemptId write SetReceiveRequestAttemptId;
    property VisibilityTimeout: Integer read GetVisibilityTimeout write SetVisibilityTimeout;
    property WaitTimeSeconds: Integer read GetWaitTimeSeconds write SetWaitTimeSeconds;
  end;
  
implementation

{ TReceiveMessageRequest }

constructor TReceiveMessageRequest.Create;
begin
  inherited;
  FAttributeNames := TList<string>.Create;
  FMessageAttributeNames := TList<string>.Create;
end;

destructor TReceiveMessageRequest.Destroy;
begin
  MessageAttributeNames := nil;
  AttributeNames := nil;
  inherited;
end;

function TReceiveMessageRequest.Obj: TReceiveMessageRequest;
begin
  Result := Self;
end;

constructor TReceiveMessageRequest.Create(const AQueueUrl: string);
begin
  inherited Create;
  QueueUrl := AQueueUrl;
end;

function TReceiveMessageRequest.GetAttributeNames: TList<string>;
begin
  Result := FAttributeNames;
end;

procedure TReceiveMessageRequest.SetAttributeNames(const Value: TList<string>);
begin
  if FAttributeNames <> Value then
  begin
    if not KeepAttributeNames then
      FAttributeNames.Free;
    FAttributeNames := Value;
  end;
end;

function TReceiveMessageRequest.GetKeepAttributeNames: Boolean;
begin
  Result := FKeepAttributeNames;
end;

procedure TReceiveMessageRequest.SetKeepAttributeNames(const Value: Boolean);
begin
  FKeepAttributeNames := Value;
end;

function TReceiveMessageRequest.IsSetAttributeNames: Boolean;
begin
  Result := (FAttributeNames <> nil) and (FAttributeNames.Count > 0);
end;

function TReceiveMessageRequest.GetMaxNumberOfMessages: Integer;
begin
  Result := FMaxNumberOfMessages.ValueOrDefault;
end;

procedure TReceiveMessageRequest.SetMaxNumberOfMessages(const Value: Integer);
begin
  FMaxNumberOfMessages := Value;
end;

function TReceiveMessageRequest.IsSetMaxNumberOfMessages: Boolean;
begin
  Result := FMaxNumberOfMessages.HasValue;
end;

function TReceiveMessageRequest.GetMessageAttributeNames: TList<string>;
begin
  Result := FMessageAttributeNames;
end;

procedure TReceiveMessageRequest.SetMessageAttributeNames(const Value: TList<string>);
begin
  if FMessageAttributeNames <> Value then
  begin
    if not KeepMessageAttributeNames then
      FMessageAttributeNames.Free;
    FMessageAttributeNames := Value;
  end;
end;

function TReceiveMessageRequest.GetKeepMessageAttributeNames: Boolean;
begin
  Result := FKeepMessageAttributeNames;
end;

procedure TReceiveMessageRequest.SetKeepMessageAttributeNames(const Value: Boolean);
begin
  FKeepMessageAttributeNames := Value;
end;

function TReceiveMessageRequest.IsSetMessageAttributeNames: Boolean;
begin
  Result := (FMessageAttributeNames <> nil) and (FMessageAttributeNames.Count > 0);
end;

function TReceiveMessageRequest.GetQueueUrl: string;
begin
  Result := FQueueUrl.ValueOrDefault;
end;

procedure TReceiveMessageRequest.SetQueueUrl(const Value: string);
begin
  FQueueUrl := Value;
end;

function TReceiveMessageRequest.IsSetQueueUrl: Boolean;
begin
  Result := FQueueUrl.HasValue;
end;

function TReceiveMessageRequest.GetReceiveRequestAttemptId: string;
begin
  Result := FReceiveRequestAttemptId.ValueOrDefault;
end;

procedure TReceiveMessageRequest.SetReceiveRequestAttemptId(const Value: string);
begin
  FReceiveRequestAttemptId := Value;
end;

function TReceiveMessageRequest.IsSetReceiveRequestAttemptId: Boolean;
begin
  Result := FReceiveRequestAttemptId.HasValue;
end;

function TReceiveMessageRequest.GetVisibilityTimeout: Integer;
begin
  Result := FVisibilityTimeout.ValueOrDefault;
end;

procedure TReceiveMessageRequest.SetVisibilityTimeout(const Value: Integer);
begin
  FVisibilityTimeout := Value;
end;

function TReceiveMessageRequest.IsSetVisibilityTimeout: Boolean;
begin
  Result := FVisibilityTimeout.HasValue;
end;

function TReceiveMessageRequest.GetWaitTimeSeconds: Integer;
begin
  Result := FWaitTimeSeconds.ValueOrDefault;
end;

procedure TReceiveMessageRequest.SetWaitTimeSeconds(const Value: Integer);
begin
  FWaitTimeSeconds := Value;
end;

function TReceiveMessageRequest.IsSetWaitTimeSeconds: Boolean;
begin
  Result := FWaitTimeSeconds.HasValue;
end;

end.
