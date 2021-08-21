unit AWS.SQS.Model.ListQueuesResponse;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Runtime.Model;

type
  TListQueuesResponse = class;
  
  IListQueuesResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetQueueUrls: TList<string>;
    procedure SetQueueUrls(const Value: TList<string>);
    function Obj: TListQueuesResponse;
    function IsSetNextToken: Boolean;
    function IsSetQueueUrls: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property QueueUrls: TList<string> read GetQueueUrls write SetQueueUrls;
  end;
  
  TListQueuesResponse = class(TAmazonWebServiceResponse, IListQueuesResponse)
  strict private
    FNextToken: Nullable<string>;
    FQueueUrls: TList<string>;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetQueueUrls: TList<string>;
    procedure SetQueueUrls(const Value: TList<string>);
  strict protected
    function Obj: TListQueuesResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetQueueUrls: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property QueueUrls: TList<string> read GetQueueUrls write SetQueueUrls;
  end;
  
implementation

{ TListQueuesResponse }

constructor TListQueuesResponse.Create;
begin
  inherited;
  FQueueUrls := TList<string>.Create;
end;

destructor TListQueuesResponse.Destroy;
begin
  QueueUrls := nil;
  inherited;
end;

function TListQueuesResponse.Obj: TListQueuesResponse;
begin
  Result := Self;
end;

function TListQueuesResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListQueuesResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListQueuesResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListQueuesResponse.GetQueueUrls: TList<string>;
begin
  Result := FQueueUrls;
end;

procedure TListQueuesResponse.SetQueueUrls(const Value: TList<string>);
begin
  if FQueueUrls <> Value then
  begin
    FQueueUrls.Free;
    FQueueUrls := Value;
  end;
end;

function TListQueuesResponse.IsSetQueueUrls: Boolean;
begin
  Result := (FQueueUrls <> nil) and (FQueueUrls.Count > 0);
end;

end.
