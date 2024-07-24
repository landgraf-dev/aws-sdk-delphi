unit AWS.SSM.Model.ListAssociationVersionsRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TListAssociationVersionsRequest = class;
  
  IListAssociationVersionsRequest = interface
    function GetAssociationId: string;
    procedure SetAssociationId(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListAssociationVersionsRequest;
    function IsSetAssociationId: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property AssociationId: string read GetAssociationId write SetAssociationId;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListAssociationVersionsRequest = class(TAmazonSimpleSystemsManagementRequest, IListAssociationVersionsRequest)
  strict private
    FAssociationId: Nullable<string>;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    function GetAssociationId: string;
    procedure SetAssociationId(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListAssociationVersionsRequest;
  public
    function IsSetAssociationId: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property AssociationId: string read GetAssociationId write SetAssociationId;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListAssociationVersionsRequest }

function TListAssociationVersionsRequest.Obj: TListAssociationVersionsRequest;
begin
  Result := Self;
end;

function TListAssociationVersionsRequest.GetAssociationId: string;
begin
  Result := FAssociationId.ValueOrDefault;
end;

procedure TListAssociationVersionsRequest.SetAssociationId(const Value: string);
begin
  FAssociationId := Value;
end;

function TListAssociationVersionsRequest.IsSetAssociationId: Boolean;
begin
  Result := FAssociationId.HasValue;
end;

function TListAssociationVersionsRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TListAssociationVersionsRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TListAssociationVersionsRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TListAssociationVersionsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListAssociationVersionsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListAssociationVersionsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
