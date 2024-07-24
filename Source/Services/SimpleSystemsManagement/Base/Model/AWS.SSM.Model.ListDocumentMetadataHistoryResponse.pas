unit AWS.SSM.Model.ListDocumentMetadataHistoryResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.SSM.Model.DocumentMetadataResponseInfo;

type
  TListDocumentMetadataHistoryResponse = class;
  
  IListDocumentMetadataHistoryResponse = interface(IAmazonWebServiceResponse)
    function GetAuthor: string;
    procedure SetAuthor(const Value: string);
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
    function GetMetadata: TDocumentMetadataResponseInfo;
    procedure SetMetadata(const Value: TDocumentMetadataResponseInfo);
    function GetKeepMetadata: Boolean;
    procedure SetKeepMetadata(const Value: Boolean);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListDocumentMetadataHistoryResponse;
    function IsSetAuthor: Boolean;
    function IsSetDocumentVersion: Boolean;
    function IsSetMetadata: Boolean;
    function IsSetName: Boolean;
    function IsSetNextToken: Boolean;
    property Author: string read GetAuthor write SetAuthor;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property Metadata: TDocumentMetadataResponseInfo read GetMetadata write SetMetadata;
    property KeepMetadata: Boolean read GetKeepMetadata write SetKeepMetadata;
    property Name: string read GetName write SetName;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListDocumentMetadataHistoryResponse = class(TAmazonWebServiceResponse, IListDocumentMetadataHistoryResponse)
  strict private
    FAuthor: Nullable<string>;
    FDocumentVersion: Nullable<string>;
    FMetadata: TDocumentMetadataResponseInfo;
    FKeepMetadata: Boolean;
    FName: Nullable<string>;
    FNextToken: Nullable<string>;
    function GetAuthor: string;
    procedure SetAuthor(const Value: string);
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
    function GetMetadata: TDocumentMetadataResponseInfo;
    procedure SetMetadata(const Value: TDocumentMetadataResponseInfo);
    function GetKeepMetadata: Boolean;
    procedure SetKeepMetadata(const Value: Boolean);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListDocumentMetadataHistoryResponse;
  public
    destructor Destroy; override;
    function IsSetAuthor: Boolean;
    function IsSetDocumentVersion: Boolean;
    function IsSetMetadata: Boolean;
    function IsSetName: Boolean;
    function IsSetNextToken: Boolean;
    property Author: string read GetAuthor write SetAuthor;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property Metadata: TDocumentMetadataResponseInfo read GetMetadata write SetMetadata;
    property KeepMetadata: Boolean read GetKeepMetadata write SetKeepMetadata;
    property Name: string read GetName write SetName;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListDocumentMetadataHistoryResponse }

destructor TListDocumentMetadataHistoryResponse.Destroy;
begin
  Metadata := nil;
  inherited;
end;

function TListDocumentMetadataHistoryResponse.Obj: TListDocumentMetadataHistoryResponse;
begin
  Result := Self;
end;

function TListDocumentMetadataHistoryResponse.GetAuthor: string;
begin
  Result := FAuthor.ValueOrDefault;
end;

procedure TListDocumentMetadataHistoryResponse.SetAuthor(const Value: string);
begin
  FAuthor := Value;
end;

function TListDocumentMetadataHistoryResponse.IsSetAuthor: Boolean;
begin
  Result := FAuthor.HasValue;
end;

function TListDocumentMetadataHistoryResponse.GetDocumentVersion: string;
begin
  Result := FDocumentVersion.ValueOrDefault;
end;

procedure TListDocumentMetadataHistoryResponse.SetDocumentVersion(const Value: string);
begin
  FDocumentVersion := Value;
end;

function TListDocumentMetadataHistoryResponse.IsSetDocumentVersion: Boolean;
begin
  Result := FDocumentVersion.HasValue;
end;

function TListDocumentMetadataHistoryResponse.GetMetadata: TDocumentMetadataResponseInfo;
begin
  Result := FMetadata;
end;

procedure TListDocumentMetadataHistoryResponse.SetMetadata(const Value: TDocumentMetadataResponseInfo);
begin
  if FMetadata <> Value then
  begin
    if not KeepMetadata then
      FMetadata.Free;
    FMetadata := Value;
  end;
end;

function TListDocumentMetadataHistoryResponse.GetKeepMetadata: Boolean;
begin
  Result := FKeepMetadata;
end;

procedure TListDocumentMetadataHistoryResponse.SetKeepMetadata(const Value: Boolean);
begin
  FKeepMetadata := Value;
end;

function TListDocumentMetadataHistoryResponse.IsSetMetadata: Boolean;
begin
  Result := FMetadata <> nil;
end;

function TListDocumentMetadataHistoryResponse.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TListDocumentMetadataHistoryResponse.SetName(const Value: string);
begin
  FName := Value;
end;

function TListDocumentMetadataHistoryResponse.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TListDocumentMetadataHistoryResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListDocumentMetadataHistoryResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListDocumentMetadataHistoryResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
