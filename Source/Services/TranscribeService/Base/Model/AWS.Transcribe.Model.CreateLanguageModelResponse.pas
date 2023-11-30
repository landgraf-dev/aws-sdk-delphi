unit AWS.Transcribe.Model.CreateLanguageModelResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.Transcribe.Enums, 
  AWS.Transcribe.Model.InputDataConfig;

type
  TCreateLanguageModelResponse = class;
  
  ICreateLanguageModelResponse = interface(IAmazonWebServiceResponse)
    function GetBaseModelName: TBaseModelName;
    procedure SetBaseModelName(const Value: TBaseModelName);
    function GetInputDataConfig: TInputDataConfig;
    procedure SetInputDataConfig(const Value: TInputDataConfig);
    function GetKeepInputDataConfig: Boolean;
    procedure SetKeepInputDataConfig(const Value: Boolean);
    function GetLanguageCode: TCLMLanguageCode;
    procedure SetLanguageCode(const Value: TCLMLanguageCode);
    function GetModelName: string;
    procedure SetModelName(const Value: string);
    function GetModelStatus: TModelStatus;
    procedure SetModelStatus(const Value: TModelStatus);
    function Obj: TCreateLanguageModelResponse;
    function IsSetBaseModelName: Boolean;
    function IsSetInputDataConfig: Boolean;
    function IsSetLanguageCode: Boolean;
    function IsSetModelName: Boolean;
    function IsSetModelStatus: Boolean;
    property BaseModelName: TBaseModelName read GetBaseModelName write SetBaseModelName;
    property InputDataConfig: TInputDataConfig read GetInputDataConfig write SetInputDataConfig;
    property KeepInputDataConfig: Boolean read GetKeepInputDataConfig write SetKeepInputDataConfig;
    property LanguageCode: TCLMLanguageCode read GetLanguageCode write SetLanguageCode;
    property ModelName: string read GetModelName write SetModelName;
    property ModelStatus: TModelStatus read GetModelStatus write SetModelStatus;
  end;
  
  TCreateLanguageModelResponse = class(TAmazonWebServiceResponse, ICreateLanguageModelResponse)
  strict private
    FBaseModelName: Nullable<TBaseModelName>;
    FInputDataConfig: TInputDataConfig;
    FKeepInputDataConfig: Boolean;
    FLanguageCode: Nullable<TCLMLanguageCode>;
    FModelName: Nullable<string>;
    FModelStatus: Nullable<TModelStatus>;
    function GetBaseModelName: TBaseModelName;
    procedure SetBaseModelName(const Value: TBaseModelName);
    function GetInputDataConfig: TInputDataConfig;
    procedure SetInputDataConfig(const Value: TInputDataConfig);
    function GetKeepInputDataConfig: Boolean;
    procedure SetKeepInputDataConfig(const Value: Boolean);
    function GetLanguageCode: TCLMLanguageCode;
    procedure SetLanguageCode(const Value: TCLMLanguageCode);
    function GetModelName: string;
    procedure SetModelName(const Value: string);
    function GetModelStatus: TModelStatus;
    procedure SetModelStatus(const Value: TModelStatus);
  strict protected
    function Obj: TCreateLanguageModelResponse;
  public
    destructor Destroy; override;
    function IsSetBaseModelName: Boolean;
    function IsSetInputDataConfig: Boolean;
    function IsSetLanguageCode: Boolean;
    function IsSetModelName: Boolean;
    function IsSetModelStatus: Boolean;
    property BaseModelName: TBaseModelName read GetBaseModelName write SetBaseModelName;
    property InputDataConfig: TInputDataConfig read GetInputDataConfig write SetInputDataConfig;
    property KeepInputDataConfig: Boolean read GetKeepInputDataConfig write SetKeepInputDataConfig;
    property LanguageCode: TCLMLanguageCode read GetLanguageCode write SetLanguageCode;
    property ModelName: string read GetModelName write SetModelName;
    property ModelStatus: TModelStatus read GetModelStatus write SetModelStatus;
  end;
  
implementation

{ TCreateLanguageModelResponse }

destructor TCreateLanguageModelResponse.Destroy;
begin
  InputDataConfig := nil;
  inherited;
end;

function TCreateLanguageModelResponse.Obj: TCreateLanguageModelResponse;
begin
  Result := Self;
end;

function TCreateLanguageModelResponse.GetBaseModelName: TBaseModelName;
begin
  Result := FBaseModelName.ValueOrDefault;
end;

procedure TCreateLanguageModelResponse.SetBaseModelName(const Value: TBaseModelName);
begin
  FBaseModelName := Value;
end;

function TCreateLanguageModelResponse.IsSetBaseModelName: Boolean;
begin
  Result := FBaseModelName.HasValue;
end;

function TCreateLanguageModelResponse.GetInputDataConfig: TInputDataConfig;
begin
  Result := FInputDataConfig;
end;

procedure TCreateLanguageModelResponse.SetInputDataConfig(const Value: TInputDataConfig);
begin
  if FInputDataConfig <> Value then
  begin
    if not KeepInputDataConfig then
      FInputDataConfig.Free;
    FInputDataConfig := Value;
  end;
end;

function TCreateLanguageModelResponse.GetKeepInputDataConfig: Boolean;
begin
  Result := FKeepInputDataConfig;
end;

procedure TCreateLanguageModelResponse.SetKeepInputDataConfig(const Value: Boolean);
begin
  FKeepInputDataConfig := Value;
end;

function TCreateLanguageModelResponse.IsSetInputDataConfig: Boolean;
begin
  Result := FInputDataConfig <> nil;
end;

function TCreateLanguageModelResponse.GetLanguageCode: TCLMLanguageCode;
begin
  Result := FLanguageCode.ValueOrDefault;
end;

procedure TCreateLanguageModelResponse.SetLanguageCode(const Value: TCLMLanguageCode);
begin
  FLanguageCode := Value;
end;

function TCreateLanguageModelResponse.IsSetLanguageCode: Boolean;
begin
  Result := FLanguageCode.HasValue;
end;

function TCreateLanguageModelResponse.GetModelName: string;
begin
  Result := FModelName.ValueOrDefault;
end;

procedure TCreateLanguageModelResponse.SetModelName(const Value: string);
begin
  FModelName := Value;
end;

function TCreateLanguageModelResponse.IsSetModelName: Boolean;
begin
  Result := FModelName.HasValue;
end;

function TCreateLanguageModelResponse.GetModelStatus: TModelStatus;
begin
  Result := FModelStatus.ValueOrDefault;
end;

procedure TCreateLanguageModelResponse.SetModelStatus(const Value: TModelStatus);
begin
  FModelStatus := Value;
end;

function TCreateLanguageModelResponse.IsSetModelStatus: Boolean;
begin
  Result := FModelStatus.HasValue;
end;

end.
