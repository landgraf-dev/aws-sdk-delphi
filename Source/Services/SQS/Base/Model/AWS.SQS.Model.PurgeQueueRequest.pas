unit AWS.SQS.Model.PurgeQueueRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SQS.Model.Request;

type
  TPurgeQueueRequest = class;
  
  IPurgeQueueRequest = interface
    function GetQueueUrl: string;
    procedure SetQueueUrl(const Value: string);
    function Obj: TPurgeQueueRequest;
    function IsSetQueueUrl: Boolean;
    property QueueUrl: string read GetQueueUrl write SetQueueUrl;
  end;
  
  TPurgeQueueRequest = class(TAmazonSQSRequest, IPurgeQueueRequest)
  strict private
    FQueueUrl: Nullable<string>;
    function GetQueueUrl: string;
    procedure SetQueueUrl(const Value: string);
  strict protected
    function Obj: TPurgeQueueRequest;
  public
    function IsSetQueueUrl: Boolean;
    property QueueUrl: string read GetQueueUrl write SetQueueUrl;
  end;
  
implementation

{ TPurgeQueueRequest }

function TPurgeQueueRequest.Obj: TPurgeQueueRequest;
begin
  Result := Self;
end;

function TPurgeQueueRequest.GetQueueUrl: string;
begin
  Result := FQueueUrl.ValueOrDefault;
end;

procedure TPurgeQueueRequest.SetQueueUrl(const Value: string);
begin
  FQueueUrl := Value;
end;

function TPurgeQueueRequest.IsSetQueueUrl: Boolean;
begin
  Result := FQueueUrl.HasValue;
end;

end.
