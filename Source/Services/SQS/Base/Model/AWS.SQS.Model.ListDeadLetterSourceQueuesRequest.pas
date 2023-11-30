unit AWS.SQS.Model.ListDeadLetterSourceQueuesRequest;

interface

uses
  AWS.SQS.Model.Request, 
  AWS.Nullable;

type
  TListDeadLetterSourceQueuesRequest = class;
  
  IListDeadLetterSourceQueuesRequest = interface
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetQueueUrl: string;
    procedure SetQueueUrl(const Value: string);
    function Obj: TListDeadLetterSourceQueuesRequest;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetQueueUrl: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property QueueUrl: string read GetQueueUrl write SetQueueUrl;
  end;
  
  TListDeadLetterSourceQueuesRequest = class(TAmazonSQSRequest, IListDeadLetterSourceQueuesRequest)
  strict private
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    FQueueUrl: Nullable<string>;
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetQueueUrl: string;
    procedure SetQueueUrl(const Value: string);
  strict protected
    function Obj: TListDeadLetterSourceQueuesRequest;
  public
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetQueueUrl: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property QueueUrl: string read GetQueueUrl write SetQueueUrl;
  end;
  
implementation

{ TListDeadLetterSourceQueuesRequest }

function TListDeadLetterSourceQueuesRequest.Obj: TListDeadLetterSourceQueuesRequest;
begin
  Result := Self;
end;

function TListDeadLetterSourceQueuesRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TListDeadLetterSourceQueuesRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TListDeadLetterSourceQueuesRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TListDeadLetterSourceQueuesRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListDeadLetterSourceQueuesRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListDeadLetterSourceQueuesRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListDeadLetterSourceQueuesRequest.GetQueueUrl: string;
begin
  Result := FQueueUrl.ValueOrDefault;
end;

procedure TListDeadLetterSourceQueuesRequest.SetQueueUrl(const Value: string);
begin
  FQueueUrl := Value;
end;

function TListDeadLetterSourceQueuesRequest.IsSetQueueUrl: Boolean;
begin
  Result := FQueueUrl.HasValue;
end;

end.
