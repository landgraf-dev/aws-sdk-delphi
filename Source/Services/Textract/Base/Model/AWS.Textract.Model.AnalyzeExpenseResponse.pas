unit AWS.Textract.Model.AnalyzeExpenseResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Textract.Model.DocumentMetadata, 
  AWS.Textract.Model.ExpenseDocument;

type
  TAnalyzeExpenseResponse = class;
  
  IAnalyzeExpenseResponse = interface(IAmazonWebServiceResponse)
    function GetDocumentMetadata: TDocumentMetadata;
    procedure SetDocumentMetadata(const Value: TDocumentMetadata);
    function GetKeepDocumentMetadata: Boolean;
    procedure SetKeepDocumentMetadata(const Value: Boolean);
    function GetExpenseDocuments: TObjectList<TExpenseDocument>;
    procedure SetExpenseDocuments(const Value: TObjectList<TExpenseDocument>);
    function GetKeepExpenseDocuments: Boolean;
    procedure SetKeepExpenseDocuments(const Value: Boolean);
    function Obj: TAnalyzeExpenseResponse;
    function IsSetDocumentMetadata: Boolean;
    function IsSetExpenseDocuments: Boolean;
    property DocumentMetadata: TDocumentMetadata read GetDocumentMetadata write SetDocumentMetadata;
    property KeepDocumentMetadata: Boolean read GetKeepDocumentMetadata write SetKeepDocumentMetadata;
    property ExpenseDocuments: TObjectList<TExpenseDocument> read GetExpenseDocuments write SetExpenseDocuments;
    property KeepExpenseDocuments: Boolean read GetKeepExpenseDocuments write SetKeepExpenseDocuments;
  end;
  
  TAnalyzeExpenseResponse = class(TAmazonWebServiceResponse, IAnalyzeExpenseResponse)
  strict private
    FDocumentMetadata: TDocumentMetadata;
    FKeepDocumentMetadata: Boolean;
    FExpenseDocuments: TObjectList<TExpenseDocument>;
    FKeepExpenseDocuments: Boolean;
    function GetDocumentMetadata: TDocumentMetadata;
    procedure SetDocumentMetadata(const Value: TDocumentMetadata);
    function GetKeepDocumentMetadata: Boolean;
    procedure SetKeepDocumentMetadata(const Value: Boolean);
    function GetExpenseDocuments: TObjectList<TExpenseDocument>;
    procedure SetExpenseDocuments(const Value: TObjectList<TExpenseDocument>);
    function GetKeepExpenseDocuments: Boolean;
    procedure SetKeepExpenseDocuments(const Value: Boolean);
  strict protected
    function Obj: TAnalyzeExpenseResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetDocumentMetadata: Boolean;
    function IsSetExpenseDocuments: Boolean;
    property DocumentMetadata: TDocumentMetadata read GetDocumentMetadata write SetDocumentMetadata;
    property KeepDocumentMetadata: Boolean read GetKeepDocumentMetadata write SetKeepDocumentMetadata;
    property ExpenseDocuments: TObjectList<TExpenseDocument> read GetExpenseDocuments write SetExpenseDocuments;
    property KeepExpenseDocuments: Boolean read GetKeepExpenseDocuments write SetKeepExpenseDocuments;
  end;
  
implementation

{ TAnalyzeExpenseResponse }

constructor TAnalyzeExpenseResponse.Create;
begin
  inherited;
  FExpenseDocuments := TObjectList<TExpenseDocument>.Create;
end;

destructor TAnalyzeExpenseResponse.Destroy;
begin
  ExpenseDocuments := nil;
  DocumentMetadata := nil;
  inherited;
end;

function TAnalyzeExpenseResponse.Obj: TAnalyzeExpenseResponse;
begin
  Result := Self;
end;

function TAnalyzeExpenseResponse.GetDocumentMetadata: TDocumentMetadata;
begin
  Result := FDocumentMetadata;
end;

procedure TAnalyzeExpenseResponse.SetDocumentMetadata(const Value: TDocumentMetadata);
begin
  if FDocumentMetadata <> Value then
  begin
    if not KeepDocumentMetadata then
      FDocumentMetadata.Free;
    FDocumentMetadata := Value;
  end;
end;

function TAnalyzeExpenseResponse.GetKeepDocumentMetadata: Boolean;
begin
  Result := FKeepDocumentMetadata;
end;

procedure TAnalyzeExpenseResponse.SetKeepDocumentMetadata(const Value: Boolean);
begin
  FKeepDocumentMetadata := Value;
end;

function TAnalyzeExpenseResponse.IsSetDocumentMetadata: Boolean;
begin
  Result := FDocumentMetadata <> nil;
end;

function TAnalyzeExpenseResponse.GetExpenseDocuments: TObjectList<TExpenseDocument>;
begin
  Result := FExpenseDocuments;
end;

procedure TAnalyzeExpenseResponse.SetExpenseDocuments(const Value: TObjectList<TExpenseDocument>);
begin
  if FExpenseDocuments <> Value then
  begin
    if not KeepExpenseDocuments then
      FExpenseDocuments.Free;
    FExpenseDocuments := Value;
  end;
end;

function TAnalyzeExpenseResponse.GetKeepExpenseDocuments: Boolean;
begin
  Result := FKeepExpenseDocuments;
end;

procedure TAnalyzeExpenseResponse.SetKeepExpenseDocuments(const Value: Boolean);
begin
  FKeepExpenseDocuments := Value;
end;

function TAnalyzeExpenseResponse.IsSetExpenseDocuments: Boolean;
begin
  Result := (FExpenseDocuments <> nil) and (FExpenseDocuments.Count > 0);
end;

end.
