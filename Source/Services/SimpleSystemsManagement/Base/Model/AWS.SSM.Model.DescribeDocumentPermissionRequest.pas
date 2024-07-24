unit AWS.SSM.Model.DescribeDocumentPermissionRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TDescribeDocumentPermissionRequest = class;
  
  IDescribeDocumentPermissionRequest = interface
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPermissionType: TDocumentPermissionType;
    procedure SetPermissionType(const Value: TDocumentPermissionType);
    function Obj: TDescribeDocumentPermissionRequest;
    function IsSetMaxResults: Boolean;
    function IsSetName: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetPermissionType: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property Name: string read GetName write SetName;
    property NextToken: string read GetNextToken write SetNextToken;
    property PermissionType: TDocumentPermissionType read GetPermissionType write SetPermissionType;
  end;
  
  TDescribeDocumentPermissionRequest = class(TAmazonSimpleSystemsManagementRequest, IDescribeDocumentPermissionRequest)
  strict private
    FMaxResults: Nullable<Integer>;
    FName: Nullable<string>;
    FNextToken: Nullable<string>;
    FPermissionType: Nullable<TDocumentPermissionType>;
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPermissionType: TDocumentPermissionType;
    procedure SetPermissionType(const Value: TDocumentPermissionType);
  strict protected
    function Obj: TDescribeDocumentPermissionRequest;
  public
    function IsSetMaxResults: Boolean;
    function IsSetName: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetPermissionType: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property Name: string read GetName write SetName;
    property NextToken: string read GetNextToken write SetNextToken;
    property PermissionType: TDocumentPermissionType read GetPermissionType write SetPermissionType;
  end;
  
implementation

{ TDescribeDocumentPermissionRequest }

function TDescribeDocumentPermissionRequest.Obj: TDescribeDocumentPermissionRequest;
begin
  Result := Self;
end;

function TDescribeDocumentPermissionRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TDescribeDocumentPermissionRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TDescribeDocumentPermissionRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TDescribeDocumentPermissionRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TDescribeDocumentPermissionRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TDescribeDocumentPermissionRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TDescribeDocumentPermissionRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeDocumentPermissionRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeDocumentPermissionRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TDescribeDocumentPermissionRequest.GetPermissionType: TDocumentPermissionType;
begin
  Result := FPermissionType.ValueOrDefault;
end;

procedure TDescribeDocumentPermissionRequest.SetPermissionType(const Value: TDocumentPermissionType);
begin
  FPermissionType := Value;
end;

function TDescribeDocumentPermissionRequest.IsSetPermissionType: Boolean;
begin
  Result := FPermissionType.HasValue;
end;

end.
