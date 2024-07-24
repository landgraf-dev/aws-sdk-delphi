unit AWS.SSM.Model.DescribeOpsItemsRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.Nullable, 
  AWS.SSM.Model.OpsItemFilter;

type
  TDescribeOpsItemsRequest = class;
  
  IDescribeOpsItemsRequest = interface
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetOpsItemFilters: TObjectList<TOpsItemFilter>;
    procedure SetOpsItemFilters(const Value: TObjectList<TOpsItemFilter>);
    function GetKeepOpsItemFilters: Boolean;
    procedure SetKeepOpsItemFilters(const Value: Boolean);
    function Obj: TDescribeOpsItemsRequest;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetOpsItemFilters: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property OpsItemFilters: TObjectList<TOpsItemFilter> read GetOpsItemFilters write SetOpsItemFilters;
    property KeepOpsItemFilters: Boolean read GetKeepOpsItemFilters write SetKeepOpsItemFilters;
  end;
  
  TDescribeOpsItemsRequest = class(TAmazonSimpleSystemsManagementRequest, IDescribeOpsItemsRequest)
  strict private
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    FOpsItemFilters: TObjectList<TOpsItemFilter>;
    FKeepOpsItemFilters: Boolean;
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetOpsItemFilters: TObjectList<TOpsItemFilter>;
    procedure SetOpsItemFilters(const Value: TObjectList<TOpsItemFilter>);
    function GetKeepOpsItemFilters: Boolean;
    procedure SetKeepOpsItemFilters(const Value: Boolean);
  strict protected
    function Obj: TDescribeOpsItemsRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetOpsItemFilters: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property OpsItemFilters: TObjectList<TOpsItemFilter> read GetOpsItemFilters write SetOpsItemFilters;
    property KeepOpsItemFilters: Boolean read GetKeepOpsItemFilters write SetKeepOpsItemFilters;
  end;
  
implementation

{ TDescribeOpsItemsRequest }

constructor TDescribeOpsItemsRequest.Create;
begin
  inherited;
  FOpsItemFilters := TObjectList<TOpsItemFilter>.Create;
end;

destructor TDescribeOpsItemsRequest.Destroy;
begin
  OpsItemFilters := nil;
  inherited;
end;

function TDescribeOpsItemsRequest.Obj: TDescribeOpsItemsRequest;
begin
  Result := Self;
end;

function TDescribeOpsItemsRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TDescribeOpsItemsRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TDescribeOpsItemsRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TDescribeOpsItemsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeOpsItemsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeOpsItemsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TDescribeOpsItemsRequest.GetOpsItemFilters: TObjectList<TOpsItemFilter>;
begin
  Result := FOpsItemFilters;
end;

procedure TDescribeOpsItemsRequest.SetOpsItemFilters(const Value: TObjectList<TOpsItemFilter>);
begin
  if FOpsItemFilters <> Value then
  begin
    if not KeepOpsItemFilters then
      FOpsItemFilters.Free;
    FOpsItemFilters := Value;
  end;
end;

function TDescribeOpsItemsRequest.GetKeepOpsItemFilters: Boolean;
begin
  Result := FKeepOpsItemFilters;
end;

procedure TDescribeOpsItemsRequest.SetKeepOpsItemFilters(const Value: Boolean);
begin
  FKeepOpsItemFilters := Value;
end;

function TDescribeOpsItemsRequest.IsSetOpsItemFilters: Boolean;
begin
  Result := (FOpsItemFilters <> nil) and (FOpsItemFilters.Count > 0);
end;

end.
