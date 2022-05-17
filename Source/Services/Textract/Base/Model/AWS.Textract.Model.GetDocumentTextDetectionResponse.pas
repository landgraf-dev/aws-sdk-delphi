unit AWS.Textract.Model.GetDocumentTextDetectionResponse;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  AWS.Textract.Model.Block, 
  AWS.Textract.Model.DocumentMetadata, 
  AWS.Textract.Enums, 
  AWS.Textract.Model.Warning;

type
  TGetDocumentTextDetectionResponse = class;
  
  IGetDocumentTextDetectionResponse = interface(IAmazonWebServiceResponse)
    function GetBlocks: TObjectList<TBlock>;
    procedure SetBlocks(const Value: TObjectList<TBlock>);
    function GetKeepBlocks: Boolean;
    procedure SetKeepBlocks(const Value: Boolean);
    function GetDetectDocumentTextModelVersion: string;
    procedure SetDetectDocumentTextModelVersion(const Value: string);
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
    function Obj: TGetDocumentTextDetectionResponse;
    function IsSetBlocks: Boolean;
    function IsSetDetectDocumentTextModelVersion: Boolean;
    function IsSetDocumentMetadata: Boolean;
    function IsSetJobStatus: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetStatusMessage: Boolean;
    function IsSetWarnings: Boolean;
    property Blocks: TObjectList<TBlock> read GetBlocks write SetBlocks;
    property KeepBlocks: Boolean read GetKeepBlocks write SetKeepBlocks;
    property DetectDocumentTextModelVersion: string read GetDetectDocumentTextModelVersion write SetDetectDocumentTextModelVersion;
    property DocumentMetadata: TDocumentMetadata read GetDocumentMetadata write SetDocumentMetadata;
    property KeepDocumentMetadata: Boolean read GetKeepDocumentMetadata write SetKeepDocumentMetadata;
    property JobStatus: TJobStatus read GetJobStatus write SetJobStatus;
    property NextToken: string read GetNextToken write SetNextToken;
    property StatusMessage: string read GetStatusMessage write SetStatusMessage;
    property Warnings: TObjectList<TWarning> read GetWarnings write SetWarnings;
    property KeepWarnings: Boolean read GetKeepWarnings write SetKeepWarnings;
  end;
  
  TGetDocumentTextDetectionResponse = class(TAmazonWebServiceResponse, IGetDocumentTextDetectionResponse)
  strict private
    FBlocks: TObjectList<TBlock>;
    FKeepBlocks: Boolean;
    FDetectDocumentTextModelVersion: Nullable<string>;
    FDocumentMetadata: TDocumentMetadata;
    FKeepDocumentMetadata: Boolean;
    FJobStatus: Nullable<TJobStatus>;
    FNextToken: Nullable<string>;
    FStatusMessage: Nullable<string>;
    FWarnings: TObjectList<TWarning>;
    FKeepWarnings: Boolean;
    function GetBlocks: TObjectList<TBlock>;
    procedure SetBlocks(const Value: TObjectList<TBlock>);
    function GetKeepBlocks: Boolean;
    procedure SetKeepBlocks(const Value: Boolean);
    function GetDetectDocumentTextModelVersion: string;
    procedure SetDetectDocumentTextModelVersion(const Value: string);
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
    function Obj: TGetDocumentTextDetectionResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetBlocks: Boolean;
    function IsSetDetectDocumentTextModelVersion: Boolean;
    function IsSetDocumentMetadata: Boolean;
    function IsSetJobStatus: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetStatusMessage: Boolean;
    function IsSetWarnings: Boolean;
    property Blocks: TObjectList<TBlock> read GetBlocks write SetBlocks;
    property KeepBlocks: Boolean read GetKeepBlocks write SetKeepBlocks;
    property DetectDocumentTextModelVersion: string read GetDetectDocumentTextModelVersion write SetDetectDocumentTextModelVersion;
    property DocumentMetadata: TDocumentMetadata read GetDocumentMetadata write SetDocumentMetadata;
    property KeepDocumentMetadata: Boolean read GetKeepDocumentMetadata write SetKeepDocumentMetadata;
    property JobStatus: TJobStatus read GetJobStatus write SetJobStatus;
    property NextToken: string read GetNextToken write SetNextToken;
    property StatusMessage: string read GetStatusMessage write SetStatusMessage;
    property Warnings: TObjectList<TWarning> read GetWarnings write SetWarnings;
    property KeepWarnings: Boolean read GetKeepWarnings write SetKeepWarnings;
  end;
  
implementation

{ TGetDocumentTextDetectionResponse }

constructor TGetDocumentTextDetectionResponse.Create;
begin
  inherited;
  FBlocks := TObjectList<TBlock>.Create;
  FWarnings := TObjectList<TWarning>.Create;
end;

destructor TGetDocumentTextDetectionResponse.Destroy;
begin
  Warnings := nil;
  DocumentMetadata := nil;
  Blocks := nil;
  inherited;
end;

function TGetDocumentTextDetectionResponse.Obj: TGetDocumentTextDetectionResponse;
begin
  Result := Self;
end;

function TGetDocumentTextDetectionResponse.GetBlocks: TObjectList<TBlock>;
begin
  Result := FBlocks;
end;

procedure TGetDocumentTextDetectionResponse.SetBlocks(const Value: TObjectList<TBlock>);
begin
  if FBlocks <> Value then
  begin
    if not KeepBlocks then
      FBlocks.Free;
    FBlocks := Value;
  end;
end;

function TGetDocumentTextDetectionResponse.GetKeepBlocks: Boolean;
begin
  Result := FKeepBlocks;
end;

procedure TGetDocumentTextDetectionResponse.SetKeepBlocks(const Value: Boolean);
begin
  FKeepBlocks := Value;
end;

function TGetDocumentTextDetectionResponse.IsSetBlocks: Boolean;
begin
  Result := (FBlocks <> nil) and (FBlocks.Count > 0);
end;

function TGetDocumentTextDetectionResponse.GetDetectDocumentTextModelVersion: string;
begin
  Result := FDetectDocumentTextModelVersion.ValueOrDefault;
end;

procedure TGetDocumentTextDetectionResponse.SetDetectDocumentTextModelVersion(const Value: string);
begin
  FDetectDocumentTextModelVersion := Value;
end;

function TGetDocumentTextDetectionResponse.IsSetDetectDocumentTextModelVersion: Boolean;
begin
  Result := FDetectDocumentTextModelVersion.HasValue;
end;

function TGetDocumentTextDetectionResponse.GetDocumentMetadata: TDocumentMetadata;
begin
  Result := FDocumentMetadata;
end;

procedure TGetDocumentTextDetectionResponse.SetDocumentMetadata(const Value: TDocumentMetadata);
begin
  if FDocumentMetadata <> Value then
  begin
    if not KeepDocumentMetadata then
      FDocumentMetadata.Free;
    FDocumentMetadata := Value;
  end;
end;

function TGetDocumentTextDetectionResponse.GetKeepDocumentMetadata: Boolean;
begin
  Result := FKeepDocumentMetadata;
end;

procedure TGetDocumentTextDetectionResponse.SetKeepDocumentMetadata(const Value: Boolean);
begin
  FKeepDocumentMetadata := Value;
end;

function TGetDocumentTextDetectionResponse.IsSetDocumentMetadata: Boolean;
begin
  Result := FDocumentMetadata <> nil;
end;

function TGetDocumentTextDetectionResponse.GetJobStatus: TJobStatus;
begin
  Result := FJobStatus.ValueOrDefault;
end;

procedure TGetDocumentTextDetectionResponse.SetJobStatus(const Value: TJobStatus);
begin
  FJobStatus := Value;
end;

function TGetDocumentTextDetectionResponse.IsSetJobStatus: Boolean;
begin
  Result := FJobStatus.HasValue;
end;

function TGetDocumentTextDetectionResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TGetDocumentTextDetectionResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TGetDocumentTextDetectionResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TGetDocumentTextDetectionResponse.GetStatusMessage: string;
begin
  Result := FStatusMessage.ValueOrDefault;
end;

procedure TGetDocumentTextDetectionResponse.SetStatusMessage(const Value: string);
begin
  FStatusMessage := Value;
end;

function TGetDocumentTextDetectionResponse.IsSetStatusMessage: Boolean;
begin
  Result := FStatusMessage.HasValue;
end;

function TGetDocumentTextDetectionResponse.GetWarnings: TObjectList<TWarning>;
begin
  Result := FWarnings;
end;

procedure TGetDocumentTextDetectionResponse.SetWarnings(const Value: TObjectList<TWarning>);
begin
  if FWarnings <> Value then
  begin
    if not KeepWarnings then
      FWarnings.Free;
    FWarnings := Value;
  end;
end;

function TGetDocumentTextDetectionResponse.GetKeepWarnings: Boolean;
begin
  Result := FKeepWarnings;
end;

procedure TGetDocumentTextDetectionResponse.SetKeepWarnings(const Value: Boolean);
begin
  FKeepWarnings := Value;
end;

function TGetDocumentTextDetectionResponse.IsSetWarnings: Boolean;
begin
  Result := (FWarnings <> nil) and (FWarnings.Count > 0);
end;

end.
