unit AWS.Translate.Model.StartTextTranslationJobRequest;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Translate.Model.Request, 
  AWS.Translate.Model.InputDataConfig, 
  AWS.Translate.Model.OutputDataConfig;

type
  TStartTextTranslationJobRequest = class;
  
  IStartTextTranslationJobRequest = interface
    function GetClientToken: string;
    procedure SetClientToken(const Value: string);
    function GetDataAccessRoleArn: string;
    procedure SetDataAccessRoleArn(const Value: string);
    function GetInputDataConfig: TInputDataConfig;
    procedure SetInputDataConfig(const Value: TInputDataConfig);
    function GetKeepInputDataConfig: Boolean;
    procedure SetKeepInputDataConfig(const Value: Boolean);
    function GetJobName: string;
    procedure SetJobName(const Value: string);
    function GetOutputDataConfig: TOutputDataConfig;
    procedure SetOutputDataConfig(const Value: TOutputDataConfig);
    function GetKeepOutputDataConfig: Boolean;
    procedure SetKeepOutputDataConfig(const Value: Boolean);
    function GetParallelDataNames: TList<string>;
    procedure SetParallelDataNames(const Value: TList<string>);
    function GetKeepParallelDataNames: Boolean;
    procedure SetKeepParallelDataNames(const Value: Boolean);
    function GetSourceLanguageCode: string;
    procedure SetSourceLanguageCode(const Value: string);
    function GetTargetLanguageCodes: TList<string>;
    procedure SetTargetLanguageCodes(const Value: TList<string>);
    function GetKeepTargetLanguageCodes: Boolean;
    procedure SetKeepTargetLanguageCodes(const Value: Boolean);
    function GetTerminologyNames: TList<string>;
    procedure SetTerminologyNames(const Value: TList<string>);
    function GetKeepTerminologyNames: Boolean;
    procedure SetKeepTerminologyNames(const Value: Boolean);
    function Obj: TStartTextTranslationJobRequest;
    function IsSetClientToken: Boolean;
    function IsSetDataAccessRoleArn: Boolean;
    function IsSetInputDataConfig: Boolean;
    function IsSetJobName: Boolean;
    function IsSetOutputDataConfig: Boolean;
    function IsSetParallelDataNames: Boolean;
    function IsSetSourceLanguageCode: Boolean;
    function IsSetTargetLanguageCodes: Boolean;
    function IsSetTerminologyNames: Boolean;
    property ClientToken: string read GetClientToken write SetClientToken;
    property DataAccessRoleArn: string read GetDataAccessRoleArn write SetDataAccessRoleArn;
    property InputDataConfig: TInputDataConfig read GetInputDataConfig write SetInputDataConfig;
    property KeepInputDataConfig: Boolean read GetKeepInputDataConfig write SetKeepInputDataConfig;
    property JobName: string read GetJobName write SetJobName;
    property OutputDataConfig: TOutputDataConfig read GetOutputDataConfig write SetOutputDataConfig;
    property KeepOutputDataConfig: Boolean read GetKeepOutputDataConfig write SetKeepOutputDataConfig;
    property ParallelDataNames: TList<string> read GetParallelDataNames write SetParallelDataNames;
    property KeepParallelDataNames: Boolean read GetKeepParallelDataNames write SetKeepParallelDataNames;
    property SourceLanguageCode: string read GetSourceLanguageCode write SetSourceLanguageCode;
    property TargetLanguageCodes: TList<string> read GetTargetLanguageCodes write SetTargetLanguageCodes;
    property KeepTargetLanguageCodes: Boolean read GetKeepTargetLanguageCodes write SetKeepTargetLanguageCodes;
    property TerminologyNames: TList<string> read GetTerminologyNames write SetTerminologyNames;
    property KeepTerminologyNames: Boolean read GetKeepTerminologyNames write SetKeepTerminologyNames;
  end;
  
  TStartTextTranslationJobRequest = class(TAmazonTranslateRequest, IStartTextTranslationJobRequest)
  strict private
    FClientToken: Nullable<string>;
    FDataAccessRoleArn: Nullable<string>;
    FInputDataConfig: TInputDataConfig;
    FKeepInputDataConfig: Boolean;
    FJobName: Nullable<string>;
    FOutputDataConfig: TOutputDataConfig;
    FKeepOutputDataConfig: Boolean;
    FParallelDataNames: TList<string>;
    FKeepParallelDataNames: Boolean;
    FSourceLanguageCode: Nullable<string>;
    FTargetLanguageCodes: TList<string>;
    FKeepTargetLanguageCodes: Boolean;
    FTerminologyNames: TList<string>;
    FKeepTerminologyNames: Boolean;
    function GetClientToken: string;
    procedure SetClientToken(const Value: string);
    function GetDataAccessRoleArn: string;
    procedure SetDataAccessRoleArn(const Value: string);
    function GetInputDataConfig: TInputDataConfig;
    procedure SetInputDataConfig(const Value: TInputDataConfig);
    function GetKeepInputDataConfig: Boolean;
    procedure SetKeepInputDataConfig(const Value: Boolean);
    function GetJobName: string;
    procedure SetJobName(const Value: string);
    function GetOutputDataConfig: TOutputDataConfig;
    procedure SetOutputDataConfig(const Value: TOutputDataConfig);
    function GetKeepOutputDataConfig: Boolean;
    procedure SetKeepOutputDataConfig(const Value: Boolean);
    function GetParallelDataNames: TList<string>;
    procedure SetParallelDataNames(const Value: TList<string>);
    function GetKeepParallelDataNames: Boolean;
    procedure SetKeepParallelDataNames(const Value: Boolean);
    function GetSourceLanguageCode: string;
    procedure SetSourceLanguageCode(const Value: string);
    function GetTargetLanguageCodes: TList<string>;
    procedure SetTargetLanguageCodes(const Value: TList<string>);
    function GetKeepTargetLanguageCodes: Boolean;
    procedure SetKeepTargetLanguageCodes(const Value: Boolean);
    function GetTerminologyNames: TList<string>;
    procedure SetTerminologyNames(const Value: TList<string>);
    function GetKeepTerminologyNames: Boolean;
    procedure SetKeepTerminologyNames(const Value: Boolean);
  strict protected
    function Obj: TStartTextTranslationJobRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetClientToken: Boolean;
    function IsSetDataAccessRoleArn: Boolean;
    function IsSetInputDataConfig: Boolean;
    function IsSetJobName: Boolean;
    function IsSetOutputDataConfig: Boolean;
    function IsSetParallelDataNames: Boolean;
    function IsSetSourceLanguageCode: Boolean;
    function IsSetTargetLanguageCodes: Boolean;
    function IsSetTerminologyNames: Boolean;
    property ClientToken: string read GetClientToken write SetClientToken;
    property DataAccessRoleArn: string read GetDataAccessRoleArn write SetDataAccessRoleArn;
    property InputDataConfig: TInputDataConfig read GetInputDataConfig write SetInputDataConfig;
    property KeepInputDataConfig: Boolean read GetKeepInputDataConfig write SetKeepInputDataConfig;
    property JobName: string read GetJobName write SetJobName;
    property OutputDataConfig: TOutputDataConfig read GetOutputDataConfig write SetOutputDataConfig;
    property KeepOutputDataConfig: Boolean read GetKeepOutputDataConfig write SetKeepOutputDataConfig;
    property ParallelDataNames: TList<string> read GetParallelDataNames write SetParallelDataNames;
    property KeepParallelDataNames: Boolean read GetKeepParallelDataNames write SetKeepParallelDataNames;
    property SourceLanguageCode: string read GetSourceLanguageCode write SetSourceLanguageCode;
    property TargetLanguageCodes: TList<string> read GetTargetLanguageCodes write SetTargetLanguageCodes;
    property KeepTargetLanguageCodes: Boolean read GetKeepTargetLanguageCodes write SetKeepTargetLanguageCodes;
    property TerminologyNames: TList<string> read GetTerminologyNames write SetTerminologyNames;
    property KeepTerminologyNames: Boolean read GetKeepTerminologyNames write SetKeepTerminologyNames;
  end;
  
implementation

{ TStartTextTranslationJobRequest }

constructor TStartTextTranslationJobRequest.Create;
begin
  inherited;
  FParallelDataNames := TList<string>.Create;
  FTargetLanguageCodes := TList<string>.Create;
  FTerminologyNames := TList<string>.Create;
end;

destructor TStartTextTranslationJobRequest.Destroy;
begin
  TerminologyNames := nil;
  TargetLanguageCodes := nil;
  ParallelDataNames := nil;
  OutputDataConfig := nil;
  InputDataConfig := nil;
  inherited;
end;

function TStartTextTranslationJobRequest.Obj: TStartTextTranslationJobRequest;
begin
  Result := Self;
end;

function TStartTextTranslationJobRequest.GetClientToken: string;
begin
  Result := FClientToken.ValueOrDefault;
end;

procedure TStartTextTranslationJobRequest.SetClientToken(const Value: string);
begin
  FClientToken := Value;
end;

function TStartTextTranslationJobRequest.IsSetClientToken: Boolean;
begin
  Result := FClientToken.HasValue;
end;

function TStartTextTranslationJobRequest.GetDataAccessRoleArn: string;
begin
  Result := FDataAccessRoleArn.ValueOrDefault;
end;

procedure TStartTextTranslationJobRequest.SetDataAccessRoleArn(const Value: string);
begin
  FDataAccessRoleArn := Value;
end;

function TStartTextTranslationJobRequest.IsSetDataAccessRoleArn: Boolean;
begin
  Result := FDataAccessRoleArn.HasValue;
end;

function TStartTextTranslationJobRequest.GetInputDataConfig: TInputDataConfig;
begin
  Result := FInputDataConfig;
end;

procedure TStartTextTranslationJobRequest.SetInputDataConfig(const Value: TInputDataConfig);
begin
  if FInputDataConfig <> Value then
  begin
    if not KeepInputDataConfig then
      FInputDataConfig.Free;
    FInputDataConfig := Value;
  end;
end;

function TStartTextTranslationJobRequest.GetKeepInputDataConfig: Boolean;
begin
  Result := FKeepInputDataConfig;
end;

procedure TStartTextTranslationJobRequest.SetKeepInputDataConfig(const Value: Boolean);
begin
  FKeepInputDataConfig := Value;
end;

function TStartTextTranslationJobRequest.IsSetInputDataConfig: Boolean;
begin
  Result := FInputDataConfig <> nil;
end;

function TStartTextTranslationJobRequest.GetJobName: string;
begin
  Result := FJobName.ValueOrDefault;
end;

procedure TStartTextTranslationJobRequest.SetJobName(const Value: string);
begin
  FJobName := Value;
end;

function TStartTextTranslationJobRequest.IsSetJobName: Boolean;
begin
  Result := FJobName.HasValue;
end;

function TStartTextTranslationJobRequest.GetOutputDataConfig: TOutputDataConfig;
begin
  Result := FOutputDataConfig;
end;

procedure TStartTextTranslationJobRequest.SetOutputDataConfig(const Value: TOutputDataConfig);
begin
  if FOutputDataConfig <> Value then
  begin
    if not KeepOutputDataConfig then
      FOutputDataConfig.Free;
    FOutputDataConfig := Value;
  end;
end;

function TStartTextTranslationJobRequest.GetKeepOutputDataConfig: Boolean;
begin
  Result := FKeepOutputDataConfig;
end;

procedure TStartTextTranslationJobRequest.SetKeepOutputDataConfig(const Value: Boolean);
begin
  FKeepOutputDataConfig := Value;
end;

function TStartTextTranslationJobRequest.IsSetOutputDataConfig: Boolean;
begin
  Result := FOutputDataConfig <> nil;
end;

function TStartTextTranslationJobRequest.GetParallelDataNames: TList<string>;
begin
  Result := FParallelDataNames;
end;

procedure TStartTextTranslationJobRequest.SetParallelDataNames(const Value: TList<string>);
begin
  if FParallelDataNames <> Value then
  begin
    if not KeepParallelDataNames then
      FParallelDataNames.Free;
    FParallelDataNames := Value;
  end;
end;

function TStartTextTranslationJobRequest.GetKeepParallelDataNames: Boolean;
begin
  Result := FKeepParallelDataNames;
end;

procedure TStartTextTranslationJobRequest.SetKeepParallelDataNames(const Value: Boolean);
begin
  FKeepParallelDataNames := Value;
end;

function TStartTextTranslationJobRequest.IsSetParallelDataNames: Boolean;
begin
  Result := (FParallelDataNames <> nil) and (FParallelDataNames.Count > 0);
end;

function TStartTextTranslationJobRequest.GetSourceLanguageCode: string;
begin
  Result := FSourceLanguageCode.ValueOrDefault;
end;

procedure TStartTextTranslationJobRequest.SetSourceLanguageCode(const Value: string);
begin
  FSourceLanguageCode := Value;
end;

function TStartTextTranslationJobRequest.IsSetSourceLanguageCode: Boolean;
begin
  Result := FSourceLanguageCode.HasValue;
end;

function TStartTextTranslationJobRequest.GetTargetLanguageCodes: TList<string>;
begin
  Result := FTargetLanguageCodes;
end;

procedure TStartTextTranslationJobRequest.SetTargetLanguageCodes(const Value: TList<string>);
begin
  if FTargetLanguageCodes <> Value then
  begin
    if not KeepTargetLanguageCodes then
      FTargetLanguageCodes.Free;
    FTargetLanguageCodes := Value;
  end;
end;

function TStartTextTranslationJobRequest.GetKeepTargetLanguageCodes: Boolean;
begin
  Result := FKeepTargetLanguageCodes;
end;

procedure TStartTextTranslationJobRequest.SetKeepTargetLanguageCodes(const Value: Boolean);
begin
  FKeepTargetLanguageCodes := Value;
end;

function TStartTextTranslationJobRequest.IsSetTargetLanguageCodes: Boolean;
begin
  Result := (FTargetLanguageCodes <> nil) and (FTargetLanguageCodes.Count > 0);
end;

function TStartTextTranslationJobRequest.GetTerminologyNames: TList<string>;
begin
  Result := FTerminologyNames;
end;

procedure TStartTextTranslationJobRequest.SetTerminologyNames(const Value: TList<string>);
begin
  if FTerminologyNames <> Value then
  begin
    if not KeepTerminologyNames then
      FTerminologyNames.Free;
    FTerminologyNames := Value;
  end;
end;

function TStartTextTranslationJobRequest.GetKeepTerminologyNames: Boolean;
begin
  Result := FKeepTerminologyNames;
end;

procedure TStartTextTranslationJobRequest.SetKeepTerminologyNames(const Value: Boolean);
begin
  FKeepTerminologyNames := Value;
end;

function TStartTextTranslationJobRequest.IsSetTerminologyNames: Boolean;
begin
  Result := (FTerminologyNames <> nil) and (FTerminologyNames.Count > 0);
end;

end.
