unit AWS.Rekognition.Model.ProjectVersionDescription;

interface

uses
  AWS.Nullable, 
  AWS.Rekognition.Model.EvaluationResult, 
  AWS.Rekognition.Model.GroundTruthManifest, 
  AWS.Rekognition.Model.OutputConfig, 
  AWS.Rekognition.Enums, 
  AWS.Rekognition.Model.TestingDataResult, 
  AWS.Rekognition.Model.TrainingDataResult;

type
  TProjectVersionDescription = class;
  
  IProjectVersionDescription = interface
    function GetBillableTrainingTimeInSeconds: Int64;
    procedure SetBillableTrainingTimeInSeconds(const Value: Int64);
    function GetCreationTimestamp: TDateTime;
    procedure SetCreationTimestamp(const Value: TDateTime);
    function GetEvaluationResult: TEvaluationResult;
    procedure SetEvaluationResult(const Value: TEvaluationResult);
    function GetKeepEvaluationResult: Boolean;
    procedure SetKeepEvaluationResult(const Value: Boolean);
    function GetKmsKeyId: string;
    procedure SetKmsKeyId(const Value: string);
    function GetManifestSummary: TGroundTruthManifest;
    procedure SetManifestSummary(const Value: TGroundTruthManifest);
    function GetKeepManifestSummary: Boolean;
    procedure SetKeepManifestSummary(const Value: Boolean);
    function GetMinInferenceUnits: Integer;
    procedure SetMinInferenceUnits(const Value: Integer);
    function GetOutputConfig: TOutputConfig;
    procedure SetOutputConfig(const Value: TOutputConfig);
    function GetKeepOutputConfig: Boolean;
    procedure SetKeepOutputConfig(const Value: Boolean);
    function GetProjectVersionArn: string;
    procedure SetProjectVersionArn(const Value: string);
    function GetStatus: TProjectVersionStatus;
    procedure SetStatus(const Value: TProjectVersionStatus);
    function GetStatusMessage: string;
    procedure SetStatusMessage(const Value: string);
    function GetTestingDataResult: TTestingDataResult;
    procedure SetTestingDataResult(const Value: TTestingDataResult);
    function GetKeepTestingDataResult: Boolean;
    procedure SetKeepTestingDataResult(const Value: Boolean);
    function GetTrainingDataResult: TTrainingDataResult;
    procedure SetTrainingDataResult(const Value: TTrainingDataResult);
    function GetKeepTrainingDataResult: Boolean;
    procedure SetKeepTrainingDataResult(const Value: Boolean);
    function GetTrainingEndTimestamp: TDateTime;
    procedure SetTrainingEndTimestamp(const Value: TDateTime);
    function Obj: TProjectVersionDescription;
    function IsSetBillableTrainingTimeInSeconds: Boolean;
    function IsSetCreationTimestamp: Boolean;
    function IsSetEvaluationResult: Boolean;
    function IsSetKmsKeyId: Boolean;
    function IsSetManifestSummary: Boolean;
    function IsSetMinInferenceUnits: Boolean;
    function IsSetOutputConfig: Boolean;
    function IsSetProjectVersionArn: Boolean;
    function IsSetStatus: Boolean;
    function IsSetStatusMessage: Boolean;
    function IsSetTestingDataResult: Boolean;
    function IsSetTrainingDataResult: Boolean;
    function IsSetTrainingEndTimestamp: Boolean;
    property BillableTrainingTimeInSeconds: Int64 read GetBillableTrainingTimeInSeconds write SetBillableTrainingTimeInSeconds;
    property CreationTimestamp: TDateTime read GetCreationTimestamp write SetCreationTimestamp;
    property EvaluationResult: TEvaluationResult read GetEvaluationResult write SetEvaluationResult;
    property KeepEvaluationResult: Boolean read GetKeepEvaluationResult write SetKeepEvaluationResult;
    property KmsKeyId: string read GetKmsKeyId write SetKmsKeyId;
    property ManifestSummary: TGroundTruthManifest read GetManifestSummary write SetManifestSummary;
    property KeepManifestSummary: Boolean read GetKeepManifestSummary write SetKeepManifestSummary;
    property MinInferenceUnits: Integer read GetMinInferenceUnits write SetMinInferenceUnits;
    property OutputConfig: TOutputConfig read GetOutputConfig write SetOutputConfig;
    property KeepOutputConfig: Boolean read GetKeepOutputConfig write SetKeepOutputConfig;
    property ProjectVersionArn: string read GetProjectVersionArn write SetProjectVersionArn;
    property Status: TProjectVersionStatus read GetStatus write SetStatus;
    property StatusMessage: string read GetStatusMessage write SetStatusMessage;
    property TestingDataResult: TTestingDataResult read GetTestingDataResult write SetTestingDataResult;
    property KeepTestingDataResult: Boolean read GetKeepTestingDataResult write SetKeepTestingDataResult;
    property TrainingDataResult: TTrainingDataResult read GetTrainingDataResult write SetTrainingDataResult;
    property KeepTrainingDataResult: Boolean read GetKeepTrainingDataResult write SetKeepTrainingDataResult;
    property TrainingEndTimestamp: TDateTime read GetTrainingEndTimestamp write SetTrainingEndTimestamp;
  end;
  
  TProjectVersionDescription = class
  strict private
    FBillableTrainingTimeInSeconds: Nullable<Int64>;
    FCreationTimestamp: Nullable<TDateTime>;
    FEvaluationResult: TEvaluationResult;
    FKeepEvaluationResult: Boolean;
    FKmsKeyId: Nullable<string>;
    FManifestSummary: TGroundTruthManifest;
    FKeepManifestSummary: Boolean;
    FMinInferenceUnits: Nullable<Integer>;
    FOutputConfig: TOutputConfig;
    FKeepOutputConfig: Boolean;
    FProjectVersionArn: Nullable<string>;
    FStatus: Nullable<TProjectVersionStatus>;
    FStatusMessage: Nullable<string>;
    FTestingDataResult: TTestingDataResult;
    FKeepTestingDataResult: Boolean;
    FTrainingDataResult: TTrainingDataResult;
    FKeepTrainingDataResult: Boolean;
    FTrainingEndTimestamp: Nullable<TDateTime>;
    function GetBillableTrainingTimeInSeconds: Int64;
    procedure SetBillableTrainingTimeInSeconds(const Value: Int64);
    function GetCreationTimestamp: TDateTime;
    procedure SetCreationTimestamp(const Value: TDateTime);
    function GetEvaluationResult: TEvaluationResult;
    procedure SetEvaluationResult(const Value: TEvaluationResult);
    function GetKeepEvaluationResult: Boolean;
    procedure SetKeepEvaluationResult(const Value: Boolean);
    function GetKmsKeyId: string;
    procedure SetKmsKeyId(const Value: string);
    function GetManifestSummary: TGroundTruthManifest;
    procedure SetManifestSummary(const Value: TGroundTruthManifest);
    function GetKeepManifestSummary: Boolean;
    procedure SetKeepManifestSummary(const Value: Boolean);
    function GetMinInferenceUnits: Integer;
    procedure SetMinInferenceUnits(const Value: Integer);
    function GetOutputConfig: TOutputConfig;
    procedure SetOutputConfig(const Value: TOutputConfig);
    function GetKeepOutputConfig: Boolean;
    procedure SetKeepOutputConfig(const Value: Boolean);
    function GetProjectVersionArn: string;
    procedure SetProjectVersionArn(const Value: string);
    function GetStatus: TProjectVersionStatus;
    procedure SetStatus(const Value: TProjectVersionStatus);
    function GetStatusMessage: string;
    procedure SetStatusMessage(const Value: string);
    function GetTestingDataResult: TTestingDataResult;
    procedure SetTestingDataResult(const Value: TTestingDataResult);
    function GetKeepTestingDataResult: Boolean;
    procedure SetKeepTestingDataResult(const Value: Boolean);
    function GetTrainingDataResult: TTrainingDataResult;
    procedure SetTrainingDataResult(const Value: TTrainingDataResult);
    function GetKeepTrainingDataResult: Boolean;
    procedure SetKeepTrainingDataResult(const Value: Boolean);
    function GetTrainingEndTimestamp: TDateTime;
    procedure SetTrainingEndTimestamp(const Value: TDateTime);
  strict protected
    function Obj: TProjectVersionDescription;
  public
    destructor Destroy; override;
    function IsSetBillableTrainingTimeInSeconds: Boolean;
    function IsSetCreationTimestamp: Boolean;
    function IsSetEvaluationResult: Boolean;
    function IsSetKmsKeyId: Boolean;
    function IsSetManifestSummary: Boolean;
    function IsSetMinInferenceUnits: Boolean;
    function IsSetOutputConfig: Boolean;
    function IsSetProjectVersionArn: Boolean;
    function IsSetStatus: Boolean;
    function IsSetStatusMessage: Boolean;
    function IsSetTestingDataResult: Boolean;
    function IsSetTrainingDataResult: Boolean;
    function IsSetTrainingEndTimestamp: Boolean;
    property BillableTrainingTimeInSeconds: Int64 read GetBillableTrainingTimeInSeconds write SetBillableTrainingTimeInSeconds;
    property CreationTimestamp: TDateTime read GetCreationTimestamp write SetCreationTimestamp;
    property EvaluationResult: TEvaluationResult read GetEvaluationResult write SetEvaluationResult;
    property KeepEvaluationResult: Boolean read GetKeepEvaluationResult write SetKeepEvaluationResult;
    property KmsKeyId: string read GetKmsKeyId write SetKmsKeyId;
    property ManifestSummary: TGroundTruthManifest read GetManifestSummary write SetManifestSummary;
    property KeepManifestSummary: Boolean read GetKeepManifestSummary write SetKeepManifestSummary;
    property MinInferenceUnits: Integer read GetMinInferenceUnits write SetMinInferenceUnits;
    property OutputConfig: TOutputConfig read GetOutputConfig write SetOutputConfig;
    property KeepOutputConfig: Boolean read GetKeepOutputConfig write SetKeepOutputConfig;
    property ProjectVersionArn: string read GetProjectVersionArn write SetProjectVersionArn;
    property Status: TProjectVersionStatus read GetStatus write SetStatus;
    property StatusMessage: string read GetStatusMessage write SetStatusMessage;
    property TestingDataResult: TTestingDataResult read GetTestingDataResult write SetTestingDataResult;
    property KeepTestingDataResult: Boolean read GetKeepTestingDataResult write SetKeepTestingDataResult;
    property TrainingDataResult: TTrainingDataResult read GetTrainingDataResult write SetTrainingDataResult;
    property KeepTrainingDataResult: Boolean read GetKeepTrainingDataResult write SetKeepTrainingDataResult;
    property TrainingEndTimestamp: TDateTime read GetTrainingEndTimestamp write SetTrainingEndTimestamp;
  end;
  
implementation

{ TProjectVersionDescription }

destructor TProjectVersionDescription.Destroy;
begin
  TrainingDataResult := nil;
  TestingDataResult := nil;
  OutputConfig := nil;
  ManifestSummary := nil;
  EvaluationResult := nil;
  inherited;
end;

function TProjectVersionDescription.Obj: TProjectVersionDescription;
begin
  Result := Self;
end;

function TProjectVersionDescription.GetBillableTrainingTimeInSeconds: Int64;
begin
  Result := FBillableTrainingTimeInSeconds.ValueOrDefault;
end;

procedure TProjectVersionDescription.SetBillableTrainingTimeInSeconds(const Value: Int64);
begin
  FBillableTrainingTimeInSeconds := Value;
end;

function TProjectVersionDescription.IsSetBillableTrainingTimeInSeconds: Boolean;
begin
  Result := FBillableTrainingTimeInSeconds.HasValue;
end;

function TProjectVersionDescription.GetCreationTimestamp: TDateTime;
begin
  Result := FCreationTimestamp.ValueOrDefault;
end;

procedure TProjectVersionDescription.SetCreationTimestamp(const Value: TDateTime);
begin
  FCreationTimestamp := Value;
end;

function TProjectVersionDescription.IsSetCreationTimestamp: Boolean;
begin
  Result := FCreationTimestamp.HasValue;
end;

function TProjectVersionDescription.GetEvaluationResult: TEvaluationResult;
begin
  Result := FEvaluationResult;
end;

procedure TProjectVersionDescription.SetEvaluationResult(const Value: TEvaluationResult);
begin
  if FEvaluationResult <> Value then
  begin
    if not KeepEvaluationResult then
      FEvaluationResult.Free;
    FEvaluationResult := Value;
  end;
end;

function TProjectVersionDescription.GetKeepEvaluationResult: Boolean;
begin
  Result := FKeepEvaluationResult;
end;

procedure TProjectVersionDescription.SetKeepEvaluationResult(const Value: Boolean);
begin
  FKeepEvaluationResult := Value;
end;

function TProjectVersionDescription.IsSetEvaluationResult: Boolean;
begin
  Result := FEvaluationResult <> nil;
end;

function TProjectVersionDescription.GetKmsKeyId: string;
begin
  Result := FKmsKeyId.ValueOrDefault;
end;

procedure TProjectVersionDescription.SetKmsKeyId(const Value: string);
begin
  FKmsKeyId := Value;
end;

function TProjectVersionDescription.IsSetKmsKeyId: Boolean;
begin
  Result := FKmsKeyId.HasValue;
end;

function TProjectVersionDescription.GetManifestSummary: TGroundTruthManifest;
begin
  Result := FManifestSummary;
end;

procedure TProjectVersionDescription.SetManifestSummary(const Value: TGroundTruthManifest);
begin
  if FManifestSummary <> Value then
  begin
    if not KeepManifestSummary then
      FManifestSummary.Free;
    FManifestSummary := Value;
  end;
end;

function TProjectVersionDescription.GetKeepManifestSummary: Boolean;
begin
  Result := FKeepManifestSummary;
end;

procedure TProjectVersionDescription.SetKeepManifestSummary(const Value: Boolean);
begin
  FKeepManifestSummary := Value;
end;

function TProjectVersionDescription.IsSetManifestSummary: Boolean;
begin
  Result := FManifestSummary <> nil;
end;

function TProjectVersionDescription.GetMinInferenceUnits: Integer;
begin
  Result := FMinInferenceUnits.ValueOrDefault;
end;

procedure TProjectVersionDescription.SetMinInferenceUnits(const Value: Integer);
begin
  FMinInferenceUnits := Value;
end;

function TProjectVersionDescription.IsSetMinInferenceUnits: Boolean;
begin
  Result := FMinInferenceUnits.HasValue;
end;

function TProjectVersionDescription.GetOutputConfig: TOutputConfig;
begin
  Result := FOutputConfig;
end;

procedure TProjectVersionDescription.SetOutputConfig(const Value: TOutputConfig);
begin
  if FOutputConfig <> Value then
  begin
    if not KeepOutputConfig then
      FOutputConfig.Free;
    FOutputConfig := Value;
  end;
end;

function TProjectVersionDescription.GetKeepOutputConfig: Boolean;
begin
  Result := FKeepOutputConfig;
end;

procedure TProjectVersionDescription.SetKeepOutputConfig(const Value: Boolean);
begin
  FKeepOutputConfig := Value;
end;

function TProjectVersionDescription.IsSetOutputConfig: Boolean;
begin
  Result := FOutputConfig <> nil;
end;

function TProjectVersionDescription.GetProjectVersionArn: string;
begin
  Result := FProjectVersionArn.ValueOrDefault;
end;

procedure TProjectVersionDescription.SetProjectVersionArn(const Value: string);
begin
  FProjectVersionArn := Value;
end;

function TProjectVersionDescription.IsSetProjectVersionArn: Boolean;
begin
  Result := FProjectVersionArn.HasValue;
end;

function TProjectVersionDescription.GetStatus: TProjectVersionStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TProjectVersionDescription.SetStatus(const Value: TProjectVersionStatus);
begin
  FStatus := Value;
end;

function TProjectVersionDescription.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

function TProjectVersionDescription.GetStatusMessage: string;
begin
  Result := FStatusMessage.ValueOrDefault;
end;

procedure TProjectVersionDescription.SetStatusMessage(const Value: string);
begin
  FStatusMessage := Value;
end;

function TProjectVersionDescription.IsSetStatusMessage: Boolean;
begin
  Result := FStatusMessage.HasValue;
end;

function TProjectVersionDescription.GetTestingDataResult: TTestingDataResult;
begin
  Result := FTestingDataResult;
end;

procedure TProjectVersionDescription.SetTestingDataResult(const Value: TTestingDataResult);
begin
  if FTestingDataResult <> Value then
  begin
    if not KeepTestingDataResult then
      FTestingDataResult.Free;
    FTestingDataResult := Value;
  end;
end;

function TProjectVersionDescription.GetKeepTestingDataResult: Boolean;
begin
  Result := FKeepTestingDataResult;
end;

procedure TProjectVersionDescription.SetKeepTestingDataResult(const Value: Boolean);
begin
  FKeepTestingDataResult := Value;
end;

function TProjectVersionDescription.IsSetTestingDataResult: Boolean;
begin
  Result := FTestingDataResult <> nil;
end;

function TProjectVersionDescription.GetTrainingDataResult: TTrainingDataResult;
begin
  Result := FTrainingDataResult;
end;

procedure TProjectVersionDescription.SetTrainingDataResult(const Value: TTrainingDataResult);
begin
  if FTrainingDataResult <> Value then
  begin
    if not KeepTrainingDataResult then
      FTrainingDataResult.Free;
    FTrainingDataResult := Value;
  end;
end;

function TProjectVersionDescription.GetKeepTrainingDataResult: Boolean;
begin
  Result := FKeepTrainingDataResult;
end;

procedure TProjectVersionDescription.SetKeepTrainingDataResult(const Value: Boolean);
begin
  FKeepTrainingDataResult := Value;
end;

function TProjectVersionDescription.IsSetTrainingDataResult: Boolean;
begin
  Result := FTrainingDataResult <> nil;
end;

function TProjectVersionDescription.GetTrainingEndTimestamp: TDateTime;
begin
  Result := FTrainingEndTimestamp.ValueOrDefault;
end;

procedure TProjectVersionDescription.SetTrainingEndTimestamp(const Value: TDateTime);
begin
  FTrainingEndTimestamp := Value;
end;

function TProjectVersionDescription.IsSetTrainingEndTimestamp: Boolean;
begin
  Result := FTrainingEndTimestamp.HasValue;
end;

end.
