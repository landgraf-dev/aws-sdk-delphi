unit AWS.SSM.Model.DescribeAssociationExecutionTargetsResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.AssociationExecutionTarget, 
  AWS.Nullable;

type
  TDescribeAssociationExecutionTargetsResponse = class;
  
  IDescribeAssociationExecutionTargetsResponse = interface(IAmazonWebServiceResponse)
    function GetAssociationExecutionTargets: TObjectList<TAssociationExecutionTarget>;
    procedure SetAssociationExecutionTargets(const Value: TObjectList<TAssociationExecutionTarget>);
    function GetKeepAssociationExecutionTargets: Boolean;
    procedure SetKeepAssociationExecutionTargets(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TDescribeAssociationExecutionTargetsResponse;
    function IsSetAssociationExecutionTargets: Boolean;
    function IsSetNextToken: Boolean;
    property AssociationExecutionTargets: TObjectList<TAssociationExecutionTarget> read GetAssociationExecutionTargets write SetAssociationExecutionTargets;
    property KeepAssociationExecutionTargets: Boolean read GetKeepAssociationExecutionTargets write SetKeepAssociationExecutionTargets;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TDescribeAssociationExecutionTargetsResponse = class(TAmazonWebServiceResponse, IDescribeAssociationExecutionTargetsResponse)
  strict private
    FAssociationExecutionTargets: TObjectList<TAssociationExecutionTarget>;
    FKeepAssociationExecutionTargets: Boolean;
    FNextToken: Nullable<string>;
    function GetAssociationExecutionTargets: TObjectList<TAssociationExecutionTarget>;
    procedure SetAssociationExecutionTargets(const Value: TObjectList<TAssociationExecutionTarget>);
    function GetKeepAssociationExecutionTargets: Boolean;
    procedure SetKeepAssociationExecutionTargets(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TDescribeAssociationExecutionTargetsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAssociationExecutionTargets: Boolean;
    function IsSetNextToken: Boolean;
    property AssociationExecutionTargets: TObjectList<TAssociationExecutionTarget> read GetAssociationExecutionTargets write SetAssociationExecutionTargets;
    property KeepAssociationExecutionTargets: Boolean read GetKeepAssociationExecutionTargets write SetKeepAssociationExecutionTargets;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TDescribeAssociationExecutionTargetsResponse }

constructor TDescribeAssociationExecutionTargetsResponse.Create;
begin
  inherited;
  FAssociationExecutionTargets := TObjectList<TAssociationExecutionTarget>.Create;
end;

destructor TDescribeAssociationExecutionTargetsResponse.Destroy;
begin
  AssociationExecutionTargets := nil;
  inherited;
end;

function TDescribeAssociationExecutionTargetsResponse.Obj: TDescribeAssociationExecutionTargetsResponse;
begin
  Result := Self;
end;

function TDescribeAssociationExecutionTargetsResponse.GetAssociationExecutionTargets: TObjectList<TAssociationExecutionTarget>;
begin
  Result := FAssociationExecutionTargets;
end;

procedure TDescribeAssociationExecutionTargetsResponse.SetAssociationExecutionTargets(const Value: TObjectList<TAssociationExecutionTarget>);
begin
  if FAssociationExecutionTargets <> Value then
  begin
    if not KeepAssociationExecutionTargets then
      FAssociationExecutionTargets.Free;
    FAssociationExecutionTargets := Value;
  end;
end;

function TDescribeAssociationExecutionTargetsResponse.GetKeepAssociationExecutionTargets: Boolean;
begin
  Result := FKeepAssociationExecutionTargets;
end;

procedure TDescribeAssociationExecutionTargetsResponse.SetKeepAssociationExecutionTargets(const Value: Boolean);
begin
  FKeepAssociationExecutionTargets := Value;
end;

function TDescribeAssociationExecutionTargetsResponse.IsSetAssociationExecutionTargets: Boolean;
begin
  Result := (FAssociationExecutionTargets <> nil) and (FAssociationExecutionTargets.Count > 0);
end;

function TDescribeAssociationExecutionTargetsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeAssociationExecutionTargetsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeAssociationExecutionTargetsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
