unit AWS.SSM.Model.DescribeAutomationStepExecutionsRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.Nullable, 
  AWS.SSM.Model.StepExecutionFilter;

type
  TDescribeAutomationStepExecutionsRequest = class;
  
  IDescribeAutomationStepExecutionsRequest = interface
    function GetAutomationExecutionId: string;
    procedure SetAutomationExecutionId(const Value: string);
    function GetFilters: TObjectList<TStepExecutionFilter>;
    procedure SetFilters(const Value: TObjectList<TStepExecutionFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetReverseOrder: Boolean;
    procedure SetReverseOrder(const Value: Boolean);
    function Obj: TDescribeAutomationStepExecutionsRequest;
    function IsSetAutomationExecutionId: Boolean;
    function IsSetFilters: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetReverseOrder: Boolean;
    property AutomationExecutionId: string read GetAutomationExecutionId write SetAutomationExecutionId;
    property Filters: TObjectList<TStepExecutionFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property ReverseOrder: Boolean read GetReverseOrder write SetReverseOrder;
  end;
  
  TDescribeAutomationStepExecutionsRequest = class(TAmazonSimpleSystemsManagementRequest, IDescribeAutomationStepExecutionsRequest)
  strict private
    FAutomationExecutionId: Nullable<string>;
    FFilters: TObjectList<TStepExecutionFilter>;
    FKeepFilters: Boolean;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    FReverseOrder: Nullable<Boolean>;
    function GetAutomationExecutionId: string;
    procedure SetAutomationExecutionId(const Value: string);
    function GetFilters: TObjectList<TStepExecutionFilter>;
    procedure SetFilters(const Value: TObjectList<TStepExecutionFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetReverseOrder: Boolean;
    procedure SetReverseOrder(const Value: Boolean);
  strict protected
    function Obj: TDescribeAutomationStepExecutionsRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAutomationExecutionId: Boolean;
    function IsSetFilters: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetReverseOrder: Boolean;
    property AutomationExecutionId: string read GetAutomationExecutionId write SetAutomationExecutionId;
    property Filters: TObjectList<TStepExecutionFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property ReverseOrder: Boolean read GetReverseOrder write SetReverseOrder;
  end;
  
implementation

{ TDescribeAutomationStepExecutionsRequest }

constructor TDescribeAutomationStepExecutionsRequest.Create;
begin
  inherited;
  FFilters := TObjectList<TStepExecutionFilter>.Create;
end;

destructor TDescribeAutomationStepExecutionsRequest.Destroy;
begin
  Filters := nil;
  inherited;
end;

function TDescribeAutomationStepExecutionsRequest.Obj: TDescribeAutomationStepExecutionsRequest;
begin
  Result := Self;
end;

function TDescribeAutomationStepExecutionsRequest.GetAutomationExecutionId: string;
begin
  Result := FAutomationExecutionId.ValueOrDefault;
end;

procedure TDescribeAutomationStepExecutionsRequest.SetAutomationExecutionId(const Value: string);
begin
  FAutomationExecutionId := Value;
end;

function TDescribeAutomationStepExecutionsRequest.IsSetAutomationExecutionId: Boolean;
begin
  Result := FAutomationExecutionId.HasValue;
end;

function TDescribeAutomationStepExecutionsRequest.GetFilters: TObjectList<TStepExecutionFilter>;
begin
  Result := FFilters;
end;

procedure TDescribeAutomationStepExecutionsRequest.SetFilters(const Value: TObjectList<TStepExecutionFilter>);
begin
  if FFilters <> Value then
  begin
    if not KeepFilters then
      FFilters.Free;
    FFilters := Value;
  end;
end;

function TDescribeAutomationStepExecutionsRequest.GetKeepFilters: Boolean;
begin
  Result := FKeepFilters;
end;

procedure TDescribeAutomationStepExecutionsRequest.SetKeepFilters(const Value: Boolean);
begin
  FKeepFilters := Value;
end;

function TDescribeAutomationStepExecutionsRequest.IsSetFilters: Boolean;
begin
  Result := (FFilters <> nil) and (FFilters.Count > 0);
end;

function TDescribeAutomationStepExecutionsRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TDescribeAutomationStepExecutionsRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TDescribeAutomationStepExecutionsRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TDescribeAutomationStepExecutionsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeAutomationStepExecutionsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeAutomationStepExecutionsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TDescribeAutomationStepExecutionsRequest.GetReverseOrder: Boolean;
begin
  Result := FReverseOrder.ValueOrDefault;
end;

procedure TDescribeAutomationStepExecutionsRequest.SetReverseOrder(const Value: Boolean);
begin
  FReverseOrder := Value;
end;

function TDescribeAutomationStepExecutionsRequest.IsSetReverseOrder: Boolean;
begin
  Result := FReverseOrder.HasValue;
end;

end.
