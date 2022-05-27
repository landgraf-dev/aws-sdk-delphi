unit AWS.Textract.Model.AnalyzeIDResponse;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Textract.Model.DocumentMetadata, 
  AWS.Textract.Model.IdentityDocument;

type
  TAnalyzeIDResponse = class;
  
  IAnalyzeIDResponse = interface(IAmazonWebServiceResponse)
    function GetAnalyzeIDModelVersion: string;
    procedure SetAnalyzeIDModelVersion(const Value: string);
    function GetDocumentMetadata: TDocumentMetadata;
    procedure SetDocumentMetadata(const Value: TDocumentMetadata);
    function GetKeepDocumentMetadata: Boolean;
    procedure SetKeepDocumentMetadata(const Value: Boolean);
    function GetIdentityDocuments: TObjectList<TIdentityDocument>;
    procedure SetIdentityDocuments(const Value: TObjectList<TIdentityDocument>);
    function GetKeepIdentityDocuments: Boolean;
    procedure SetKeepIdentityDocuments(const Value: Boolean);
    function Obj: TAnalyzeIDResponse;
    function IsSetAnalyzeIDModelVersion: Boolean;
    function IsSetDocumentMetadata: Boolean;
    function IsSetIdentityDocuments: Boolean;
    property AnalyzeIDModelVersion: string read GetAnalyzeIDModelVersion write SetAnalyzeIDModelVersion;
    property DocumentMetadata: TDocumentMetadata read GetDocumentMetadata write SetDocumentMetadata;
    property KeepDocumentMetadata: Boolean read GetKeepDocumentMetadata write SetKeepDocumentMetadata;
    property IdentityDocuments: TObjectList<TIdentityDocument> read GetIdentityDocuments write SetIdentityDocuments;
    property KeepIdentityDocuments: Boolean read GetKeepIdentityDocuments write SetKeepIdentityDocuments;
  end;
  
  TAnalyzeIDResponse = class(TAmazonWebServiceResponse, IAnalyzeIDResponse)
  strict private
    FAnalyzeIDModelVersion: Nullable<string>;
    FDocumentMetadata: TDocumentMetadata;
    FKeepDocumentMetadata: Boolean;
    FIdentityDocuments: TObjectList<TIdentityDocument>;
    FKeepIdentityDocuments: Boolean;
    function GetAnalyzeIDModelVersion: string;
    procedure SetAnalyzeIDModelVersion(const Value: string);
    function GetDocumentMetadata: TDocumentMetadata;
    procedure SetDocumentMetadata(const Value: TDocumentMetadata);
    function GetKeepDocumentMetadata: Boolean;
    procedure SetKeepDocumentMetadata(const Value: Boolean);
    function GetIdentityDocuments: TObjectList<TIdentityDocument>;
    procedure SetIdentityDocuments(const Value: TObjectList<TIdentityDocument>);
    function GetKeepIdentityDocuments: Boolean;
    procedure SetKeepIdentityDocuments(const Value: Boolean);
  strict protected
    function Obj: TAnalyzeIDResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAnalyzeIDModelVersion: Boolean;
    function IsSetDocumentMetadata: Boolean;
    function IsSetIdentityDocuments: Boolean;
    property AnalyzeIDModelVersion: string read GetAnalyzeIDModelVersion write SetAnalyzeIDModelVersion;
    property DocumentMetadata: TDocumentMetadata read GetDocumentMetadata write SetDocumentMetadata;
    property KeepDocumentMetadata: Boolean read GetKeepDocumentMetadata write SetKeepDocumentMetadata;
    property IdentityDocuments: TObjectList<TIdentityDocument> read GetIdentityDocuments write SetIdentityDocuments;
    property KeepIdentityDocuments: Boolean read GetKeepIdentityDocuments write SetKeepIdentityDocuments;
  end;
  
implementation

{ TAnalyzeIDResponse }

constructor TAnalyzeIDResponse.Create;
begin
  inherited;
  FIdentityDocuments := TObjectList<TIdentityDocument>.Create;
end;

destructor TAnalyzeIDResponse.Destroy;
begin
  IdentityDocuments := nil;
  DocumentMetadata := nil;
  inherited;
end;

function TAnalyzeIDResponse.Obj: TAnalyzeIDResponse;
begin
  Result := Self;
end;

function TAnalyzeIDResponse.GetAnalyzeIDModelVersion: string;
begin
  Result := FAnalyzeIDModelVersion.ValueOrDefault;
end;

procedure TAnalyzeIDResponse.SetAnalyzeIDModelVersion(const Value: string);
begin
  FAnalyzeIDModelVersion := Value;
end;

function TAnalyzeIDResponse.IsSetAnalyzeIDModelVersion: Boolean;
begin
  Result := FAnalyzeIDModelVersion.HasValue;
end;

function TAnalyzeIDResponse.GetDocumentMetadata: TDocumentMetadata;
begin
  Result := FDocumentMetadata;
end;

procedure TAnalyzeIDResponse.SetDocumentMetadata(const Value: TDocumentMetadata);
begin
  if FDocumentMetadata <> Value then
  begin
    if not KeepDocumentMetadata then
      FDocumentMetadata.Free;
    FDocumentMetadata := Value;
  end;
end;

function TAnalyzeIDResponse.GetKeepDocumentMetadata: Boolean;
begin
  Result := FKeepDocumentMetadata;
end;

procedure TAnalyzeIDResponse.SetKeepDocumentMetadata(const Value: Boolean);
begin
  FKeepDocumentMetadata := Value;
end;

function TAnalyzeIDResponse.IsSetDocumentMetadata: Boolean;
begin
  Result := FDocumentMetadata <> nil;
end;

function TAnalyzeIDResponse.GetIdentityDocuments: TObjectList<TIdentityDocument>;
begin
  Result := FIdentityDocuments;
end;

procedure TAnalyzeIDResponse.SetIdentityDocuments(const Value: TObjectList<TIdentityDocument>);
begin
  if FIdentityDocuments <> Value then
  begin
    if not KeepIdentityDocuments then
      FIdentityDocuments.Free;
    FIdentityDocuments := Value;
  end;
end;

function TAnalyzeIDResponse.GetKeepIdentityDocuments: Boolean;
begin
  Result := FKeepIdentityDocuments;
end;

procedure TAnalyzeIDResponse.SetKeepIdentityDocuments(const Value: Boolean);
begin
  FKeepIdentityDocuments := Value;
end;

function TAnalyzeIDResponse.IsSetIdentityDocuments: Boolean;
begin
  Result := (FIdentityDocuments <> nil) and (FIdentityDocuments.Count > 0);
end;

end.
