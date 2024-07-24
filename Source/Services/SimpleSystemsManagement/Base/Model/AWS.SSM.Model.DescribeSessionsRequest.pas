unit AWS.SSM.Model.DescribeSessionsRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.SSM.Model.SessionFilter, 
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TDescribeSessionsRequest = class;
  
  IDescribeSessionsRequest = interface
    function GetFilters: TObjectList<TSessionFilter>;
    procedure SetFilters(const Value: TObjectList<TSessionFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetState: TSessionState;
    procedure SetState(const Value: TSessionState);
    function Obj: TDescribeSessionsRequest;
    function IsSetFilters: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetState: Boolean;
    property Filters: TObjectList<TSessionFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property State: TSessionState read GetState write SetState;
  end;
  
  TDescribeSessionsRequest = class(TAmazonSimpleSystemsManagementRequest, IDescribeSessionsRequest)
  strict private
    FFilters: TObjectList<TSessionFilter>;
    FKeepFilters: Boolean;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    FState: Nullable<TSessionState>;
    function GetFilters: TObjectList<TSessionFilter>;
    procedure SetFilters(const Value: TObjectList<TSessionFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetState: TSessionState;
    procedure SetState(const Value: TSessionState);
  strict protected
    function Obj: TDescribeSessionsRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetFilters: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetState: Boolean;
    property Filters: TObjectList<TSessionFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property State: TSessionState read GetState write SetState;
  end;
  
implementation

{ TDescribeSessionsRequest }

constructor TDescribeSessionsRequest.Create;
begin
  inherited;
  FFilters := TObjectList<TSessionFilter>.Create;
end;

destructor TDescribeSessionsRequest.Destroy;
begin
  Filters := nil;
  inherited;
end;

function TDescribeSessionsRequest.Obj: TDescribeSessionsRequest;
begin
  Result := Self;
end;

function TDescribeSessionsRequest.GetFilters: TObjectList<TSessionFilter>;
begin
  Result := FFilters;
end;

procedure TDescribeSessionsRequest.SetFilters(const Value: TObjectList<TSessionFilter>);
begin
  if FFilters <> Value then
  begin
    if not KeepFilters then
      FFilters.Free;
    FFilters := Value;
  end;
end;

function TDescribeSessionsRequest.GetKeepFilters: Boolean;
begin
  Result := FKeepFilters;
end;

procedure TDescribeSessionsRequest.SetKeepFilters(const Value: Boolean);
begin
  FKeepFilters := Value;
end;

function TDescribeSessionsRequest.IsSetFilters: Boolean;
begin
  Result := (FFilters <> nil) and (FFilters.Count > 0);
end;

function TDescribeSessionsRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TDescribeSessionsRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TDescribeSessionsRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TDescribeSessionsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeSessionsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeSessionsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TDescribeSessionsRequest.GetState: TSessionState;
begin
  Result := FState.ValueOrDefault;
end;

procedure TDescribeSessionsRequest.SetState(const Value: TSessionState);
begin
  FState := Value;
end;

function TDescribeSessionsRequest.IsSetState: Boolean;
begin
  Result := FState.HasValue;
end;

end.
