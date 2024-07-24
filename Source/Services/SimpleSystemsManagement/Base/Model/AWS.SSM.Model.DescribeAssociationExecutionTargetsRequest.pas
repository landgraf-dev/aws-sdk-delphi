unit AWS.SSM.Model.DescribeAssociationExecutionTargetsRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.Nullable, 
  AWS.SSM.Model.AssociationExecutionTargetsFilter;

type
  TDescribeAssociationExecutionTargetsRequest = class;
  
  IDescribeAssociationExecutionTargetsRequest = interface
    function GetAssociationId: string;
    procedure SetAssociationId(const Value: string);
    function GetExecutionId: string;
    procedure SetExecutionId(const Value: string);
    function GetFilters: TObjectList<TAssociationExecutionTargetsFilter>;
    procedure SetFilters(const Value: TObjectList<TAssociationExecutionTargetsFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TDescribeAssociationExecutionTargetsRequest;
    function IsSetAssociationId: Boolean;
    function IsSetExecutionId: Boolean;
    function IsSetFilters: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property AssociationId: string read GetAssociationId write SetAssociationId;
    property ExecutionId: string read GetExecutionId write SetExecutionId;
    property Filters: TObjectList<TAssociationExecutionTargetsFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TDescribeAssociationExecutionTargetsRequest = class(TAmazonSimpleSystemsManagementRequest, IDescribeAssociationExecutionTargetsRequest)
  strict private
    FAssociationId: Nullable<string>;
    FExecutionId: Nullable<string>;
    FFilters: TObjectList<TAssociationExecutionTargetsFilter>;
    FKeepFilters: Boolean;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    function GetAssociationId: string;
    procedure SetAssociationId(const Value: string);
    function GetExecutionId: string;
    procedure SetExecutionId(const Value: string);
    function GetFilters: TObjectList<TAssociationExecutionTargetsFilter>;
    procedure SetFilters(const Value: TObjectList<TAssociationExecutionTargetsFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TDescribeAssociationExecutionTargetsRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAssociationId: Boolean;
    function IsSetExecutionId: Boolean;
    function IsSetFilters: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property AssociationId: string read GetAssociationId write SetAssociationId;
    property ExecutionId: string read GetExecutionId write SetExecutionId;
    property Filters: TObjectList<TAssociationExecutionTargetsFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TDescribeAssociationExecutionTargetsRequest }

constructor TDescribeAssociationExecutionTargetsRequest.Create;
begin
  inherited;
  FFilters := TObjectList<TAssociationExecutionTargetsFilter>.Create;
end;

destructor TDescribeAssociationExecutionTargetsRequest.Destroy;
begin
  Filters := nil;
  inherited;
end;

function TDescribeAssociationExecutionTargetsRequest.Obj: TDescribeAssociationExecutionTargetsRequest;
begin
  Result := Self;
end;

function TDescribeAssociationExecutionTargetsRequest.GetAssociationId: string;
begin
  Result := FAssociationId.ValueOrDefault;
end;

procedure TDescribeAssociationExecutionTargetsRequest.SetAssociationId(const Value: string);
begin
  FAssociationId := Value;
end;

function TDescribeAssociationExecutionTargetsRequest.IsSetAssociationId: Boolean;
begin
  Result := FAssociationId.HasValue;
end;

function TDescribeAssociationExecutionTargetsRequest.GetExecutionId: string;
begin
  Result := FExecutionId.ValueOrDefault;
end;

procedure TDescribeAssociationExecutionTargetsRequest.SetExecutionId(const Value: string);
begin
  FExecutionId := Value;
end;

function TDescribeAssociationExecutionTargetsRequest.IsSetExecutionId: Boolean;
begin
  Result := FExecutionId.HasValue;
end;

function TDescribeAssociationExecutionTargetsRequest.GetFilters: TObjectList<TAssociationExecutionTargetsFilter>;
begin
  Result := FFilters;
end;

procedure TDescribeAssociationExecutionTargetsRequest.SetFilters(const Value: TObjectList<TAssociationExecutionTargetsFilter>);
begin
  if FFilters <> Value then
  begin
    if not KeepFilters then
      FFilters.Free;
    FFilters := Value;
  end;
end;

function TDescribeAssociationExecutionTargetsRequest.GetKeepFilters: Boolean;
begin
  Result := FKeepFilters;
end;

procedure TDescribeAssociationExecutionTargetsRequest.SetKeepFilters(const Value: Boolean);
begin
  FKeepFilters := Value;
end;

function TDescribeAssociationExecutionTargetsRequest.IsSetFilters: Boolean;
begin
  Result := (FFilters <> nil) and (FFilters.Count > 0);
end;

function TDescribeAssociationExecutionTargetsRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TDescribeAssociationExecutionTargetsRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TDescribeAssociationExecutionTargetsRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TDescribeAssociationExecutionTargetsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeAssociationExecutionTargetsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeAssociationExecutionTargetsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
