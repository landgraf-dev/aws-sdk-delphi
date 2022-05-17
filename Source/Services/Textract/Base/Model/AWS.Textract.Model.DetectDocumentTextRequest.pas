unit AWS.Textract.Model.DetectDocumentTextRequest;

interface

uses
  AWS.Textract.Model.Request, 
  AWS.Textract.Model.Document;

type
  TDetectDocumentTextRequest = class;
  
  IDetectDocumentTextRequest = interface
    function GetDocument: TDocument;
    procedure SetDocument(const Value: TDocument);
    function GetKeepDocument: Boolean;
    procedure SetKeepDocument(const Value: Boolean);
    function Obj: TDetectDocumentTextRequest;
    function IsSetDocument: Boolean;
    property Document: TDocument read GetDocument write SetDocument;
    property KeepDocument: Boolean read GetKeepDocument write SetKeepDocument;
  end;
  
  TDetectDocumentTextRequest = class(TAmazonTextractRequest, IDetectDocumentTextRequest)
  strict private
    FDocument: TDocument;
    FKeepDocument: Boolean;
    function GetDocument: TDocument;
    procedure SetDocument(const Value: TDocument);
    function GetKeepDocument: Boolean;
    procedure SetKeepDocument(const Value: Boolean);
  strict protected
    function Obj: TDetectDocumentTextRequest;
  public
    destructor Destroy; override;
    function IsSetDocument: Boolean;
    property Document: TDocument read GetDocument write SetDocument;
    property KeepDocument: Boolean read GetKeepDocument write SetKeepDocument;
  end;
  
implementation

{ TDetectDocumentTextRequest }

destructor TDetectDocumentTextRequest.Destroy;
begin
  Document := nil;
  inherited;
end;

function TDetectDocumentTextRequest.Obj: TDetectDocumentTextRequest;
begin
  Result := Self;
end;

function TDetectDocumentTextRequest.GetDocument: TDocument;
begin
  Result := FDocument;
end;

procedure TDetectDocumentTextRequest.SetDocument(const Value: TDocument);
begin
  if FDocument <> Value then
  begin
    if not KeepDocument then
      FDocument.Free;
    FDocument := Value;
  end;
end;

function TDetectDocumentTextRequest.GetKeepDocument: Boolean;
begin
  Result := FKeepDocument;
end;

procedure TDetectDocumentTextRequest.SetKeepDocument(const Value: Boolean);
begin
  FKeepDocument := Value;
end;

function TDetectDocumentTextRequest.IsSetDocument: Boolean;
begin
  Result := FDocument <> nil;
end;

end.
