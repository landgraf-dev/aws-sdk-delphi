unit AWS.SQS.Model.GetQueueUrlRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SQS.Model.Request;

type
  TGetQueueUrlRequest = class;
  
  IGetQueueUrlRequest = interface
    function GetQueueName: string;
    procedure SetQueueName(const Value: string);
    function GetQueueOwnerAWSAccountId: string;
    procedure SetQueueOwnerAWSAccountId(const Value: string);
    function Obj: TGetQueueUrlRequest;
    function IsSetQueueName: Boolean;
    function IsSetQueueOwnerAWSAccountId: Boolean;
    property QueueName: string read GetQueueName write SetQueueName;
    property QueueOwnerAWSAccountId: string read GetQueueOwnerAWSAccountId write SetQueueOwnerAWSAccountId;
  end;
  
  TGetQueueUrlRequest = class(TAmazonSQSRequest, IGetQueueUrlRequest)
  strict private
    FQueueName: Nullable<string>;
    FQueueOwnerAWSAccountId: Nullable<string>;
    function GetQueueName: string;
    procedure SetQueueName(const Value: string);
    function GetQueueOwnerAWSAccountId: string;
    procedure SetQueueOwnerAWSAccountId(const Value: string);
  strict protected
    function Obj: TGetQueueUrlRequest;
  public
    constructor Create(const AQueueName: string); overload;
    function IsSetQueueName: Boolean;
    function IsSetQueueOwnerAWSAccountId: Boolean;
    property QueueName: string read GetQueueName write SetQueueName;
    property QueueOwnerAWSAccountId: string read GetQueueOwnerAWSAccountId write SetQueueOwnerAWSAccountId;
  end;
  
implementation

{ TGetQueueUrlRequest }

function TGetQueueUrlRequest.Obj: TGetQueueUrlRequest;
begin
  Result := Self;
end;

constructor TGetQueueUrlRequest.Create(const AQueueName: string);
begin
  inherited Create;
  QueueName := AQueueName;
end;

function TGetQueueUrlRequest.GetQueueName: string;
begin
  Result := FQueueName.ValueOrDefault;
end;

procedure TGetQueueUrlRequest.SetQueueName(const Value: string);
begin
  FQueueName := Value;
end;

function TGetQueueUrlRequest.IsSetQueueName: Boolean;
begin
  Result := FQueueName.HasValue;
end;

function TGetQueueUrlRequest.GetQueueOwnerAWSAccountId: string;
begin
  Result := FQueueOwnerAWSAccountId.ValueOrDefault;
end;

procedure TGetQueueUrlRequest.SetQueueOwnerAWSAccountId(const Value: string);
begin
  FQueueOwnerAWSAccountId := Value;
end;

function TGetQueueUrlRequest.IsSetQueueOwnerAWSAccountId: Boolean;
begin
  Result := FQueueOwnerAWSAccountId.HasValue;
end;

end.
