unit AWS.SQS.Model.ListQueuesRequest;

interface

uses
  AWS.SQS.Model.Request, 
  AWS.Nullable;

type
  TListQueuesRequest = class;
  
  IListQueuesRequest = interface
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetQueueNamePrefix: string;
    procedure SetQueueNamePrefix(const Value: string);
    function Obj: TListQueuesRequest;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetQueueNamePrefix: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property QueueNamePrefix: string read GetQueueNamePrefix write SetQueueNamePrefix;
  end;
  
  TListQueuesRequest = class(TAmazonSQSRequest, IListQueuesRequest)
  strict private
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    FQueueNamePrefix: Nullable<string>;
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetQueueNamePrefix: string;
    procedure SetQueueNamePrefix(const Value: string);
  strict protected
    function Obj: TListQueuesRequest;
  public
    constructor Create(const AQueueNamePrefix: string); overload;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetQueueNamePrefix: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property QueueNamePrefix: string read GetQueueNamePrefix write SetQueueNamePrefix;
  end;
  
implementation

{ TListQueuesRequest }

function TListQueuesRequest.Obj: TListQueuesRequest;
begin
  Result := Self;
end;

constructor TListQueuesRequest.Create(const AQueueNamePrefix: string);
begin
  Create;
  QueueNamePrefix := AQueueNamePrefix;
end;

function TListQueuesRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TListQueuesRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TListQueuesRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TListQueuesRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListQueuesRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListQueuesRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListQueuesRequest.GetQueueNamePrefix: string;
begin
  Result := FQueueNamePrefix.ValueOrDefault;
end;

procedure TListQueuesRequest.SetQueueNamePrefix(const Value: string);
begin
  FQueueNamePrefix := Value;
end;

function TListQueuesRequest.IsSetQueueNamePrefix: Boolean;
begin
  Result := FQueueNamePrefix.HasValue;
end;

end.
