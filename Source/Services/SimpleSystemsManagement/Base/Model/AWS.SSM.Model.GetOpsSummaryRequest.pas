unit AWS.SSM.Model.GetOpsSummaryRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.SSM.Model.OpsAggregator, 
  AWS.SSM.Model.OpsFilter, 
  AWS.Nullable, 
  AWS.SSM.Model.OpsResultAttribute;

type
  TGetOpsSummaryRequest = class;
  
  IGetOpsSummaryRequest = interface
    function GetAggregators: TObjectList<TOpsAggregator>;
    procedure SetAggregators(const Value: TObjectList<TOpsAggregator>);
    function GetKeepAggregators: Boolean;
    procedure SetKeepAggregators(const Value: Boolean);
    function GetFilters: TObjectList<TOpsFilter>;
    procedure SetFilters(const Value: TObjectList<TOpsFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetResultAttributes: TObjectList<TOpsResultAttribute>;
    procedure SetResultAttributes(const Value: TObjectList<TOpsResultAttribute>);
    function GetKeepResultAttributes: Boolean;
    procedure SetKeepResultAttributes(const Value: Boolean);
    function GetSyncName: string;
    procedure SetSyncName(const Value: string);
    function Obj: TGetOpsSummaryRequest;
    function IsSetAggregators: Boolean;
    function IsSetFilters: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetResultAttributes: Boolean;
    function IsSetSyncName: Boolean;
    property Aggregators: TObjectList<TOpsAggregator> read GetAggregators write SetAggregators;
    property KeepAggregators: Boolean read GetKeepAggregators write SetKeepAggregators;
    property Filters: TObjectList<TOpsFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property ResultAttributes: TObjectList<TOpsResultAttribute> read GetResultAttributes write SetResultAttributes;
    property KeepResultAttributes: Boolean read GetKeepResultAttributes write SetKeepResultAttributes;
    property SyncName: string read GetSyncName write SetSyncName;
  end;
  
  TGetOpsSummaryRequest = class(TAmazonSimpleSystemsManagementRequest, IGetOpsSummaryRequest)
  strict private
    FAggregators: TObjectList<TOpsAggregator>;
    FKeepAggregators: Boolean;
    FFilters: TObjectList<TOpsFilter>;
    FKeepFilters: Boolean;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    FResultAttributes: TObjectList<TOpsResultAttribute>;
    FKeepResultAttributes: Boolean;
    FSyncName: Nullable<string>;
    function GetAggregators: TObjectList<TOpsAggregator>;
    procedure SetAggregators(const Value: TObjectList<TOpsAggregator>);
    function GetKeepAggregators: Boolean;
    procedure SetKeepAggregators(const Value: Boolean);
    function GetFilters: TObjectList<TOpsFilter>;
    procedure SetFilters(const Value: TObjectList<TOpsFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetResultAttributes: TObjectList<TOpsResultAttribute>;
    procedure SetResultAttributes(const Value: TObjectList<TOpsResultAttribute>);
    function GetKeepResultAttributes: Boolean;
    procedure SetKeepResultAttributes(const Value: Boolean);
    function GetSyncName: string;
    procedure SetSyncName(const Value: string);
  strict protected
    function Obj: TGetOpsSummaryRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAggregators: Boolean;
    function IsSetFilters: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetResultAttributes: Boolean;
    function IsSetSyncName: Boolean;
    property Aggregators: TObjectList<TOpsAggregator> read GetAggregators write SetAggregators;
    property KeepAggregators: Boolean read GetKeepAggregators write SetKeepAggregators;
    property Filters: TObjectList<TOpsFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property ResultAttributes: TObjectList<TOpsResultAttribute> read GetResultAttributes write SetResultAttributes;
    property KeepResultAttributes: Boolean read GetKeepResultAttributes write SetKeepResultAttributes;
    property SyncName: string read GetSyncName write SetSyncName;
  end;
  
implementation

{ TGetOpsSummaryRequest }

constructor TGetOpsSummaryRequest.Create;
begin
  inherited;
  FAggregators := TObjectList<TOpsAggregator>.Create;
  FFilters := TObjectList<TOpsFilter>.Create;
  FResultAttributes := TObjectList<TOpsResultAttribute>.Create;
end;

destructor TGetOpsSummaryRequest.Destroy;
begin
  ResultAttributes := nil;
  Filters := nil;
  Aggregators := nil;
  inherited;
end;

function TGetOpsSummaryRequest.Obj: TGetOpsSummaryRequest;
begin
  Result := Self;
end;

function TGetOpsSummaryRequest.GetAggregators: TObjectList<TOpsAggregator>;
begin
  Result := FAggregators;
end;

procedure TGetOpsSummaryRequest.SetAggregators(const Value: TObjectList<TOpsAggregator>);
begin
  if FAggregators <> Value then
  begin
    if not KeepAggregators then
      FAggregators.Free;
    FAggregators := Value;
  end;
end;

function TGetOpsSummaryRequest.GetKeepAggregators: Boolean;
begin
  Result := FKeepAggregators;
end;

procedure TGetOpsSummaryRequest.SetKeepAggregators(const Value: Boolean);
begin
  FKeepAggregators := Value;
end;

function TGetOpsSummaryRequest.IsSetAggregators: Boolean;
begin
  Result := (FAggregators <> nil) and (FAggregators.Count > 0);
end;

function TGetOpsSummaryRequest.GetFilters: TObjectList<TOpsFilter>;
begin
  Result := FFilters;
end;

procedure TGetOpsSummaryRequest.SetFilters(const Value: TObjectList<TOpsFilter>);
begin
  if FFilters <> Value then
  begin
    if not KeepFilters then
      FFilters.Free;
    FFilters := Value;
  end;
end;

function TGetOpsSummaryRequest.GetKeepFilters: Boolean;
begin
  Result := FKeepFilters;
end;

procedure TGetOpsSummaryRequest.SetKeepFilters(const Value: Boolean);
begin
  FKeepFilters := Value;
end;

function TGetOpsSummaryRequest.IsSetFilters: Boolean;
begin
  Result := (FFilters <> nil) and (FFilters.Count > 0);
end;

function TGetOpsSummaryRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TGetOpsSummaryRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TGetOpsSummaryRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TGetOpsSummaryRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TGetOpsSummaryRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TGetOpsSummaryRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TGetOpsSummaryRequest.GetResultAttributes: TObjectList<TOpsResultAttribute>;
begin
  Result := FResultAttributes;
end;

procedure TGetOpsSummaryRequest.SetResultAttributes(const Value: TObjectList<TOpsResultAttribute>);
begin
  if FResultAttributes <> Value then
  begin
    if not KeepResultAttributes then
      FResultAttributes.Free;
    FResultAttributes := Value;
  end;
end;

function TGetOpsSummaryRequest.GetKeepResultAttributes: Boolean;
begin
  Result := FKeepResultAttributes;
end;

procedure TGetOpsSummaryRequest.SetKeepResultAttributes(const Value: Boolean);
begin
  FKeepResultAttributes := Value;
end;

function TGetOpsSummaryRequest.IsSetResultAttributes: Boolean;
begin
  Result := (FResultAttributes <> nil) and (FResultAttributes.Count > 0);
end;

function TGetOpsSummaryRequest.GetSyncName: string;
begin
  Result := FSyncName.ValueOrDefault;
end;

procedure TGetOpsSummaryRequest.SetSyncName(const Value: string);
begin
  FSyncName := Value;
end;

function TGetOpsSummaryRequest.IsSetSyncName: Boolean;
begin
  Result := FSyncName.HasValue;
end;

end.
