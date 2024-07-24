unit AWS.SSM.Model.GetInventoryRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.SSM.Model.InventoryAggregator, 
  AWS.SSM.Model.InventoryFilter, 
  AWS.Nullable, 
  AWS.SSM.Model.ResultAttribute;

type
  TGetInventoryRequest = class;
  
  IGetInventoryRequest = interface
    function GetAggregators: TObjectList<TInventoryAggregator>;
    procedure SetAggregators(const Value: TObjectList<TInventoryAggregator>);
    function GetKeepAggregators: Boolean;
    procedure SetKeepAggregators(const Value: Boolean);
    function GetFilters: TObjectList<TInventoryFilter>;
    procedure SetFilters(const Value: TObjectList<TInventoryFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetResultAttributes: TObjectList<TResultAttribute>;
    procedure SetResultAttributes(const Value: TObjectList<TResultAttribute>);
    function GetKeepResultAttributes: Boolean;
    procedure SetKeepResultAttributes(const Value: Boolean);
    function Obj: TGetInventoryRequest;
    function IsSetAggregators: Boolean;
    function IsSetFilters: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetResultAttributes: Boolean;
    property Aggregators: TObjectList<TInventoryAggregator> read GetAggregators write SetAggregators;
    property KeepAggregators: Boolean read GetKeepAggregators write SetKeepAggregators;
    property Filters: TObjectList<TInventoryFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property ResultAttributes: TObjectList<TResultAttribute> read GetResultAttributes write SetResultAttributes;
    property KeepResultAttributes: Boolean read GetKeepResultAttributes write SetKeepResultAttributes;
  end;
  
  TGetInventoryRequest = class(TAmazonSimpleSystemsManagementRequest, IGetInventoryRequest)
  strict private
    FAggregators: TObjectList<TInventoryAggregator>;
    FKeepAggregators: Boolean;
    FFilters: TObjectList<TInventoryFilter>;
    FKeepFilters: Boolean;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    FResultAttributes: TObjectList<TResultAttribute>;
    FKeepResultAttributes: Boolean;
    function GetAggregators: TObjectList<TInventoryAggregator>;
    procedure SetAggregators(const Value: TObjectList<TInventoryAggregator>);
    function GetKeepAggregators: Boolean;
    procedure SetKeepAggregators(const Value: Boolean);
    function GetFilters: TObjectList<TInventoryFilter>;
    procedure SetFilters(const Value: TObjectList<TInventoryFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetResultAttributes: TObjectList<TResultAttribute>;
    procedure SetResultAttributes(const Value: TObjectList<TResultAttribute>);
    function GetKeepResultAttributes: Boolean;
    procedure SetKeepResultAttributes(const Value: Boolean);
  strict protected
    function Obj: TGetInventoryRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAggregators: Boolean;
    function IsSetFilters: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetResultAttributes: Boolean;
    property Aggregators: TObjectList<TInventoryAggregator> read GetAggregators write SetAggregators;
    property KeepAggregators: Boolean read GetKeepAggregators write SetKeepAggregators;
    property Filters: TObjectList<TInventoryFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property ResultAttributes: TObjectList<TResultAttribute> read GetResultAttributes write SetResultAttributes;
    property KeepResultAttributes: Boolean read GetKeepResultAttributes write SetKeepResultAttributes;
  end;
  
implementation

{ TGetInventoryRequest }

constructor TGetInventoryRequest.Create;
begin
  inherited;
  FAggregators := TObjectList<TInventoryAggregator>.Create;
  FFilters := TObjectList<TInventoryFilter>.Create;
  FResultAttributes := TObjectList<TResultAttribute>.Create;
end;

destructor TGetInventoryRequest.Destroy;
begin
  ResultAttributes := nil;
  Filters := nil;
  Aggregators := nil;
  inherited;
end;

function TGetInventoryRequest.Obj: TGetInventoryRequest;
begin
  Result := Self;
end;

function TGetInventoryRequest.GetAggregators: TObjectList<TInventoryAggregator>;
begin
  Result := FAggregators;
end;

procedure TGetInventoryRequest.SetAggregators(const Value: TObjectList<TInventoryAggregator>);
begin
  if FAggregators <> Value then
  begin
    if not KeepAggregators then
      FAggregators.Free;
    FAggregators := Value;
  end;
end;

function TGetInventoryRequest.GetKeepAggregators: Boolean;
begin
  Result := FKeepAggregators;
end;

procedure TGetInventoryRequest.SetKeepAggregators(const Value: Boolean);
begin
  FKeepAggregators := Value;
end;

function TGetInventoryRequest.IsSetAggregators: Boolean;
begin
  Result := (FAggregators <> nil) and (FAggregators.Count > 0);
end;

function TGetInventoryRequest.GetFilters: TObjectList<TInventoryFilter>;
begin
  Result := FFilters;
end;

procedure TGetInventoryRequest.SetFilters(const Value: TObjectList<TInventoryFilter>);
begin
  if FFilters <> Value then
  begin
    if not KeepFilters then
      FFilters.Free;
    FFilters := Value;
  end;
end;

function TGetInventoryRequest.GetKeepFilters: Boolean;
begin
  Result := FKeepFilters;
end;

procedure TGetInventoryRequest.SetKeepFilters(const Value: Boolean);
begin
  FKeepFilters := Value;
end;

function TGetInventoryRequest.IsSetFilters: Boolean;
begin
  Result := (FFilters <> nil) and (FFilters.Count > 0);
end;

function TGetInventoryRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TGetInventoryRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TGetInventoryRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TGetInventoryRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TGetInventoryRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TGetInventoryRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TGetInventoryRequest.GetResultAttributes: TObjectList<TResultAttribute>;
begin
  Result := FResultAttributes;
end;

procedure TGetInventoryRequest.SetResultAttributes(const Value: TObjectList<TResultAttribute>);
begin
  if FResultAttributes <> Value then
  begin
    if not KeepResultAttributes then
      FResultAttributes.Free;
    FResultAttributes := Value;
  end;
end;

function TGetInventoryRequest.GetKeepResultAttributes: Boolean;
begin
  Result := FKeepResultAttributes;
end;

procedure TGetInventoryRequest.SetKeepResultAttributes(const Value: Boolean);
begin
  FKeepResultAttributes := Value;
end;

function TGetInventoryRequest.IsSetResultAttributes: Boolean;
begin
  Result := (FResultAttributes <> nil) and (FResultAttributes.Count > 0);
end;

end.
