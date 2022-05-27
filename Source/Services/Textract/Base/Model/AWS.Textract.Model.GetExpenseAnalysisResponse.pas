unit AWS.Textract.Model.GetExpenseAnalysisResponse;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Textract.Model.DocumentMetadata, 
  AWS.Textract.Model.ExpenseDocument, 
  AWS.Textract.Enums, 
  AWS.Textract.Model.Warning;

type
  TGetExpenseAnalysisResponse = class;
  
  IGetExpenseAnalysisResponse = interface(IAmazonWebServiceResponse)
    function GetAnalyzeExpenseModelVersion: string;
    procedure SetAnalyzeExpenseModelVersion(const Value: string);
    function GetDocumentMetadata: TDocumentMetadata;
    procedure SetDocumentMetadata(const Value: TDocumentMetadata);
    function GetKeepDocumentMetadata: Boolean;
    procedure SetKeepDocumentMetadata(const Value: Boolean);
    function GetExpenseDocuments: TObjectList<TExpenseDocument>;
    procedure SetExpenseDocuments(const Value: TObjectList<TExpenseDocument>);
    function GetKeepExpenseDocuments: Boolean;
    procedure SetKeepExpenseDocuments(const Value: Boolean);
    function GetJobStatus: TJobStatus;
    procedure SetJobStatus(const Value: TJobStatus);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetStatusMessage: string;
    procedure SetStatusMessage(const Value: string);
    function GetWarnings: TObjectList<TWarning>;
    procedure SetWarnings(const Value: TObjectList<TWarning>);
    function GetKeepWarnings: Boolean;
    procedure SetKeepWarnings(const Value: Boolean);
    function Obj: TGetExpenseAnalysisResponse;
    function IsSetAnalyzeExpenseModelVersion: Boolean;
    function IsSetDocumentMetadata: Boolean;
    function IsSetExpenseDocuments: Boolean;
    function IsSetJobStatus: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetStatusMessage: Boolean;
    function IsSetWarnings: Boolean;
    property AnalyzeExpenseModelVersion: string read GetAnalyzeExpenseModelVersion write SetAnalyzeExpenseModelVersion;
    property DocumentMetadata: TDocumentMetadata read GetDocumentMetadata write SetDocumentMetadata;
    property KeepDocumentMetadata: Boolean read GetKeepDocumentMetadata write SetKeepDocumentMetadata;
    property ExpenseDocuments: TObjectList<TExpenseDocument> read GetExpenseDocuments write SetExpenseDocuments;
    property KeepExpenseDocuments: Boolean read GetKeepExpenseDocuments write SetKeepExpenseDocuments;
    property JobStatus: TJobStatus read GetJobStatus write SetJobStatus;
    property NextToken: string read GetNextToken write SetNextToken;
    property StatusMessage: string read GetStatusMessage write SetStatusMessage;
    property Warnings: TObjectList<TWarning> read GetWarnings write SetWarnings;
    property KeepWarnings: Boolean read GetKeepWarnings write SetKeepWarnings;
  end;
  
  TGetExpenseAnalysisResponse = class(TAmazonWebServiceResponse, IGetExpenseAnalysisResponse)
  strict private
    FAnalyzeExpenseModelVersion: Nullable<string>;
    FDocumentMetadata: TDocumentMetadata;
    FKeepDocumentMetadata: Boolean;
    FExpenseDocuments: TObjectList<TExpenseDocument>;
    FKeepExpenseDocuments: Boolean;
    FJobStatus: Nullable<TJobStatus>;
    FNextToken: Nullable<string>;
    FStatusMessage: Nullable<string>;
    FWarnings: TObjectList<TWarning>;
    FKeepWarnings: Boolean;
    function GetAnalyzeExpenseModelVersion: string;
    procedure SetAnalyzeExpenseModelVersion(const Value: string);
    function GetDocumentMetadata: TDocumentMetadata;
    procedure SetDocumentMetadata(const Value: TDocumentMetadata);
    function GetKeepDocumentMetadata: Boolean;
    procedure SetKeepDocumentMetadata(const Value: Boolean);
    function GetExpenseDocuments: TObjectList<TExpenseDocument>;
    procedure SetExpenseDocuments(const Value: TObjectList<TExpenseDocument>);
    function GetKeepExpenseDocuments: Boolean;
    procedure SetKeepExpenseDocuments(const Value: Boolean);
    function GetJobStatus: TJobStatus;
    procedure SetJobStatus(const Value: TJobStatus);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetStatusMessage: string;
    procedure SetStatusMessage(const Value: string);
    function GetWarnings: TObjectList<TWarning>;
    procedure SetWarnings(const Value: TObjectList<TWarning>);
    function GetKeepWarnings: Boolean;
    procedure SetKeepWarnings(const Value: Boolean);
  strict protected
    function Obj: TGetExpenseAnalysisResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAnalyzeExpenseModelVersion: Boolean;
    function IsSetDocumentMetadata: Boolean;
    function IsSetExpenseDocuments: Boolean;
    function IsSetJobStatus: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetStatusMessage: Boolean;
    function IsSetWarnings: Boolean;
    property AnalyzeExpenseModelVersion: string read GetAnalyzeExpenseModelVersion write SetAnalyzeExpenseModelVersion;
    property DocumentMetadata: TDocumentMetadata read GetDocumentMetadata write SetDocumentMetadata;
    property KeepDocumentMetadata: Boolean read GetKeepDocumentMetadata write SetKeepDocumentMetadata;
    property ExpenseDocuments: TObjectList<TExpenseDocument> read GetExpenseDocuments write SetExpenseDocuments;
    property KeepExpenseDocuments: Boolean read GetKeepExpenseDocuments write SetKeepExpenseDocuments;
    property JobStatus: TJobStatus read GetJobStatus write SetJobStatus;
    property NextToken: string read GetNextToken write SetNextToken;
    property StatusMessage: string read GetStatusMessage write SetStatusMessage;
    property Warnings: TObjectList<TWarning> read GetWarnings write SetWarnings;
    property KeepWarnings: Boolean read GetKeepWarnings write SetKeepWarnings;
  end;
  
implementation

{ TGetExpenseAnalysisResponse }

constructor TGetExpenseAnalysisResponse.Create;
begin
  inherited;
  FExpenseDocuments := TObjectList<TExpenseDocument>.Create;
  FWarnings := TObjectList<TWarning>.Create;
end;

destructor TGetExpenseAnalysisResponse.Destroy;
begin
  Warnings := nil;
  ExpenseDocuments := nil;
  DocumentMetadata := nil;
  inherited;
end;

function TGetExpenseAnalysisResponse.Obj: TGetExpenseAnalysisResponse;
begin
  Result := Self;
end;

function TGetExpenseAnalysisResponse.GetAnalyzeExpenseModelVersion: string;
begin
  Result := FAnalyzeExpenseModelVersion.ValueOrDefault;
end;

procedure TGetExpenseAnalysisResponse.SetAnalyzeExpenseModelVersion(const Value: string);
begin
  FAnalyzeExpenseModelVersion := Value;
end;

function TGetExpenseAnalysisResponse.IsSetAnalyzeExpenseModelVersion: Boolean;
begin
  Result := FAnalyzeExpenseModelVersion.HasValue;
end;

function TGetExpenseAnalysisResponse.GetDocumentMetadata: TDocumentMetadata;
begin
  Result := FDocumentMetadata;
end;

procedure TGetExpenseAnalysisResponse.SetDocumentMetadata(const Value: TDocumentMetadata);
begin
  if FDocumentMetadata <> Value then
  begin
    if not KeepDocumentMetadata then
      FDocumentMetadata.Free;
    FDocumentMetadata := Value;
  end;
end;

function TGetExpenseAnalysisResponse.GetKeepDocumentMetadata: Boolean;
begin
  Result := FKeepDocumentMetadata;
end;

procedure TGetExpenseAnalysisResponse.SetKeepDocumentMetadata(const Value: Boolean);
begin
  FKeepDocumentMetadata := Value;
end;

function TGetExpenseAnalysisResponse.IsSetDocumentMetadata: Boolean;
begin
  Result := FDocumentMetadata <> nil;
end;

function TGetExpenseAnalysisResponse.GetExpenseDocuments: TObjectList<TExpenseDocument>;
begin
  Result := FExpenseDocuments;
end;

procedure TGetExpenseAnalysisResponse.SetExpenseDocuments(const Value: TObjectList<TExpenseDocument>);
begin
  if FExpenseDocuments <> Value then
  begin
    if not KeepExpenseDocuments then
      FExpenseDocuments.Free;
    FExpenseDocuments := Value;
  end;
end;

function TGetExpenseAnalysisResponse.GetKeepExpenseDocuments: Boolean;
begin
  Result := FKeepExpenseDocuments;
end;

procedure TGetExpenseAnalysisResponse.SetKeepExpenseDocuments(const Value: Boolean);
begin
  FKeepExpenseDocuments := Value;
end;

function TGetExpenseAnalysisResponse.IsSetExpenseDocuments: Boolean;
begin
  Result := (FExpenseDocuments <> nil) and (FExpenseDocuments.Count > 0);
end;

function TGetExpenseAnalysisResponse.GetJobStatus: TJobStatus;
begin
  Result := FJobStatus.ValueOrDefault;
end;

procedure TGetExpenseAnalysisResponse.SetJobStatus(const Value: TJobStatus);
begin
  FJobStatus := Value;
end;

function TGetExpenseAnalysisResponse.IsSetJobStatus: Boolean;
begin
  Result := FJobStatus.HasValue;
end;

function TGetExpenseAnalysisResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TGetExpenseAnalysisResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TGetExpenseAnalysisResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TGetExpenseAnalysisResponse.GetStatusMessage: string;
begin
  Result := FStatusMessage.ValueOrDefault;
end;

procedure TGetExpenseAnalysisResponse.SetStatusMessage(const Value: string);
begin
  FStatusMessage := Value;
end;

function TGetExpenseAnalysisResponse.IsSetStatusMessage: Boolean;
begin
  Result := FStatusMessage.HasValue;
end;

function TGetExpenseAnalysisResponse.GetWarnings: TObjectList<TWarning>;
begin
  Result := FWarnings;
end;

procedure TGetExpenseAnalysisResponse.SetWarnings(const Value: TObjectList<TWarning>);
begin
  if FWarnings <> Value then
  begin
    if not KeepWarnings then
      FWarnings.Free;
    FWarnings := Value;
  end;
end;

function TGetExpenseAnalysisResponse.GetKeepWarnings: Boolean;
begin
  Result := FKeepWarnings;
end;

procedure TGetExpenseAnalysisResponse.SetKeepWarnings(const Value: Boolean);
begin
  FKeepWarnings := Value;
end;

function TGetExpenseAnalysisResponse.IsSetWarnings: Boolean;
begin
  Result := (FWarnings <> nil) and (FWarnings.Count > 0);
end;

end.
