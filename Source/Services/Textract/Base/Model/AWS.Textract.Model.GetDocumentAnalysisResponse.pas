unit AWS.Textract.Model.GetDocumentAnalysisResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.Textract.Model.Block, 
  AWS.Textract.Model.DocumentMetadata, 
  AWS.Textract.Enums, 
  AWS.Textract.Model.Warning;

type
  TGetDocumentAnalysisResponse = class;
  
  IGetDocumentAnalysisResponse = interface(IAmazonWebServiceResponse)
    function GetAnalyzeDocumentModelVersion: string;
    procedure SetAnalyzeDocumentModelVersion(const Value: string);
    function GetBlocks: TObjectList<TBlock>;
    procedure SetBlocks(const Value: TObjectList<TBlock>);
    function GetKeepBlocks: Boolean;
    procedure SetKeepBlocks(const Value: Boolean);
    function GetDocumentMetadata: TDocumentMetadata;
    procedure SetDocumentMetadata(const Value: TDocumentMetadata);
    function GetKeepDocumentMetadata: Boolean;
    procedure SetKeepDocumentMetadata(const Value: Boolean);
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
    function Obj: TGetDocumentAnalysisResponse;
    function IsSetAnalyzeDocumentModelVersion: Boolean;
    function IsSetBlocks: Boolean;
    function IsSetDocumentMetadata: Boolean;
    function IsSetJobStatus: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetStatusMessage: Boolean;
    function IsSetWarnings: Boolean;
    property AnalyzeDocumentModelVersion: string read GetAnalyzeDocumentModelVersion write SetAnalyzeDocumentModelVersion;
    property Blocks: TObjectList<TBlock> read GetBlocks write SetBlocks;
    property KeepBlocks: Boolean read GetKeepBlocks write SetKeepBlocks;
    property DocumentMetadata: TDocumentMetadata read GetDocumentMetadata write SetDocumentMetadata;
    property KeepDocumentMetadata: Boolean read GetKeepDocumentMetadata write SetKeepDocumentMetadata;
    property JobStatus: TJobStatus read GetJobStatus write SetJobStatus;
    property NextToken: string read GetNextToken write SetNextToken;
    property StatusMessage: string read GetStatusMessage write SetStatusMessage;
    property Warnings: TObjectList<TWarning> read GetWarnings write SetWarnings;
    property KeepWarnings: Boolean read GetKeepWarnings write SetKeepWarnings;
  end;
  
  TGetDocumentAnalysisResponse = class(TAmazonWebServiceResponse, IGetDocumentAnalysisResponse)
  strict private
    FAnalyzeDocumentModelVersion: Nullable<string>;
    FBlocks: TObjectList<TBlock>;
    FKeepBlocks: Boolean;
    FDocumentMetadata: TDocumentMetadata;
    FKeepDocumentMetadata: Boolean;
    FJobStatus: Nullable<TJobStatus>;
    FNextToken: Nullable<string>;
    FStatusMessage: Nullable<string>;
    FWarnings: TObjectList<TWarning>;
    FKeepWarnings: Boolean;
    function GetAnalyzeDocumentModelVersion: string;
    procedure SetAnalyzeDocumentModelVersion(const Value: string);
    function GetBlocks: TObjectList<TBlock>;
    procedure SetBlocks(const Value: TObjectList<TBlock>);
    function GetKeepBlocks: Boolean;
    procedure SetKeepBlocks(const Value: Boolean);
    function GetDocumentMetadata: TDocumentMetadata;
    procedure SetDocumentMetadata(const Value: TDocumentMetadata);
    function GetKeepDocumentMetadata: Boolean;
    procedure SetKeepDocumentMetadata(const Value: Boolean);
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
    function Obj: TGetDocumentAnalysisResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAnalyzeDocumentModelVersion: Boolean;
    function IsSetBlocks: Boolean;
    function IsSetDocumentMetadata: Boolean;
    function IsSetJobStatus: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetStatusMessage: Boolean;
    function IsSetWarnings: Boolean;
    property AnalyzeDocumentModelVersion: string read GetAnalyzeDocumentModelVersion write SetAnalyzeDocumentModelVersion;
    property Blocks: TObjectList<TBlock> read GetBlocks write SetBlocks;
    property KeepBlocks: Boolean read GetKeepBlocks write SetKeepBlocks;
    property DocumentMetadata: TDocumentMetadata read GetDocumentMetadata write SetDocumentMetadata;
    property KeepDocumentMetadata: Boolean read GetKeepDocumentMetadata write SetKeepDocumentMetadata;
    property JobStatus: TJobStatus read GetJobStatus write SetJobStatus;
    property NextToken: string read GetNextToken write SetNextToken;
    property StatusMessage: string read GetStatusMessage write SetStatusMessage;
    property Warnings: TObjectList<TWarning> read GetWarnings write SetWarnings;
    property KeepWarnings: Boolean read GetKeepWarnings write SetKeepWarnings;
  end;
  
implementation

{ TGetDocumentAnalysisResponse }

constructor TGetDocumentAnalysisResponse.Create;
begin
  inherited;
  FBlocks := TObjectList<TBlock>.Create;
  FWarnings := TObjectList<TWarning>.Create;
end;

destructor TGetDocumentAnalysisResponse.Destroy;
begin
  Warnings := nil;
  DocumentMetadata := nil;
  Blocks := nil;
  inherited;
end;

function TGetDocumentAnalysisResponse.Obj: TGetDocumentAnalysisResponse;
begin
  Result := Self;
end;

function TGetDocumentAnalysisResponse.GetAnalyzeDocumentModelVersion: string;
begin
  Result := FAnalyzeDocumentModelVersion.ValueOrDefault;
end;

procedure TGetDocumentAnalysisResponse.SetAnalyzeDocumentModelVersion(const Value: string);
begin
  FAnalyzeDocumentModelVersion := Value;
end;

function TGetDocumentAnalysisResponse.IsSetAnalyzeDocumentModelVersion: Boolean;
begin
  Result := FAnalyzeDocumentModelVersion.HasValue;
end;

function TGetDocumentAnalysisResponse.GetBlocks: TObjectList<TBlock>;
begin
  Result := FBlocks;
end;

procedure TGetDocumentAnalysisResponse.SetBlocks(const Value: TObjectList<TBlock>);
begin
  if FBlocks <> Value then
  begin
    if not KeepBlocks then
      FBlocks.Free;
    FBlocks := Value;
  end;
end;

function TGetDocumentAnalysisResponse.GetKeepBlocks: Boolean;
begin
  Result := FKeepBlocks;
end;

procedure TGetDocumentAnalysisResponse.SetKeepBlocks(const Value: Boolean);
begin
  FKeepBlocks := Value;
end;

function TGetDocumentAnalysisResponse.IsSetBlocks: Boolean;
begin
  Result := (FBlocks <> nil) and (FBlocks.Count > 0);
end;

function TGetDocumentAnalysisResponse.GetDocumentMetadata: TDocumentMetadata;
begin
  Result := FDocumentMetadata;
end;

procedure TGetDocumentAnalysisResponse.SetDocumentMetadata(const Value: TDocumentMetadata);
begin
  if FDocumentMetadata <> Value then
  begin
    if not KeepDocumentMetadata then
      FDocumentMetadata.Free;
    FDocumentMetadata := Value;
  end;
end;

function TGetDocumentAnalysisResponse.GetKeepDocumentMetadata: Boolean;
begin
  Result := FKeepDocumentMetadata;
end;

procedure TGetDocumentAnalysisResponse.SetKeepDocumentMetadata(const Value: Boolean);
begin
  FKeepDocumentMetadata := Value;
end;

function TGetDocumentAnalysisResponse.IsSetDocumentMetadata: Boolean;
begin
  Result := FDocumentMetadata <> nil;
end;

function TGetDocumentAnalysisResponse.GetJobStatus: TJobStatus;
begin
  Result := FJobStatus.ValueOrDefault;
end;

procedure TGetDocumentAnalysisResponse.SetJobStatus(const Value: TJobStatus);
begin
  FJobStatus := Value;
end;

function TGetDocumentAnalysisResponse.IsSetJobStatus: Boolean;
begin
  Result := FJobStatus.HasValue;
end;

function TGetDocumentAnalysisResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TGetDocumentAnalysisResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TGetDocumentAnalysisResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TGetDocumentAnalysisResponse.GetStatusMessage: string;
begin
  Result := FStatusMessage.ValueOrDefault;
end;

procedure TGetDocumentAnalysisResponse.SetStatusMessage(const Value: string);
begin
  FStatusMessage := Value;
end;

function TGetDocumentAnalysisResponse.IsSetStatusMessage: Boolean;
begin
  Result := FStatusMessage.HasValue;
end;

function TGetDocumentAnalysisResponse.GetWarnings: TObjectList<TWarning>;
begin
  Result := FWarnings;
end;

procedure TGetDocumentAnalysisResponse.SetWarnings(const Value: TObjectList<TWarning>);
begin
  if FWarnings <> Value then
  begin
    if not KeepWarnings then
      FWarnings.Free;
    FWarnings := Value;
  end;
end;

function TGetDocumentAnalysisResponse.GetKeepWarnings: Boolean;
begin
  Result := FKeepWarnings;
end;

procedure TGetDocumentAnalysisResponse.SetKeepWarnings(const Value: Boolean);
begin
  FKeepWarnings := Value;
end;

function TGetDocumentAnalysisResponse.IsSetWarnings: Boolean;
begin
  Result := (FWarnings <> nil) and (FWarnings.Count > 0);
end;

end.
