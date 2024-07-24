unit AWS.SSM.Model.DescribeAutomationExecutionsRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.SSM.Model.AutomationExecutionFilter, 
  AWS.Nullable;

type
  TDescribeAutomationExecutionsRequest = class;
  
  IDescribeAutomationExecutionsRequest = interface
    function GetFilters: TObjectList<TAutomationExecutionFilter>;
    procedure SetFilters(const Value: TObjectList<TAutomationExecutionFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TDescribeAutomationExecutionsRequest;
    function IsSetFilters: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property Filters: TObjectList<TAutomationExecutionFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TDescribeAutomationExecutionsRequest = class(TAmazonSimpleSystemsManagementRequest, IDescribeAutomationExecutionsRequest)
  strict private
    FFilters: TObjectList<TAutomationExecutionFilter>;
    FKeepFilters: Boolean;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    function GetFilters: TObjectList<TAutomationExecutionFilter>;
    procedure SetFilters(const Value: TObjectList<TAutomationExecutionFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TDescribeAutomationExecutionsRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetFilters: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property Filters: TObjectList<TAutomationExecutionFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TDescribeAutomationExecutionsRequest }

constructor TDescribeAutomationExecutionsRequest.Create;
begin
  inherited;
  FFilters := TObjectList<TAutomationExecutionFilter>.Create;
end;

destructor TDescribeAutomationExecutionsRequest.Destroy;
begin
  Filters := nil;
  inherited;
end;

function TDescribeAutomationExecutionsRequest.Obj: TDescribeAutomationExecutionsRequest;
begin
  Result := Self;
end;

function TDescribeAutomationExecutionsRequest.GetFilters: TObjectList<TAutomationExecutionFilter>;
begin
  Result := FFilters;
end;

procedure TDescribeAutomationExecutionsRequest.SetFilters(const Value: TObjectList<TAutomationExecutionFilter>);
begin
  if FFilters <> Value then
  begin
    if not KeepFilters then
      FFilters.Free;
    FFilters := Value;
  end;
end;

function TDescribeAutomationExecutionsRequest.GetKeepFilters: Boolean;
begin
  Result := FKeepFilters;
end;

procedure TDescribeAutomationExecutionsRequest.SetKeepFilters(const Value: Boolean);
begin
  FKeepFilters := Value;
end;

function TDescribeAutomationExecutionsRequest.IsSetFilters: Boolean;
begin
  Result := (FFilters <> nil) and (FFilters.Count > 0);
end;

function TDescribeAutomationExecutionsRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TDescribeAutomationExecutionsRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TDescribeAutomationExecutionsRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TDescribeAutomationExecutionsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeAutomationExecutionsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeAutomationExecutionsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
