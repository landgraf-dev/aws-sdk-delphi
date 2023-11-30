unit AWS.Transcribe.Model.LanguageModel;

interface

uses
  AWS.Nullable, 
  AWS.Transcribe.Enums, 
  AWS.Transcribe.Model.InputDataConfig;

type
  TLanguageModel = class;
  
  ILanguageModel = interface
    function GetBaseModelName: TBaseModelName;
    procedure SetBaseModelName(const Value: TBaseModelName);
    function GetCreateTime: TDateTime;
    procedure SetCreateTime(const Value: TDateTime);
    function GetFailureReason: string;
    procedure SetFailureReason(const Value: string);
    function GetInputDataConfig: TInputDataConfig;
    procedure SetInputDataConfig(const Value: TInputDataConfig);
    function GetKeepInputDataConfig: Boolean;
    procedure SetKeepInputDataConfig(const Value: Boolean);
    function GetLanguageCode: TCLMLanguageCode;
    procedure SetLanguageCode(const Value: TCLMLanguageCode);
    function GetLastModifiedTime: TDateTime;
    procedure SetLastModifiedTime(const Value: TDateTime);
    function GetModelName: string;
    procedure SetModelName(const Value: string);
    function GetModelStatus: TModelStatus;
    procedure SetModelStatus(const Value: TModelStatus);
    function GetUpgradeAvailability: Boolean;
    procedure SetUpgradeAvailability(const Value: Boolean);
    function Obj: TLanguageModel;
    function IsSetBaseModelName: Boolean;
    function IsSetCreateTime: Boolean;
    function IsSetFailureReason: Boolean;
    function IsSetInputDataConfig: Boolean;
    function IsSetLanguageCode: Boolean;
    function IsSetLastModifiedTime: Boolean;
    function IsSetModelName: Boolean;
    function IsSetModelStatus: Boolean;
    function IsSetUpgradeAvailability: Boolean;
    property BaseModelName: TBaseModelName read GetBaseModelName write SetBaseModelName;
    property CreateTime: TDateTime read GetCreateTime write SetCreateTime;
    property FailureReason: string read GetFailureReason write SetFailureReason;
    property InputDataConfig: TInputDataConfig read GetInputDataConfig write SetInputDataConfig;
    property KeepInputDataConfig: Boolean read GetKeepInputDataConfig write SetKeepInputDataConfig;
    property LanguageCode: TCLMLanguageCode read GetLanguageCode write SetLanguageCode;
    property LastModifiedTime: TDateTime read GetLastModifiedTime write SetLastModifiedTime;
    property ModelName: string read GetModelName write SetModelName;
    property ModelStatus: TModelStatus read GetModelStatus write SetModelStatus;
    property UpgradeAvailability: Boolean read GetUpgradeAvailability write SetUpgradeAvailability;
  end;
  
  TLanguageModel = class
  strict private
    FBaseModelName: Nullable<TBaseModelName>;
    FCreateTime: Nullable<TDateTime>;
    FFailureReason: Nullable<string>;
    FInputDataConfig: TInputDataConfig;
    FKeepInputDataConfig: Boolean;
    FLanguageCode: Nullable<TCLMLanguageCode>;
    FLastModifiedTime: Nullable<TDateTime>;
    FModelName: Nullable<string>;
    FModelStatus: Nullable<TModelStatus>;
    FUpgradeAvailability: Nullable<Boolean>;
    function GetBaseModelName: TBaseModelName;
    procedure SetBaseModelName(const Value: TBaseModelName);
    function GetCreateTime: TDateTime;
    procedure SetCreateTime(const Value: TDateTime);
    function GetFailureReason: string;
    procedure SetFailureReason(const Value: string);
    function GetInputDataConfig: TInputDataConfig;
    procedure SetInputDataConfig(const Value: TInputDataConfig);
    function GetKeepInputDataConfig: Boolean;
    procedure SetKeepInputDataConfig(const Value: Boolean);
    function GetLanguageCode: TCLMLanguageCode;
    procedure SetLanguageCode(const Value: TCLMLanguageCode);
    function GetLastModifiedTime: TDateTime;
    procedure SetLastModifiedTime(const Value: TDateTime);
    function GetModelName: string;
    procedure SetModelName(const Value: string);
    function GetModelStatus: TModelStatus;
    procedure SetModelStatus(const Value: TModelStatus);
    function GetUpgradeAvailability: Boolean;
    procedure SetUpgradeAvailability(const Value: Boolean);
  strict protected
    function Obj: TLanguageModel;
  public
    destructor Destroy; override;
    function IsSetBaseModelName: Boolean;
    function IsSetCreateTime: Boolean;
    function IsSetFailureReason: Boolean;
    function IsSetInputDataConfig: Boolean;
    function IsSetLanguageCode: Boolean;
    function IsSetLastModifiedTime: Boolean;
    function IsSetModelName: Boolean;
    function IsSetModelStatus: Boolean;
    function IsSetUpgradeAvailability: Boolean;
    property BaseModelName: TBaseModelName read GetBaseModelName write SetBaseModelName;
    property CreateTime: TDateTime read GetCreateTime write SetCreateTime;
    property FailureReason: string read GetFailureReason write SetFailureReason;
    property InputDataConfig: TInputDataConfig read GetInputDataConfig write SetInputDataConfig;
    property KeepInputDataConfig: Boolean read GetKeepInputDataConfig write SetKeepInputDataConfig;
    property LanguageCode: TCLMLanguageCode read GetLanguageCode write SetLanguageCode;
    property LastModifiedTime: TDateTime read GetLastModifiedTime write SetLastModifiedTime;
    property ModelName: string read GetModelName write SetModelName;
    property ModelStatus: TModelStatus read GetModelStatus write SetModelStatus;
    property UpgradeAvailability: Boolean read GetUpgradeAvailability write SetUpgradeAvailability;
  end;
  
implementation

{ TLanguageModel }

destructor TLanguageModel.Destroy;
begin
  InputDataConfig := nil;
  inherited;
end;

function TLanguageModel.Obj: TLanguageModel;
begin
  Result := Self;
end;

function TLanguageModel.GetBaseModelName: TBaseModelName;
begin
  Result := FBaseModelName.ValueOrDefault;
end;

procedure TLanguageModel.SetBaseModelName(const Value: TBaseModelName);
begin
  FBaseModelName := Value;
end;

function TLanguageModel.IsSetBaseModelName: Boolean;
begin
  Result := FBaseModelName.HasValue;
end;

function TLanguageModel.GetCreateTime: TDateTime;
begin
  Result := FCreateTime.ValueOrDefault;
end;

procedure TLanguageModel.SetCreateTime(const Value: TDateTime);
begin
  FCreateTime := Value;
end;

function TLanguageModel.IsSetCreateTime: Boolean;
begin
  Result := FCreateTime.HasValue;
end;

function TLanguageModel.GetFailureReason: string;
begin
  Result := FFailureReason.ValueOrDefault;
end;

procedure TLanguageModel.SetFailureReason(const Value: string);
begin
  FFailureReason := Value;
end;

function TLanguageModel.IsSetFailureReason: Boolean;
begin
  Result := FFailureReason.HasValue;
end;

function TLanguageModel.GetInputDataConfig: TInputDataConfig;
begin
  Result := FInputDataConfig;
end;

procedure TLanguageModel.SetInputDataConfig(const Value: TInputDataConfig);
begin
  if FInputDataConfig <> Value then
  begin
    if not KeepInputDataConfig then
      FInputDataConfig.Free;
    FInputDataConfig := Value;
  end;
end;

function TLanguageModel.GetKeepInputDataConfig: Boolean;
begin
  Result := FKeepInputDataConfig;
end;

procedure TLanguageModel.SetKeepInputDataConfig(const Value: Boolean);
begin
  FKeepInputDataConfig := Value;
end;

function TLanguageModel.IsSetInputDataConfig: Boolean;
begin
  Result := FInputDataConfig <> nil;
end;

function TLanguageModel.GetLanguageCode: TCLMLanguageCode;
begin
  Result := FLanguageCode.ValueOrDefault;
end;

procedure TLanguageModel.SetLanguageCode(const Value: TCLMLanguageCode);
begin
  FLanguageCode := Value;
end;

function TLanguageModel.IsSetLanguageCode: Boolean;
begin
  Result := FLanguageCode.HasValue;
end;

function TLanguageModel.GetLastModifiedTime: TDateTime;
begin
  Result := FLastModifiedTime.ValueOrDefault;
end;

procedure TLanguageModel.SetLastModifiedTime(const Value: TDateTime);
begin
  FLastModifiedTime := Value;
end;

function TLanguageModel.IsSetLastModifiedTime: Boolean;
begin
  Result := FLastModifiedTime.HasValue;
end;

function TLanguageModel.GetModelName: string;
begin
  Result := FModelName.ValueOrDefault;
end;

procedure TLanguageModel.SetModelName(const Value: string);
begin
  FModelName := Value;
end;

function TLanguageModel.IsSetModelName: Boolean;
begin
  Result := FModelName.HasValue;
end;

function TLanguageModel.GetModelStatus: TModelStatus;
begin
  Result := FModelStatus.ValueOrDefault;
end;

procedure TLanguageModel.SetModelStatus(const Value: TModelStatus);
begin
  FModelStatus := Value;
end;

function TLanguageModel.IsSetModelStatus: Boolean;
begin
  Result := FModelStatus.HasValue;
end;

function TLanguageModel.GetUpgradeAvailability: Boolean;
begin
  Result := FUpgradeAvailability.ValueOrDefault;
end;

procedure TLanguageModel.SetUpgradeAvailability(const Value: Boolean);
begin
  FUpgradeAvailability := Value;
end;

function TLanguageModel.IsSetUpgradeAvailability: Boolean;
begin
  Result := FUpgradeAvailability.HasValue;
end;

end.
