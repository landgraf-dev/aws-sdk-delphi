unit AWS.Textract.Model.AnalyzeDocumentRequest;

interface

uses
  System.Generics.Collections, 
  AWS.Textract.Model.Request, 
  AWS.Textract.Model.Document, 
  AWS.Textract.Model.HumanLoopConfig, 
  AWS.Textract.Model.QueriesConfig;

type
  TAnalyzeDocumentRequest = class;
  
  IAnalyzeDocumentRequest = interface
    function GetDocument: TDocument;
    procedure SetDocument(const Value: TDocument);
    function GetKeepDocument: Boolean;
    procedure SetKeepDocument(const Value: Boolean);
    function GetFeatureTypes: TList<string>;
    procedure SetFeatureTypes(const Value: TList<string>);
    function GetKeepFeatureTypes: Boolean;
    procedure SetKeepFeatureTypes(const Value: Boolean);
    function GetHumanLoopConfig: THumanLoopConfig;
    procedure SetHumanLoopConfig(const Value: THumanLoopConfig);
    function GetKeepHumanLoopConfig: Boolean;
    procedure SetKeepHumanLoopConfig(const Value: Boolean);
    function GetQueriesConfig: TQueriesConfig;
    procedure SetQueriesConfig(const Value: TQueriesConfig);
    function GetKeepQueriesConfig: Boolean;
    procedure SetKeepQueriesConfig(const Value: Boolean);
    function Obj: TAnalyzeDocumentRequest;
    function IsSetDocument: Boolean;
    function IsSetFeatureTypes: Boolean;
    function IsSetHumanLoopConfig: Boolean;
    function IsSetQueriesConfig: Boolean;
    property Document: TDocument read GetDocument write SetDocument;
    property KeepDocument: Boolean read GetKeepDocument write SetKeepDocument;
    property FeatureTypes: TList<string> read GetFeatureTypes write SetFeatureTypes;
    property KeepFeatureTypes: Boolean read GetKeepFeatureTypes write SetKeepFeatureTypes;
    property HumanLoopConfig: THumanLoopConfig read GetHumanLoopConfig write SetHumanLoopConfig;
    property KeepHumanLoopConfig: Boolean read GetKeepHumanLoopConfig write SetKeepHumanLoopConfig;
    property QueriesConfig: TQueriesConfig read GetQueriesConfig write SetQueriesConfig;
    property KeepQueriesConfig: Boolean read GetKeepQueriesConfig write SetKeepQueriesConfig;
  end;
  
  TAnalyzeDocumentRequest = class(TAmazonTextractRequest, IAnalyzeDocumentRequest)
  strict private
    FDocument: TDocument;
    FKeepDocument: Boolean;
    FFeatureTypes: TList<string>;
    FKeepFeatureTypes: Boolean;
    FHumanLoopConfig: THumanLoopConfig;
    FKeepHumanLoopConfig: Boolean;
    FQueriesConfig: TQueriesConfig;
    FKeepQueriesConfig: Boolean;
    function GetDocument: TDocument;
    procedure SetDocument(const Value: TDocument);
    function GetKeepDocument: Boolean;
    procedure SetKeepDocument(const Value: Boolean);
    function GetFeatureTypes: TList<string>;
    procedure SetFeatureTypes(const Value: TList<string>);
    function GetKeepFeatureTypes: Boolean;
    procedure SetKeepFeatureTypes(const Value: Boolean);
    function GetHumanLoopConfig: THumanLoopConfig;
    procedure SetHumanLoopConfig(const Value: THumanLoopConfig);
    function GetKeepHumanLoopConfig: Boolean;
    procedure SetKeepHumanLoopConfig(const Value: Boolean);
    function GetQueriesConfig: TQueriesConfig;
    procedure SetQueriesConfig(const Value: TQueriesConfig);
    function GetKeepQueriesConfig: Boolean;
    procedure SetKeepQueriesConfig(const Value: Boolean);
  strict protected
    function Obj: TAnalyzeDocumentRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetDocument: Boolean;
    function IsSetFeatureTypes: Boolean;
    function IsSetHumanLoopConfig: Boolean;
    function IsSetQueriesConfig: Boolean;
    property Document: TDocument read GetDocument write SetDocument;
    property KeepDocument: Boolean read GetKeepDocument write SetKeepDocument;
    property FeatureTypes: TList<string> read GetFeatureTypes write SetFeatureTypes;
    property KeepFeatureTypes: Boolean read GetKeepFeatureTypes write SetKeepFeatureTypes;
    property HumanLoopConfig: THumanLoopConfig read GetHumanLoopConfig write SetHumanLoopConfig;
    property KeepHumanLoopConfig: Boolean read GetKeepHumanLoopConfig write SetKeepHumanLoopConfig;
    property QueriesConfig: TQueriesConfig read GetQueriesConfig write SetQueriesConfig;
    property KeepQueriesConfig: Boolean read GetKeepQueriesConfig write SetKeepQueriesConfig;
  end;
  
implementation

{ TAnalyzeDocumentRequest }

constructor TAnalyzeDocumentRequest.Create;
begin
  inherited;
  FFeatureTypes := TList<string>.Create;
end;

destructor TAnalyzeDocumentRequest.Destroy;
begin
  QueriesConfig := nil;
  HumanLoopConfig := nil;
  FeatureTypes := nil;
  Document := nil;
  inherited;
end;

function TAnalyzeDocumentRequest.Obj: TAnalyzeDocumentRequest;
begin
  Result := Self;
end;

function TAnalyzeDocumentRequest.GetDocument: TDocument;
begin
  Result := FDocument;
end;

procedure TAnalyzeDocumentRequest.SetDocument(const Value: TDocument);
begin
  if FDocument <> Value then
  begin
    if not KeepDocument then
      FDocument.Free;
    FDocument := Value;
  end;
end;

function TAnalyzeDocumentRequest.GetKeepDocument: Boolean;
begin
  Result := FKeepDocument;
end;

procedure TAnalyzeDocumentRequest.SetKeepDocument(const Value: Boolean);
begin
  FKeepDocument := Value;
end;

function TAnalyzeDocumentRequest.IsSetDocument: Boolean;
begin
  Result := FDocument <> nil;
end;

function TAnalyzeDocumentRequest.GetFeatureTypes: TList<string>;
begin
  Result := FFeatureTypes;
end;

procedure TAnalyzeDocumentRequest.SetFeatureTypes(const Value: TList<string>);
begin
  if FFeatureTypes <> Value then
  begin
    if not KeepFeatureTypes then
      FFeatureTypes.Free;
    FFeatureTypes := Value;
  end;
end;

function TAnalyzeDocumentRequest.GetKeepFeatureTypes: Boolean;
begin
  Result := FKeepFeatureTypes;
end;

procedure TAnalyzeDocumentRequest.SetKeepFeatureTypes(const Value: Boolean);
begin
  FKeepFeatureTypes := Value;
end;

function TAnalyzeDocumentRequest.IsSetFeatureTypes: Boolean;
begin
  Result := (FFeatureTypes <> nil) and (FFeatureTypes.Count > 0);
end;

function TAnalyzeDocumentRequest.GetHumanLoopConfig: THumanLoopConfig;
begin
  Result := FHumanLoopConfig;
end;

procedure TAnalyzeDocumentRequest.SetHumanLoopConfig(const Value: THumanLoopConfig);
begin
  if FHumanLoopConfig <> Value then
  begin
    if not KeepHumanLoopConfig then
      FHumanLoopConfig.Free;
    FHumanLoopConfig := Value;
  end;
end;

function TAnalyzeDocumentRequest.GetKeepHumanLoopConfig: Boolean;
begin
  Result := FKeepHumanLoopConfig;
end;

procedure TAnalyzeDocumentRequest.SetKeepHumanLoopConfig(const Value: Boolean);
begin
  FKeepHumanLoopConfig := Value;
end;

function TAnalyzeDocumentRequest.IsSetHumanLoopConfig: Boolean;
begin
  Result := FHumanLoopConfig <> nil;
end;

function TAnalyzeDocumentRequest.GetQueriesConfig: TQueriesConfig;
begin
  Result := FQueriesConfig;
end;

procedure TAnalyzeDocumentRequest.SetQueriesConfig(const Value: TQueriesConfig);
begin
  if FQueriesConfig <> Value then
  begin
    if not KeepQueriesConfig then
      FQueriesConfig.Free;
    FQueriesConfig := Value;
  end;
end;

function TAnalyzeDocumentRequest.GetKeepQueriesConfig: Boolean;
begin
  Result := FKeepQueriesConfig;
end;

procedure TAnalyzeDocumentRequest.SetKeepQueriesConfig(const Value: Boolean);
begin
  FKeepQueriesConfig := Value;
end;

function TAnalyzeDocumentRequest.IsSetQueriesConfig: Boolean;
begin
  Result := FQueriesConfig <> nil;
end;

end.
