unit AWS.Textract.Model.AnalyzeExpenseRequest;

interface

uses
  AWS.Textract.Model.Request, 
  AWS.Textract.Model.Document;

type
  TAnalyzeExpenseRequest = class;
  
  IAnalyzeExpenseRequest = interface
    function GetDocument: TDocument;
    procedure SetDocument(const Value: TDocument);
    function GetKeepDocument: Boolean;
    procedure SetKeepDocument(const Value: Boolean);
    function Obj: TAnalyzeExpenseRequest;
    function IsSetDocument: Boolean;
    property Document: TDocument read GetDocument write SetDocument;
    property KeepDocument: Boolean read GetKeepDocument write SetKeepDocument;
  end;
  
  TAnalyzeExpenseRequest = class(TAmazonTextractRequest, IAnalyzeExpenseRequest)
  strict private
    FDocument: TDocument;
    FKeepDocument: Boolean;
    function GetDocument: TDocument;
    procedure SetDocument(const Value: TDocument);
    function GetKeepDocument: Boolean;
    procedure SetKeepDocument(const Value: Boolean);
  strict protected
    function Obj: TAnalyzeExpenseRequest;
  public
    destructor Destroy; override;
    function IsSetDocument: Boolean;
    property Document: TDocument read GetDocument write SetDocument;
    property KeepDocument: Boolean read GetKeepDocument write SetKeepDocument;
  end;
  
implementation

{ TAnalyzeExpenseRequest }

destructor TAnalyzeExpenseRequest.Destroy;
begin
  Document := nil;
  inherited;
end;

function TAnalyzeExpenseRequest.Obj: TAnalyzeExpenseRequest;
begin
  Result := Self;
end;

function TAnalyzeExpenseRequest.GetDocument: TDocument;
begin
  Result := FDocument;
end;

procedure TAnalyzeExpenseRequest.SetDocument(const Value: TDocument);
begin
  if FDocument <> Value then
  begin
    if not KeepDocument then
      FDocument.Free;
    FDocument := Value;
  end;
end;

function TAnalyzeExpenseRequest.GetKeepDocument: Boolean;
begin
  Result := FKeepDocument;
end;

procedure TAnalyzeExpenseRequest.SetKeepDocument(const Value: Boolean);
begin
  FKeepDocument := Value;
end;

function TAnalyzeExpenseRequest.IsSetDocument: Boolean;
begin
  Result := FDocument <> nil;
end;

end.
