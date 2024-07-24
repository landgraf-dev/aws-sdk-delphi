unit AWS.SSM.Model.DescribeAssociationExecutionsRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.Nullable, 
  AWS.SSM.Model.AssociationExecutionFilter;

type
  TDescribeAssociationExecutionsRequest = class;
  
  IDescribeAssociationExecutionsRequest = interface
    function GetAssociationId: string;
    procedure SetAssociationId(const Value: string);
    function GetFilters: TObjectList<TAssociationExecutionFilter>;
    procedure SetFilters(const Value: TObjectList<TAssociationExecutionFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TDescribeAssociationExecutionsRequest;
    function IsSetAssociationId: Boolean;
    function IsSetFilters: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property AssociationId: string read GetAssociationId write SetAssociationId;
    property Filters: TObjectList<TAssociationExecutionFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TDescribeAssociationExecutionsRequest = class(TAmazonSimpleSystemsManagementRequest, IDescribeAssociationExecutionsRequest)
  strict private
    FAssociationId: Nullable<string>;
    FFilters: TObjectList<TAssociationExecutionFilter>;
    FKeepFilters: Boolean;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    function GetAssociationId: string;
    procedure SetAssociationId(const Value: string);
    function GetFilters: TObjectList<TAssociationExecutionFilter>;
    procedure SetFilters(const Value: TObjectList<TAssociationExecutionFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TDescribeAssociationExecutionsRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAssociationId: Boolean;
    function IsSetFilters: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property AssociationId: string read GetAssociationId write SetAssociationId;
    property Filters: TObjectList<TAssociationExecutionFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TDescribeAssociationExecutionsRequest }

constructor TDescribeAssociationExecutionsRequest.Create;
begin
  inherited;
  FFilters := TObjectList<TAssociationExecutionFilter>.Create;
end;

destructor TDescribeAssociationExecutionsRequest.Destroy;
begin
  Filters := nil;
  inherited;
end;

function TDescribeAssociationExecutionsRequest.Obj: TDescribeAssociationExecutionsRequest;
begin
  Result := Self;
end;

function TDescribeAssociationExecutionsRequest.GetAssociationId: string;
begin
  Result := FAssociationId.ValueOrDefault;
end;

procedure TDescribeAssociationExecutionsRequest.SetAssociationId(const Value: string);
begin
  FAssociationId := Value;
end;

function TDescribeAssociationExecutionsRequest.IsSetAssociationId: Boolean;
begin
  Result := FAssociationId.HasValue;
end;

function TDescribeAssociationExecutionsRequest.GetFilters: TObjectList<TAssociationExecutionFilter>;
begin
  Result := FFilters;
end;

procedure TDescribeAssociationExecutionsRequest.SetFilters(const Value: TObjectList<TAssociationExecutionFilter>);
begin
  if FFilters <> Value then
  begin
    if not KeepFilters then
      FFilters.Free;
    FFilters := Value;
  end;
end;

function TDescribeAssociationExecutionsRequest.GetKeepFilters: Boolean;
begin
  Result := FKeepFilters;
end;

procedure TDescribeAssociationExecutionsRequest.SetKeepFilters(const Value: Boolean);
begin
  FKeepFilters := Value;
end;

function TDescribeAssociationExecutionsRequest.IsSetFilters: Boolean;
begin
  Result := (FFilters <> nil) and (FFilters.Count > 0);
end;

function TDescribeAssociationExecutionsRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TDescribeAssociationExecutionsRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TDescribeAssociationExecutionsRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TDescribeAssociationExecutionsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeAssociationExecutionsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeAssociationExecutionsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
