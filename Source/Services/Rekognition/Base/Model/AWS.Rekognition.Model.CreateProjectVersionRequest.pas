unit AWS.Rekognition.Model.CreateProjectVersionRequest;

interface

uses
  System.Generics.Collections, 
  AWS.Rekognition.Model.Request, 
  AWS.Nullable, 
  AWS.Rekognition.Model.OutputConfig, 
  AWS.Rekognition.Model.TestingData, 
  AWS.Rekognition.Model.TrainingData;

type
  TCreateProjectVersionRequest = class;
  
  ICreateProjectVersionRequest = interface
    function GetKmsKeyId: string;
    procedure SetKmsKeyId(const Value: string);
    function GetOutputConfig: TOutputConfig;
    procedure SetOutputConfig(const Value: TOutputConfig);
    function GetKeepOutputConfig: Boolean;
    procedure SetKeepOutputConfig(const Value: Boolean);
    function GetProjectArn: string;
    procedure SetProjectArn(const Value: string);
    function GetTags: TDictionary<string, string>;
    procedure SetTags(const Value: TDictionary<string, string>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function GetTestingData: TTestingData;
    procedure SetTestingData(const Value: TTestingData);
    function GetKeepTestingData: Boolean;
    procedure SetKeepTestingData(const Value: Boolean);
    function GetTrainingData: TTrainingData;
    procedure SetTrainingData(const Value: TTrainingData);
    function GetKeepTrainingData: Boolean;
    procedure SetKeepTrainingData(const Value: Boolean);
    function GetVersionName: string;
    procedure SetVersionName(const Value: string);
    function Obj: TCreateProjectVersionRequest;
    function IsSetKmsKeyId: Boolean;
    function IsSetOutputConfig: Boolean;
    function IsSetProjectArn: Boolean;
    function IsSetTags: Boolean;
    function IsSetTestingData: Boolean;
    function IsSetTrainingData: Boolean;
    function IsSetVersionName: Boolean;
    property KmsKeyId: string read GetKmsKeyId write SetKmsKeyId;
    property OutputConfig: TOutputConfig read GetOutputConfig write SetOutputConfig;
    property KeepOutputConfig: Boolean read GetKeepOutputConfig write SetKeepOutputConfig;
    property ProjectArn: string read GetProjectArn write SetProjectArn;
    property Tags: TDictionary<string, string> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
    property TestingData: TTestingData read GetTestingData write SetTestingData;
    property KeepTestingData: Boolean read GetKeepTestingData write SetKeepTestingData;
    property TrainingData: TTrainingData read GetTrainingData write SetTrainingData;
    property KeepTrainingData: Boolean read GetKeepTrainingData write SetKeepTrainingData;
    property VersionName: string read GetVersionName write SetVersionName;
  end;
  
  TCreateProjectVersionRequest = class(TAmazonRekognitionRequest, ICreateProjectVersionRequest)
  strict private
    FKmsKeyId: Nullable<string>;
    FOutputConfig: TOutputConfig;
    FKeepOutputConfig: Boolean;
    FProjectArn: Nullable<string>;
    FTags: TDictionary<string, string>;
    FKeepTags: Boolean;
    FTestingData: TTestingData;
    FKeepTestingData: Boolean;
    FTrainingData: TTrainingData;
    FKeepTrainingData: Boolean;
    FVersionName: Nullable<string>;
    function GetKmsKeyId: string;
    procedure SetKmsKeyId(const Value: string);
    function GetOutputConfig: TOutputConfig;
    procedure SetOutputConfig(const Value: TOutputConfig);
    function GetKeepOutputConfig: Boolean;
    procedure SetKeepOutputConfig(const Value: Boolean);
    function GetProjectArn: string;
    procedure SetProjectArn(const Value: string);
    function GetTags: TDictionary<string, string>;
    procedure SetTags(const Value: TDictionary<string, string>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function GetTestingData: TTestingData;
    procedure SetTestingData(const Value: TTestingData);
    function GetKeepTestingData: Boolean;
    procedure SetKeepTestingData(const Value: Boolean);
    function GetTrainingData: TTrainingData;
    procedure SetTrainingData(const Value: TTrainingData);
    function GetKeepTrainingData: Boolean;
    procedure SetKeepTrainingData(const Value: Boolean);
    function GetVersionName: string;
    procedure SetVersionName(const Value: string);
  strict protected
    function Obj: TCreateProjectVersionRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetKmsKeyId: Boolean;
    function IsSetOutputConfig: Boolean;
    function IsSetProjectArn: Boolean;
    function IsSetTags: Boolean;
    function IsSetTestingData: Boolean;
    function IsSetTrainingData: Boolean;
    function IsSetVersionName: Boolean;
    property KmsKeyId: string read GetKmsKeyId write SetKmsKeyId;
    property OutputConfig: TOutputConfig read GetOutputConfig write SetOutputConfig;
    property KeepOutputConfig: Boolean read GetKeepOutputConfig write SetKeepOutputConfig;
    property ProjectArn: string read GetProjectArn write SetProjectArn;
    property Tags: TDictionary<string, string> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
    property TestingData: TTestingData read GetTestingData write SetTestingData;
    property KeepTestingData: Boolean read GetKeepTestingData write SetKeepTestingData;
    property TrainingData: TTrainingData read GetTrainingData write SetTrainingData;
    property KeepTrainingData: Boolean read GetKeepTrainingData write SetKeepTrainingData;
    property VersionName: string read GetVersionName write SetVersionName;
  end;
  
implementation

{ TCreateProjectVersionRequest }

constructor TCreateProjectVersionRequest.Create;
begin
  inherited;
  FTags := TDictionary<string, string>.Create;
end;

destructor TCreateProjectVersionRequest.Destroy;
begin
  TrainingData := nil;
  TestingData := nil;
  Tags := nil;
  OutputConfig := nil;
  inherited;
end;

function TCreateProjectVersionRequest.Obj: TCreateProjectVersionRequest;
begin
  Result := Self;
end;

function TCreateProjectVersionRequest.GetKmsKeyId: string;
begin
  Result := FKmsKeyId.ValueOrDefault;
end;

procedure TCreateProjectVersionRequest.SetKmsKeyId(const Value: string);
begin
  FKmsKeyId := Value;
end;

function TCreateProjectVersionRequest.IsSetKmsKeyId: Boolean;
begin
  Result := FKmsKeyId.HasValue;
end;

function TCreateProjectVersionRequest.GetOutputConfig: TOutputConfig;
begin
  Result := FOutputConfig;
end;

procedure TCreateProjectVersionRequest.SetOutputConfig(const Value: TOutputConfig);
begin
  if FOutputConfig <> Value then
  begin
    if not KeepOutputConfig then
      FOutputConfig.Free;
    FOutputConfig := Value;
  end;
end;

function TCreateProjectVersionRequest.GetKeepOutputConfig: Boolean;
begin
  Result := FKeepOutputConfig;
end;

procedure TCreateProjectVersionRequest.SetKeepOutputConfig(const Value: Boolean);
begin
  FKeepOutputConfig := Value;
end;

function TCreateProjectVersionRequest.IsSetOutputConfig: Boolean;
begin
  Result := FOutputConfig <> nil;
end;

function TCreateProjectVersionRequest.GetProjectArn: string;
begin
  Result := FProjectArn.ValueOrDefault;
end;

procedure TCreateProjectVersionRequest.SetProjectArn(const Value: string);
begin
  FProjectArn := Value;
end;

function TCreateProjectVersionRequest.IsSetProjectArn: Boolean;
begin
  Result := FProjectArn.HasValue;
end;

function TCreateProjectVersionRequest.GetTags: TDictionary<string, string>;
begin
  Result := FTags;
end;

procedure TCreateProjectVersionRequest.SetTags(const Value: TDictionary<string, string>);
begin
  if FTags <> Value then
  begin
    if not KeepTags then
      FTags.Free;
    FTags := Value;
  end;
end;

function TCreateProjectVersionRequest.GetKeepTags: Boolean;
begin
  Result := FKeepTags;
end;

procedure TCreateProjectVersionRequest.SetKeepTags(const Value: Boolean);
begin
  FKeepTags := Value;
end;

function TCreateProjectVersionRequest.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

function TCreateProjectVersionRequest.GetTestingData: TTestingData;
begin
  Result := FTestingData;
end;

procedure TCreateProjectVersionRequest.SetTestingData(const Value: TTestingData);
begin
  if FTestingData <> Value then
  begin
    if not KeepTestingData then
      FTestingData.Free;
    FTestingData := Value;
  end;
end;

function TCreateProjectVersionRequest.GetKeepTestingData: Boolean;
begin
  Result := FKeepTestingData;
end;

procedure TCreateProjectVersionRequest.SetKeepTestingData(const Value: Boolean);
begin
  FKeepTestingData := Value;
end;

function TCreateProjectVersionRequest.IsSetTestingData: Boolean;
begin
  Result := FTestingData <> nil;
end;

function TCreateProjectVersionRequest.GetTrainingData: TTrainingData;
begin
  Result := FTrainingData;
end;

procedure TCreateProjectVersionRequest.SetTrainingData(const Value: TTrainingData);
begin
  if FTrainingData <> Value then
  begin
    if not KeepTrainingData then
      FTrainingData.Free;
    FTrainingData := Value;
  end;
end;

function TCreateProjectVersionRequest.GetKeepTrainingData: Boolean;
begin
  Result := FKeepTrainingData;
end;

procedure TCreateProjectVersionRequest.SetKeepTrainingData(const Value: Boolean);
begin
  FKeepTrainingData := Value;
end;

function TCreateProjectVersionRequest.IsSetTrainingData: Boolean;
begin
  Result := FTrainingData <> nil;
end;

function TCreateProjectVersionRequest.GetVersionName: string;
begin
  Result := FVersionName.ValueOrDefault;
end;

procedure TCreateProjectVersionRequest.SetVersionName(const Value: string);
begin
  FVersionName := Value;
end;

function TCreateProjectVersionRequest.IsSetVersionName: Boolean;
begin
  Result := FVersionName.HasValue;
end;

end.
