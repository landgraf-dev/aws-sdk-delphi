unit AWS.SSM.Model.ListDocumentVersionsRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TListDocumentVersionsRequest = class;
  
  IListDocumentVersionsRequest = interface
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListDocumentVersionsRequest;
    function IsSetMaxResults: Boolean;
    function IsSetName: Boolean;
    function IsSetNextToken: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property Name: string read GetName write SetName;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListDocumentVersionsRequest = class(TAmazonSimpleSystemsManagementRequest, IListDocumentVersionsRequest)
  strict private
    FMaxResults: Nullable<Integer>;
    FName: Nullable<string>;
    FNextToken: Nullable<string>;
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListDocumentVersionsRequest;
  public
    function IsSetMaxResults: Boolean;
    function IsSetName: Boolean;
    function IsSetNextToken: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property Name: string read GetName write SetName;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListDocumentVersionsRequest }

function TListDocumentVersionsRequest.Obj: TListDocumentVersionsRequest;
begin
  Result := Self;
end;

function TListDocumentVersionsRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TListDocumentVersionsRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TListDocumentVersionsRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TListDocumentVersionsRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TListDocumentVersionsRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TListDocumentVersionsRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TListDocumentVersionsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListDocumentVersionsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListDocumentVersionsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
