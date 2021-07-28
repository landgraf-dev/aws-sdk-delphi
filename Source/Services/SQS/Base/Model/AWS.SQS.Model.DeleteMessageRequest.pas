unit AWS.SQS.Model.DeleteMessageRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SQS.Model.Request;

type
  TDeleteMessageRequest = class;
  
  IDeleteMessageRequest = interface
    function GetQueueUrl: string;
    procedure SetQueueUrl(const Value: string);
    function GetReceiptHandle: string;
    procedure SetReceiptHandle(const Value: string);
    function Obj: TDeleteMessageRequest;
    function IsSetQueueUrl: Boolean;
    function IsSetReceiptHandle: Boolean;
    property QueueUrl: string read GetQueueUrl write SetQueueUrl;
    property ReceiptHandle: string read GetReceiptHandle write SetReceiptHandle;
  end;
  
  TDeleteMessageRequest = class(TAmazonSQSRequest, IDeleteMessageRequest)
  strict private
    FQueueUrl: Nullable<string>;
    FReceiptHandle: Nullable<string>;
    function GetQueueUrl: string;
    procedure SetQueueUrl(const Value: string);
    function GetReceiptHandle: string;
    procedure SetReceiptHandle(const Value: string);
  strict protected
    function Obj: TDeleteMessageRequest;
  public
    constructor Create(const AQueueUrl: string; const AReceiptHandle: string); overload;
    function IsSetQueueUrl: Boolean;
    function IsSetReceiptHandle: Boolean;
    property QueueUrl: string read GetQueueUrl write SetQueueUrl;
    property ReceiptHandle: string read GetReceiptHandle write SetReceiptHandle;
  end;
  
implementation

{ TDeleteMessageRequest }

function TDeleteMessageRequest.Obj: TDeleteMessageRequest;
begin
  Result := Self;
end;

constructor TDeleteMessageRequest.Create(const AQueueUrl: string; const AReceiptHandle: string);
begin
  inherited Create;
  QueueUrl := AQueueUrl;
  ReceiptHandle := AReceiptHandle;
end;

function TDeleteMessageRequest.GetQueueUrl: string;
begin
  Result := FQueueUrl.ValueOrDefault;
end;

procedure TDeleteMessageRequest.SetQueueUrl(const Value: string);
begin
  FQueueUrl := Value;
end;

function TDeleteMessageRequest.IsSetQueueUrl: Boolean;
begin
  Result := FQueueUrl.HasValue;
end;

function TDeleteMessageRequest.GetReceiptHandle: string;
begin
  Result := FReceiptHandle.ValueOrDefault;
end;

procedure TDeleteMessageRequest.SetReceiptHandle(const Value: string);
begin
  FReceiptHandle := Value;
end;

function TDeleteMessageRequest.IsSetReceiptHandle: Boolean;
begin
  Result := FReceiptHandle.HasValue;
end;

end.
