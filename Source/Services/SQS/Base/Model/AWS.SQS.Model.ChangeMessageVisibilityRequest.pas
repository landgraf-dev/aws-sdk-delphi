unit AWS.SQS.Model.ChangeMessageVisibilityRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SQS.Model.Request;

type
  TChangeMessageVisibilityRequest = class;
  
  IChangeMessageVisibilityRequest = interface
    function GetQueueUrl: string;
    procedure SetQueueUrl(const Value: string);
    function GetReceiptHandle: string;
    procedure SetReceiptHandle(const Value: string);
    function GetVisibilityTimeout: Integer;
    procedure SetVisibilityTimeout(const Value: Integer);
    function Obj: TChangeMessageVisibilityRequest;
    function IsSetQueueUrl: Boolean;
    function IsSetReceiptHandle: Boolean;
    function IsSetVisibilityTimeout: Boolean;
    property QueueUrl: string read GetQueueUrl write SetQueueUrl;
    property ReceiptHandle: string read GetReceiptHandle write SetReceiptHandle;
    property VisibilityTimeout: Integer read GetVisibilityTimeout write SetVisibilityTimeout;
  end;
  
  TChangeMessageVisibilityRequest = class(TAmazonSQSRequest, IChangeMessageVisibilityRequest)
  strict private
    FQueueUrl: Nullable<string>;
    FReceiptHandle: Nullable<string>;
    FVisibilityTimeout: Nullable<Integer>;
    function GetQueueUrl: string;
    procedure SetQueueUrl(const Value: string);
    function GetReceiptHandle: string;
    procedure SetReceiptHandle(const Value: string);
    function GetVisibilityTimeout: Integer;
    procedure SetVisibilityTimeout(const Value: Integer);
  strict protected
    function Obj: TChangeMessageVisibilityRequest;
  public
    constructor Create(const AQueueUrl: string; const AReceiptHandle: string; const AVisibilityTimeout: Integer); overload;
    function IsSetQueueUrl: Boolean;
    function IsSetReceiptHandle: Boolean;
    function IsSetVisibilityTimeout: Boolean;
    property QueueUrl: string read GetQueueUrl write SetQueueUrl;
    property ReceiptHandle: string read GetReceiptHandle write SetReceiptHandle;
    property VisibilityTimeout: Integer read GetVisibilityTimeout write SetVisibilityTimeout;
  end;
  
implementation

{ TChangeMessageVisibilityRequest }

function TChangeMessageVisibilityRequest.Obj: TChangeMessageVisibilityRequest;
begin
  Result := Self;
end;

constructor TChangeMessageVisibilityRequest.Create(const AQueueUrl: string; const AReceiptHandle: string; const AVisibilityTimeout: Integer);
begin
  inherited Create;
  QueueUrl := AQueueUrl;
  ReceiptHandle := AReceiptHandle;
  VisibilityTimeout := AVisibilityTimeout;
end;

function TChangeMessageVisibilityRequest.GetQueueUrl: string;
begin
  Result := FQueueUrl.ValueOrDefault;
end;

procedure TChangeMessageVisibilityRequest.SetQueueUrl(const Value: string);
begin
  FQueueUrl := Value;
end;

function TChangeMessageVisibilityRequest.IsSetQueueUrl: Boolean;
begin
  Result := FQueueUrl.HasValue;
end;

function TChangeMessageVisibilityRequest.GetReceiptHandle: string;
begin
  Result := FReceiptHandle.ValueOrDefault;
end;

procedure TChangeMessageVisibilityRequest.SetReceiptHandle(const Value: string);
begin
  FReceiptHandle := Value;
end;

function TChangeMessageVisibilityRequest.IsSetReceiptHandle: Boolean;
begin
  Result := FReceiptHandle.HasValue;
end;

function TChangeMessageVisibilityRequest.GetVisibilityTimeout: Integer;
begin
  Result := FVisibilityTimeout.ValueOrDefault;
end;

procedure TChangeMessageVisibilityRequest.SetVisibilityTimeout(const Value: Integer);
begin
  FVisibilityTimeout := Value;
end;

function TChangeMessageVisibilityRequest.IsSetVisibilityTimeout: Boolean;
begin
  Result := FVisibilityTimeout.HasValue;
end;

end.
