unit AWS.SSM.Model.ListDocumentMetadataHistoryRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TListDocumentMetadataHistoryRequest = class;
  
  IListDocumentMetadataHistoryRequest = interface
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetMetadata: TDocumentMetadataEnum;
    procedure SetMetadata(const Value: TDocumentMetadataEnum);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListDocumentMetadataHistoryRequest;
    function IsSetDocumentVersion: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetMetadata: Boolean;
    function IsSetName: Boolean;
    function IsSetNextToken: Boolean;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property Metadata: TDocumentMetadataEnum read GetMetadata write SetMetadata;
    property Name: string read GetName write SetName;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListDocumentMetadataHistoryRequest = class(TAmazonSimpleSystemsManagementRequest, IListDocumentMetadataHistoryRequest)
  strict private
    FDocumentVersion: Nullable<string>;
    FMaxResults: Nullable<Integer>;
    FMetadata: Nullable<TDocumentMetadataEnum>;
    FName: Nullable<string>;
    FNextToken: Nullable<string>;
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetMetadata: TDocumentMetadataEnum;
    procedure SetMetadata(const Value: TDocumentMetadataEnum);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListDocumentMetadataHistoryRequest;
  public
    function IsSetDocumentVersion: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetMetadata: Boolean;
    function IsSetName: Boolean;
    function IsSetNextToken: Boolean;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property Metadata: TDocumentMetadataEnum read GetMetadata write SetMetadata;
    property Name: string read GetName write SetName;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListDocumentMetadataHistoryRequest }

function TListDocumentMetadataHistoryRequest.Obj: TListDocumentMetadataHistoryRequest;
begin
  Result := Self;
end;

function TListDocumentMetadataHistoryRequest.GetDocumentVersion: string;
begin
  Result := FDocumentVersion.ValueOrDefault;
end;

procedure TListDocumentMetadataHistoryRequest.SetDocumentVersion(const Value: string);
begin
  FDocumentVersion := Value;
end;

function TListDocumentMetadataHistoryRequest.IsSetDocumentVersion: Boolean;
begin
  Result := FDocumentVersion.HasValue;
end;

function TListDocumentMetadataHistoryRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TListDocumentMetadataHistoryRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TListDocumentMetadataHistoryRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TListDocumentMetadataHistoryRequest.GetMetadata: TDocumentMetadataEnum;
begin
  Result := FMetadata.ValueOrDefault;
end;

procedure TListDocumentMetadataHistoryRequest.SetMetadata(const Value: TDocumentMetadataEnum);
begin
  FMetadata := Value;
end;

function TListDocumentMetadataHistoryRequest.IsSetMetadata: Boolean;
begin
  Result := FMetadata.HasValue;
end;

function TListDocumentMetadataHistoryRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TListDocumentMetadataHistoryRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TListDocumentMetadataHistoryRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TListDocumentMetadataHistoryRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListDocumentMetadataHistoryRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListDocumentMetadataHistoryRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
