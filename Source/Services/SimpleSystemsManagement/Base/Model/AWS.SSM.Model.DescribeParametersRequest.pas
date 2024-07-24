unit AWS.SSM.Model.DescribeParametersRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.SSM.Model.ParametersFilter, 
  AWS.Nullable, 
  AWS.SSM.Model.ParameterStringFilter;

type
  TDescribeParametersRequest = class;
  
  IDescribeParametersRequest = interface
    function GetFilters: TObjectList<TParametersFilter>;
    procedure SetFilters(const Value: TObjectList<TParametersFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetParameterFilters: TObjectList<TParameterStringFilter>;
    procedure SetParameterFilters(const Value: TObjectList<TParameterStringFilter>);
    function GetKeepParameterFilters: Boolean;
    procedure SetKeepParameterFilters(const Value: Boolean);
    function Obj: TDescribeParametersRequest;
    function IsSetFilters: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetParameterFilters: Boolean;
    property Filters: TObjectList<TParametersFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property ParameterFilters: TObjectList<TParameterStringFilter> read GetParameterFilters write SetParameterFilters;
    property KeepParameterFilters: Boolean read GetKeepParameterFilters write SetKeepParameterFilters;
  end;
  
  TDescribeParametersRequest = class(TAmazonSimpleSystemsManagementRequest, IDescribeParametersRequest)
  strict private
    FFilters: TObjectList<TParametersFilter>;
    FKeepFilters: Boolean;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    FParameterFilters: TObjectList<TParameterStringFilter>;
    FKeepParameterFilters: Boolean;
    function GetFilters: TObjectList<TParametersFilter>;
    procedure SetFilters(const Value: TObjectList<TParametersFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetParameterFilters: TObjectList<TParameterStringFilter>;
    procedure SetParameterFilters(const Value: TObjectList<TParameterStringFilter>);
    function GetKeepParameterFilters: Boolean;
    procedure SetKeepParameterFilters(const Value: Boolean);
  strict protected
    function Obj: TDescribeParametersRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetFilters: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetParameterFilters: Boolean;
    property Filters: TObjectList<TParametersFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property ParameterFilters: TObjectList<TParameterStringFilter> read GetParameterFilters write SetParameterFilters;
    property KeepParameterFilters: Boolean read GetKeepParameterFilters write SetKeepParameterFilters;
  end;
  
implementation

{ TDescribeParametersRequest }

constructor TDescribeParametersRequest.Create;
begin
  inherited;
  FFilters := TObjectList<TParametersFilter>.Create;
  FParameterFilters := TObjectList<TParameterStringFilter>.Create;
end;

destructor TDescribeParametersRequest.Destroy;
begin
  ParameterFilters := nil;
  Filters := nil;
  inherited;
end;

function TDescribeParametersRequest.Obj: TDescribeParametersRequest;
begin
  Result := Self;
end;

function TDescribeParametersRequest.GetFilters: TObjectList<TParametersFilter>;
begin
  Result := FFilters;
end;

procedure TDescribeParametersRequest.SetFilters(const Value: TObjectList<TParametersFilter>);
begin
  if FFilters <> Value then
  begin
    if not KeepFilters then
      FFilters.Free;
    FFilters := Value;
  end;
end;

function TDescribeParametersRequest.GetKeepFilters: Boolean;
begin
  Result := FKeepFilters;
end;

procedure TDescribeParametersRequest.SetKeepFilters(const Value: Boolean);
begin
  FKeepFilters := Value;
end;

function TDescribeParametersRequest.IsSetFilters: Boolean;
begin
  Result := (FFilters <> nil) and (FFilters.Count > 0);
end;

function TDescribeParametersRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TDescribeParametersRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TDescribeParametersRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TDescribeParametersRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeParametersRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeParametersRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TDescribeParametersRequest.GetParameterFilters: TObjectList<TParameterStringFilter>;
begin
  Result := FParameterFilters;
end;

procedure TDescribeParametersRequest.SetParameterFilters(const Value: TObjectList<TParameterStringFilter>);
begin
  if FParameterFilters <> Value then
  begin
    if not KeepParameterFilters then
      FParameterFilters.Free;
    FParameterFilters := Value;
  end;
end;

function TDescribeParametersRequest.GetKeepParameterFilters: Boolean;
begin
  Result := FKeepParameterFilters;
end;

procedure TDescribeParametersRequest.SetKeepParameterFilters(const Value: Boolean);
begin
  FKeepParameterFilters := Value;
end;

function TDescribeParametersRequest.IsSetParameterFilters: Boolean;
begin
  Result := (FParameterFilters <> nil) and (FParameterFilters.Count > 0);
end;

end.
