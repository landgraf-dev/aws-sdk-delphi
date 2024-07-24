unit AWS.SSM.Model.DescribeAssociationExecutionsResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.AssociationExecution, 
  AWS.Nullable;

type
  TDescribeAssociationExecutionsResponse = class;
  
  IDescribeAssociationExecutionsResponse = interface(IAmazonWebServiceResponse)
    function GetAssociationExecutions: TObjectList<TAssociationExecution>;
    procedure SetAssociationExecutions(const Value: TObjectList<TAssociationExecution>);
    function GetKeepAssociationExecutions: Boolean;
    procedure SetKeepAssociationExecutions(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TDescribeAssociationExecutionsResponse;
    function IsSetAssociationExecutions: Boolean;
    function IsSetNextToken: Boolean;
    property AssociationExecutions: TObjectList<TAssociationExecution> read GetAssociationExecutions write SetAssociationExecutions;
    property KeepAssociationExecutions: Boolean read GetKeepAssociationExecutions write SetKeepAssociationExecutions;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TDescribeAssociationExecutionsResponse = class(TAmazonWebServiceResponse, IDescribeAssociationExecutionsResponse)
  strict private
    FAssociationExecutions: TObjectList<TAssociationExecution>;
    FKeepAssociationExecutions: Boolean;
    FNextToken: Nullable<string>;
    function GetAssociationExecutions: TObjectList<TAssociationExecution>;
    procedure SetAssociationExecutions(const Value: TObjectList<TAssociationExecution>);
    function GetKeepAssociationExecutions: Boolean;
    procedure SetKeepAssociationExecutions(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TDescribeAssociationExecutionsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAssociationExecutions: Boolean;
    function IsSetNextToken: Boolean;
    property AssociationExecutions: TObjectList<TAssociationExecution> read GetAssociationExecutions write SetAssociationExecutions;
    property KeepAssociationExecutions: Boolean read GetKeepAssociationExecutions write SetKeepAssociationExecutions;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TDescribeAssociationExecutionsResponse }

constructor TDescribeAssociationExecutionsResponse.Create;
begin
  inherited;
  FAssociationExecutions := TObjectList<TAssociationExecution>.Create;
end;

destructor TDescribeAssociationExecutionsResponse.Destroy;
begin
  AssociationExecutions := nil;
  inherited;
end;

function TDescribeAssociationExecutionsResponse.Obj: TDescribeAssociationExecutionsResponse;
begin
  Result := Self;
end;

function TDescribeAssociationExecutionsResponse.GetAssociationExecutions: TObjectList<TAssociationExecution>;
begin
  Result := FAssociationExecutions;
end;

procedure TDescribeAssociationExecutionsResponse.SetAssociationExecutions(const Value: TObjectList<TAssociationExecution>);
begin
  if FAssociationExecutions <> Value then
  begin
    if not KeepAssociationExecutions then
      FAssociationExecutions.Free;
    FAssociationExecutions := Value;
  end;
end;

function TDescribeAssociationExecutionsResponse.GetKeepAssociationExecutions: Boolean;
begin
  Result := FKeepAssociationExecutions;
end;

procedure TDescribeAssociationExecutionsResponse.SetKeepAssociationExecutions(const Value: Boolean);
begin
  FKeepAssociationExecutions := Value;
end;

function TDescribeAssociationExecutionsResponse.IsSetAssociationExecutions: Boolean;
begin
  Result := (FAssociationExecutions <> nil) and (FAssociationExecutions.Count > 0);
end;

function TDescribeAssociationExecutionsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeAssociationExecutionsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeAssociationExecutionsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
