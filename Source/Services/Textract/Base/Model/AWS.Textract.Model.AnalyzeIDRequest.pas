unit AWS.Textract.Model.AnalyzeIDRequest;

interface

uses
  System.Generics.Collections, 
  AWS.Textract.Model.Request, 
  AWS.Textract.Model.Document;

type
  TAnalyzeIDRequest = class;
  
  IAnalyzeIDRequest = interface
    function GetDocumentPages: TObjectList<TDocument>;
    procedure SetDocumentPages(const Value: TObjectList<TDocument>);
    function GetKeepDocumentPages: Boolean;
    procedure SetKeepDocumentPages(const Value: Boolean);
    function Obj: TAnalyzeIDRequest;
    function IsSetDocumentPages: Boolean;
    property DocumentPages: TObjectList<TDocument> read GetDocumentPages write SetDocumentPages;
    property KeepDocumentPages: Boolean read GetKeepDocumentPages write SetKeepDocumentPages;
  end;
  
  TAnalyzeIDRequest = class(TAmazonTextractRequest, IAnalyzeIDRequest)
  strict private
    FDocumentPages: TObjectList<TDocument>;
    FKeepDocumentPages: Boolean;
    function GetDocumentPages: TObjectList<TDocument>;
    procedure SetDocumentPages(const Value: TObjectList<TDocument>);
    function GetKeepDocumentPages: Boolean;
    procedure SetKeepDocumentPages(const Value: Boolean);
  strict protected
    function Obj: TAnalyzeIDRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetDocumentPages: Boolean;
    property DocumentPages: TObjectList<TDocument> read GetDocumentPages write SetDocumentPages;
    property KeepDocumentPages: Boolean read GetKeepDocumentPages write SetKeepDocumentPages;
  end;
  
implementation

{ TAnalyzeIDRequest }

constructor TAnalyzeIDRequest.Create;
begin
  inherited;
  FDocumentPages := TObjectList<TDocument>.Create;
end;

destructor TAnalyzeIDRequest.Destroy;
begin
  DocumentPages := nil;
  inherited;
end;

function TAnalyzeIDRequest.Obj: TAnalyzeIDRequest;
begin
  Result := Self;
end;

function TAnalyzeIDRequest.GetDocumentPages: TObjectList<TDocument>;
begin
  Result := FDocumentPages;
end;

procedure TAnalyzeIDRequest.SetDocumentPages(const Value: TObjectList<TDocument>);
begin
  if FDocumentPages <> Value then
  begin
    if not KeepDocumentPages then
      FDocumentPages.Free;
    FDocumentPages := Value;
  end;
end;

function TAnalyzeIDRequest.GetKeepDocumentPages: Boolean;
begin
  Result := FKeepDocumentPages;
end;

procedure TAnalyzeIDRequest.SetKeepDocumentPages(const Value: Boolean);
begin
  FKeepDocumentPages := Value;
end;

function TAnalyzeIDRequest.IsSetDocumentPages: Boolean;
begin
  Result := (FDocumentPages <> nil) and (FDocumentPages.Count > 0);
end;

end.
