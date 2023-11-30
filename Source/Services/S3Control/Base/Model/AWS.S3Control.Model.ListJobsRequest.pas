unit AWS.S3Control.Model.ListJobsRequest;

interface

uses
  System.Generics.Collections, 
  AWS.S3Control.Model.Request, 
  AWS.Nullable;

type
  TListJobsRequest = class;
  
  IListJobsRequest = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetJobStatuses: TList<string>;
    procedure SetJobStatuses(const Value: TList<string>);
    function GetKeepJobStatuses: Boolean;
    procedure SetKeepJobStatuses(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListJobsRequest;
    function IsSetAccountId: Boolean;
    function IsSetJobStatuses: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property JobStatuses: TList<string> read GetJobStatuses write SetJobStatuses;
    property KeepJobStatuses: Boolean read GetKeepJobStatuses write SetKeepJobStatuses;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListJobsRequest = class(TAmazonS3ControlRequest, IListJobsRequest)
  strict private
    FAccountId: Nullable<string>;
    FJobStatuses: TList<string>;
    FKeepJobStatuses: Boolean;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetJobStatuses: TList<string>;
    procedure SetJobStatuses(const Value: TList<string>);
    function GetKeepJobStatuses: Boolean;
    procedure SetKeepJobStatuses(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListJobsRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAccountId: Boolean;
    function IsSetJobStatuses: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property JobStatuses: TList<string> read GetJobStatuses write SetJobStatuses;
    property KeepJobStatuses: Boolean read GetKeepJobStatuses write SetKeepJobStatuses;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListJobsRequest }

constructor TListJobsRequest.Create;
begin
  inherited;
  FJobStatuses := TList<string>.Create;
end;

destructor TListJobsRequest.Destroy;
begin
  JobStatuses := nil;
  inherited;
end;

function TListJobsRequest.Obj: TListJobsRequest;
begin
  Result := Self;
end;

function TListJobsRequest.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TListJobsRequest.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TListJobsRequest.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

function TListJobsRequest.GetJobStatuses: TList<string>;
begin
  Result := FJobStatuses;
end;

procedure TListJobsRequest.SetJobStatuses(const Value: TList<string>);
begin
  if FJobStatuses <> Value then
  begin
    if not KeepJobStatuses then
      FJobStatuses.Free;
    FJobStatuses := Value;
  end;
end;

function TListJobsRequest.GetKeepJobStatuses: Boolean;
begin
  Result := FKeepJobStatuses;
end;

procedure TListJobsRequest.SetKeepJobStatuses(const Value: Boolean);
begin
  FKeepJobStatuses := Value;
end;

function TListJobsRequest.IsSetJobStatuses: Boolean;
begin
  Result := (FJobStatuses <> nil) and (FJobStatuses.Count > 0);
end;

function TListJobsRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TListJobsRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TListJobsRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TListJobsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListJobsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListJobsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
