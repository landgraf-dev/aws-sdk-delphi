unit AWS.SSM.Model.DescribeActivationsRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.SSM.Model.DescribeActivationsFilter, 
  AWS.Nullable;

type
  TDescribeActivationsRequest = class;
  
  IDescribeActivationsRequest = interface
    function GetFilters: TObjectList<TDescribeActivationsFilter>;
    procedure SetFilters(const Value: TObjectList<TDescribeActivationsFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TDescribeActivationsRequest;
    function IsSetFilters: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property Filters: TObjectList<TDescribeActivationsFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TDescribeActivationsRequest = class(TAmazonSimpleSystemsManagementRequest, IDescribeActivationsRequest)
  strict private
    FFilters: TObjectList<TDescribeActivationsFilter>;
    FKeepFilters: Boolean;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    function GetFilters: TObjectList<TDescribeActivationsFilter>;
    procedure SetFilters(const Value: TObjectList<TDescribeActivationsFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TDescribeActivationsRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetFilters: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property Filters: TObjectList<TDescribeActivationsFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TDescribeActivationsRequest }

constructor TDescribeActivationsRequest.Create;
begin
  inherited;
  FFilters := TObjectList<TDescribeActivationsFilter>.Create;
end;

destructor TDescribeActivationsRequest.Destroy;
begin
  Filters := nil;
  inherited;
end;

function TDescribeActivationsRequest.Obj: TDescribeActivationsRequest;
begin
  Result := Self;
end;

function TDescribeActivationsRequest.GetFilters: TObjectList<TDescribeActivationsFilter>;
begin
  Result := FFilters;
end;

procedure TDescribeActivationsRequest.SetFilters(const Value: TObjectList<TDescribeActivationsFilter>);
begin
  if FFilters <> Value then
  begin
    if not KeepFilters then
      FFilters.Free;
    FFilters := Value;
  end;
end;

function TDescribeActivationsRequest.GetKeepFilters: Boolean;
begin
  Result := FKeepFilters;
end;

procedure TDescribeActivationsRequest.SetKeepFilters(const Value: Boolean);
begin
  FKeepFilters := Value;
end;

function TDescribeActivationsRequest.IsSetFilters: Boolean;
begin
  Result := (FFilters <> nil) and (FFilters.Count > 0);
end;

function TDescribeActivationsRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TDescribeActivationsRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TDescribeActivationsRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TDescribeActivationsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeActivationsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeActivationsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
