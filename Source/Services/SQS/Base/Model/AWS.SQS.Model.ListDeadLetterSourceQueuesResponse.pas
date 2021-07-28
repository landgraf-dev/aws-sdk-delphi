unit AWS.SQS.Model.ListDeadLetterSourceQueuesResponse;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Runtime.Model;

type
  TListDeadLetterSourceQueuesResponse = class;
  
  IListDeadLetterSourceQueuesResponse = interface
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetQueueUrls: TList<string>;
    procedure SetQueueUrls(const Value: TList<string>);
    function Obj: TListDeadLetterSourceQueuesResponse;
    function IsSetNextToken: Boolean;
    function IsSetQueueUrls: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property QueueUrls: TList<string> read GetQueueUrls write SetQueueUrls;
  end;
  
  TListDeadLetterSourceQueuesResponse = class(TAmazonWebServiceResponse, IListDeadLetterSourceQueuesResponse)
  strict private
    FNextToken: Nullable<string>;
    FQueueUrls: TList<string>;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetQueueUrls: TList<string>;
    procedure SetQueueUrls(const Value: TList<string>);
  strict protected
    function Obj: TListDeadLetterSourceQueuesResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetQueueUrls: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property QueueUrls: TList<string> read GetQueueUrls write SetQueueUrls;
  end;
  
implementation

{ TListDeadLetterSourceQueuesResponse }

constructor TListDeadLetterSourceQueuesResponse.Create;
begin
  inherited;
  FQueueUrls := TList<string>.Create;
end;

destructor TListDeadLetterSourceQueuesResponse.Destroy;
begin
  FQueueUrls.Free;
  inherited;
end;

function TListDeadLetterSourceQueuesResponse.Obj: TListDeadLetterSourceQueuesResponse;
begin
  Result := Self;
end;

function TListDeadLetterSourceQueuesResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListDeadLetterSourceQueuesResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListDeadLetterSourceQueuesResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListDeadLetterSourceQueuesResponse.GetQueueUrls: TList<string>;
begin
  Result := FQueueUrls;
end;

procedure TListDeadLetterSourceQueuesResponse.SetQueueUrls(const Value: TList<string>);
begin
  if FQueueUrls <> Value then
  begin
    FQueueUrls.Free;
    FQueueUrls := Value;
  end;
end;

function TListDeadLetterSourceQueuesResponse.IsSetQueueUrls: Boolean;
begin
  Result := (FQueueUrls <> nil) and (FQueueUrls.Count > 0);
end;

end.
