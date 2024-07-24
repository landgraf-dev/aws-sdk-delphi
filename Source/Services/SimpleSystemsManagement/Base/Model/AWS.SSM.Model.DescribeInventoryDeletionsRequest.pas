unit AWS.SSM.Model.DescribeInventoryDeletionsRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TDescribeInventoryDeletionsRequest = class;
  
  IDescribeInventoryDeletionsRequest = interface
    function GetDeletionId: string;
    procedure SetDeletionId(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TDescribeInventoryDeletionsRequest;
    function IsSetDeletionId: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property DeletionId: string read GetDeletionId write SetDeletionId;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TDescribeInventoryDeletionsRequest = class(TAmazonSimpleSystemsManagementRequest, IDescribeInventoryDeletionsRequest)
  strict private
    FDeletionId: Nullable<string>;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    function GetDeletionId: string;
    procedure SetDeletionId(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TDescribeInventoryDeletionsRequest;
  public
    function IsSetDeletionId: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property DeletionId: string read GetDeletionId write SetDeletionId;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TDescribeInventoryDeletionsRequest }

function TDescribeInventoryDeletionsRequest.Obj: TDescribeInventoryDeletionsRequest;
begin
  Result := Self;
end;

function TDescribeInventoryDeletionsRequest.GetDeletionId: string;
begin
  Result := FDeletionId.ValueOrDefault;
end;

procedure TDescribeInventoryDeletionsRequest.SetDeletionId(const Value: string);
begin
  FDeletionId := Value;
end;

function TDescribeInventoryDeletionsRequest.IsSetDeletionId: Boolean;
begin
  Result := FDeletionId.HasValue;
end;

function TDescribeInventoryDeletionsRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TDescribeInventoryDeletionsRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TDescribeInventoryDeletionsRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TDescribeInventoryDeletionsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeInventoryDeletionsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeInventoryDeletionsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
