unit AWS.SSM.Model.DescribeAutomationStepExecutionsResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.SSM.Model.StepExecution;

type
  TDescribeAutomationStepExecutionsResponse = class;
  
  IDescribeAutomationStepExecutionsResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetStepExecutions: TObjectList<TStepExecution>;
    procedure SetStepExecutions(const Value: TObjectList<TStepExecution>);
    function GetKeepStepExecutions: Boolean;
    procedure SetKeepStepExecutions(const Value: Boolean);
    function Obj: TDescribeAutomationStepExecutionsResponse;
    function IsSetNextToken: Boolean;
    function IsSetStepExecutions: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property StepExecutions: TObjectList<TStepExecution> read GetStepExecutions write SetStepExecutions;
    property KeepStepExecutions: Boolean read GetKeepStepExecutions write SetKeepStepExecutions;
  end;
  
  TDescribeAutomationStepExecutionsResponse = class(TAmazonWebServiceResponse, IDescribeAutomationStepExecutionsResponse)
  strict private
    FNextToken: Nullable<string>;
    FStepExecutions: TObjectList<TStepExecution>;
    FKeepStepExecutions: Boolean;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetStepExecutions: TObjectList<TStepExecution>;
    procedure SetStepExecutions(const Value: TObjectList<TStepExecution>);
    function GetKeepStepExecutions: Boolean;
    procedure SetKeepStepExecutions(const Value: Boolean);
  strict protected
    function Obj: TDescribeAutomationStepExecutionsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetStepExecutions: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property StepExecutions: TObjectList<TStepExecution> read GetStepExecutions write SetStepExecutions;
    property KeepStepExecutions: Boolean read GetKeepStepExecutions write SetKeepStepExecutions;
  end;
  
implementation

{ TDescribeAutomationStepExecutionsResponse }

constructor TDescribeAutomationStepExecutionsResponse.Create;
begin
  inherited;
  FStepExecutions := TObjectList<TStepExecution>.Create;
end;

destructor TDescribeAutomationStepExecutionsResponse.Destroy;
begin
  StepExecutions := nil;
  inherited;
end;

function TDescribeAutomationStepExecutionsResponse.Obj: TDescribeAutomationStepExecutionsResponse;
begin
  Result := Self;
end;

function TDescribeAutomationStepExecutionsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeAutomationStepExecutionsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeAutomationStepExecutionsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TDescribeAutomationStepExecutionsResponse.GetStepExecutions: TObjectList<TStepExecution>;
begin
  Result := FStepExecutions;
end;

procedure TDescribeAutomationStepExecutionsResponse.SetStepExecutions(const Value: TObjectList<TStepExecution>);
begin
  if FStepExecutions <> Value then
  begin
    if not KeepStepExecutions then
      FStepExecutions.Free;
    FStepExecutions := Value;
  end;
end;

function TDescribeAutomationStepExecutionsResponse.GetKeepStepExecutions: Boolean;
begin
  Result := FKeepStepExecutions;
end;

procedure TDescribeAutomationStepExecutionsResponse.SetKeepStepExecutions(const Value: Boolean);
begin
  FKeepStepExecutions := Value;
end;

function TDescribeAutomationStepExecutionsResponse.IsSetStepExecutions: Boolean;
begin
  Result := (FStepExecutions <> nil) and (FStepExecutions.Count > 0);
end;

end.
