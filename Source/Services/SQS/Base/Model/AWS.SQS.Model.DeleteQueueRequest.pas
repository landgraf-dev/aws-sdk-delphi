unit AWS.SQS.Model.DeleteQueueRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SQS.Model.Request;

type
  TDeleteQueueRequest = class;
  
  IDeleteQueueRequest = interface
    function GetQueueUrl: string;
    procedure SetQueueUrl(const Value: string);
    function Obj: TDeleteQueueRequest;
    function IsSetQueueUrl: Boolean;
    property QueueUrl: string read GetQueueUrl write SetQueueUrl;
  end;
  
  TDeleteQueueRequest = class(TAmazonSQSRequest, IDeleteQueueRequest)
  strict private
    FQueueUrl: Nullable<string>;
    function GetQueueUrl: string;
    procedure SetQueueUrl(const Value: string);
  strict protected
    function Obj: TDeleteQueueRequest;
  public
    constructor Create(const AQueueUrl: string); overload;
    function IsSetQueueUrl: Boolean;
    property QueueUrl: string read GetQueueUrl write SetQueueUrl;
  end;
  
implementation

{ TDeleteQueueRequest }

function TDeleteQueueRequest.Obj: TDeleteQueueRequest;
begin
  Result := Self;
end;

constructor TDeleteQueueRequest.Create(const AQueueUrl: string);
begin
  inherited Create;
  QueueUrl := AQueueUrl;
end;

function TDeleteQueueRequest.GetQueueUrl: string;
begin
  Result := FQueueUrl.ValueOrDefault;
end;

procedure TDeleteQueueRequest.SetQueueUrl(const Value: string);
begin
  FQueueUrl := Value;
end;

function TDeleteQueueRequest.IsSetQueueUrl: Boolean;
begin
  Result := FQueueUrl.HasValue;
end;

end.
