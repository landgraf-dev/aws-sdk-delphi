unit AWS.SSM.Model.StepExecution;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.SSM.Model.FailureDetails, 
  AWS.SSM.Enums, 
  AWS.SSM.Model.TargetLocation, 
  AWS.SSM.Model.Target;

type
  TStepExecution = class;
  
  IStepExecution = interface
    function GetAction: string;
    procedure SetAction(const Value: string);
    function GetExecutionEndTime: TDateTime;
    procedure SetExecutionEndTime(const Value: TDateTime);
    function GetExecutionStartTime: TDateTime;
    procedure SetExecutionStartTime(const Value: TDateTime);
    function GetFailureDetails: TFailureDetails;
    procedure SetFailureDetails(const Value: TFailureDetails);
    function GetKeepFailureDetails: Boolean;
    procedure SetKeepFailureDetails(const Value: Boolean);
    function GetFailureMessage: string;
    procedure SetFailureMessage(const Value: string);
    function GetInputs: TDictionary<string, string>;
    procedure SetInputs(const Value: TDictionary<string, string>);
    function GetKeepInputs: Boolean;
    procedure SetKeepInputs(const Value: Boolean);
    function GetIsCritical: Boolean;
    procedure SetIsCritical(const Value: Boolean);
    function GetIsEnd: Boolean;
    procedure SetIsEnd(const Value: Boolean);
    function GetMaxAttempts: Integer;
    procedure SetMaxAttempts(const Value: Integer);
    function GetNextStep: string;
    procedure SetNextStep(const Value: string);
    function GetOnFailure: string;
    procedure SetOnFailure(const Value: string);
    function GetOutputs: TObjectDictionary<string, TList<string>>;
    procedure SetOutputs(const Value: TObjectDictionary<string, TList<string>>);
    function GetKeepOutputs: Boolean;
    procedure SetKeepOutputs(const Value: Boolean);
    function GetOverriddenParameters: TObjectDictionary<string, TList<string>>;
    procedure SetOverriddenParameters(const Value: TObjectDictionary<string, TList<string>>);
    function GetKeepOverriddenParameters: Boolean;
    procedure SetKeepOverriddenParameters(const Value: Boolean);
    function GetResponse: string;
    procedure SetResponse(const Value: string);
    function GetResponseCode: string;
    procedure SetResponseCode(const Value: string);
    function GetStepExecutionId: string;
    procedure SetStepExecutionId(const Value: string);
    function GetStepName: string;
    procedure SetStepName(const Value: string);
    function GetStepStatus: TAutomationExecutionStatus;
    procedure SetStepStatus(const Value: TAutomationExecutionStatus);
    function GetTargetLocation: TTargetLocation;
    procedure SetTargetLocation(const Value: TTargetLocation);
    function GetKeepTargetLocation: Boolean;
    procedure SetKeepTargetLocation(const Value: Boolean);
    function GetTargets: TObjectList<TTarget>;
    procedure SetTargets(const Value: TObjectList<TTarget>);
    function GetKeepTargets: Boolean;
    procedure SetKeepTargets(const Value: Boolean);
    function GetTimeoutSeconds: Int64;
    procedure SetTimeoutSeconds(const Value: Int64);
    function GetValidNextSteps: TList<string>;
    procedure SetValidNextSteps(const Value: TList<string>);
    function GetKeepValidNextSteps: Boolean;
    procedure SetKeepValidNextSteps(const Value: Boolean);
    function Obj: TStepExecution;
    function IsSetAction: Boolean;
    function IsSetExecutionEndTime: Boolean;
    function IsSetExecutionStartTime: Boolean;
    function IsSetFailureDetails: Boolean;
    function IsSetFailureMessage: Boolean;
    function IsSetInputs: Boolean;
    function IsSetIsCritical: Boolean;
    function IsSetIsEnd: Boolean;
    function IsSetMaxAttempts: Boolean;
    function IsSetNextStep: Boolean;
    function IsSetOnFailure: Boolean;
    function IsSetOutputs: Boolean;
    function IsSetOverriddenParameters: Boolean;
    function IsSetResponse: Boolean;
    function IsSetResponseCode: Boolean;
    function IsSetStepExecutionId: Boolean;
    function IsSetStepName: Boolean;
    function IsSetStepStatus: Boolean;
    function IsSetTargetLocation: Boolean;
    function IsSetTargets: Boolean;
    function IsSetTimeoutSeconds: Boolean;
    function IsSetValidNextSteps: Boolean;
    property Action: string read GetAction write SetAction;
    property ExecutionEndTime: TDateTime read GetExecutionEndTime write SetExecutionEndTime;
    property ExecutionStartTime: TDateTime read GetExecutionStartTime write SetExecutionStartTime;
    property FailureDetails: TFailureDetails read GetFailureDetails write SetFailureDetails;
    property KeepFailureDetails: Boolean read GetKeepFailureDetails write SetKeepFailureDetails;
    property FailureMessage: string read GetFailureMessage write SetFailureMessage;
    property Inputs: TDictionary<string, string> read GetInputs write SetInputs;
    property KeepInputs: Boolean read GetKeepInputs write SetKeepInputs;
    property IsCritical: Boolean read GetIsCritical write SetIsCritical;
    property IsEnd: Boolean read GetIsEnd write SetIsEnd;
    property MaxAttempts: Integer read GetMaxAttempts write SetMaxAttempts;
    property NextStep: string read GetNextStep write SetNextStep;
    property OnFailure: string read GetOnFailure write SetOnFailure;
    property Outputs: TObjectDictionary<string, TList<string>> read GetOutputs write SetOutputs;
    property KeepOutputs: Boolean read GetKeepOutputs write SetKeepOutputs;
    property OverriddenParameters: TObjectDictionary<string, TList<string>> read GetOverriddenParameters write SetOverriddenParameters;
    property KeepOverriddenParameters: Boolean read GetKeepOverriddenParameters write SetKeepOverriddenParameters;
    property Response: string read GetResponse write SetResponse;
    property ResponseCode: string read GetResponseCode write SetResponseCode;
    property StepExecutionId: string read GetStepExecutionId write SetStepExecutionId;
    property StepName: string read GetStepName write SetStepName;
    property StepStatus: TAutomationExecutionStatus read GetStepStatus write SetStepStatus;
    property TargetLocation: TTargetLocation read GetTargetLocation write SetTargetLocation;
    property KeepTargetLocation: Boolean read GetKeepTargetLocation write SetKeepTargetLocation;
    property Targets: TObjectList<TTarget> read GetTargets write SetTargets;
    property KeepTargets: Boolean read GetKeepTargets write SetKeepTargets;
    property TimeoutSeconds: Int64 read GetTimeoutSeconds write SetTimeoutSeconds;
    property ValidNextSteps: TList<string> read GetValidNextSteps write SetValidNextSteps;
    property KeepValidNextSteps: Boolean read GetKeepValidNextSteps write SetKeepValidNextSteps;
  end;
  
  TStepExecution = class
  strict private
    FAction: Nullable<string>;
    FExecutionEndTime: Nullable<TDateTime>;
    FExecutionStartTime: Nullable<TDateTime>;
    FFailureDetails: TFailureDetails;
    FKeepFailureDetails: Boolean;
    FFailureMessage: Nullable<string>;
    FInputs: TDictionary<string, string>;
    FKeepInputs: Boolean;
    FIsCritical: Nullable<Boolean>;
    FIsEnd: Nullable<Boolean>;
    FMaxAttempts: Nullable<Integer>;
    FNextStep: Nullable<string>;
    FOnFailure: Nullable<string>;
    FOutputs: TObjectDictionary<string, TList<string>>;
    FKeepOutputs: Boolean;
    FOverriddenParameters: TObjectDictionary<string, TList<string>>;
    FKeepOverriddenParameters: Boolean;
    FResponse: Nullable<string>;
    FResponseCode: Nullable<string>;
    FStepExecutionId: Nullable<string>;
    FStepName: Nullable<string>;
    FStepStatus: Nullable<TAutomationExecutionStatus>;
    FTargetLocation: TTargetLocation;
    FKeepTargetLocation: Boolean;
    FTargets: TObjectList<TTarget>;
    FKeepTargets: Boolean;
    FTimeoutSeconds: Nullable<Int64>;
    FValidNextSteps: TList<string>;
    FKeepValidNextSteps: Boolean;
    function GetAction: string;
    procedure SetAction(const Value: string);
    function GetExecutionEndTime: TDateTime;
    procedure SetExecutionEndTime(const Value: TDateTime);
    function GetExecutionStartTime: TDateTime;
    procedure SetExecutionStartTime(const Value: TDateTime);
    function GetFailureDetails: TFailureDetails;
    procedure SetFailureDetails(const Value: TFailureDetails);
    function GetKeepFailureDetails: Boolean;
    procedure SetKeepFailureDetails(const Value: Boolean);
    function GetFailureMessage: string;
    procedure SetFailureMessage(const Value: string);
    function GetInputs: TDictionary<string, string>;
    procedure SetInputs(const Value: TDictionary<string, string>);
    function GetKeepInputs: Boolean;
    procedure SetKeepInputs(const Value: Boolean);
    function GetIsCritical: Boolean;
    procedure SetIsCritical(const Value: Boolean);
    function GetIsEnd: Boolean;
    procedure SetIsEnd(const Value: Boolean);
    function GetMaxAttempts: Integer;
    procedure SetMaxAttempts(const Value: Integer);
    function GetNextStep: string;
    procedure SetNextStep(const Value: string);
    function GetOnFailure: string;
    procedure SetOnFailure(const Value: string);
    function GetOutputs: TObjectDictionary<string, TList<string>>;
    procedure SetOutputs(const Value: TObjectDictionary<string, TList<string>>);
    function GetKeepOutputs: Boolean;
    procedure SetKeepOutputs(const Value: Boolean);
    function GetOverriddenParameters: TObjectDictionary<string, TList<string>>;
    procedure SetOverriddenParameters(const Value: TObjectDictionary<string, TList<string>>);
    function GetKeepOverriddenParameters: Boolean;
    procedure SetKeepOverriddenParameters(const Value: Boolean);
    function GetResponse: string;
    procedure SetResponse(const Value: string);
    function GetResponseCode: string;
    procedure SetResponseCode(const Value: string);
    function GetStepExecutionId: string;
    procedure SetStepExecutionId(const Value: string);
    function GetStepName: string;
    procedure SetStepName(const Value: string);
    function GetStepStatus: TAutomationExecutionStatus;
    procedure SetStepStatus(const Value: TAutomationExecutionStatus);
    function GetTargetLocation: TTargetLocation;
    procedure SetTargetLocation(const Value: TTargetLocation);
    function GetKeepTargetLocation: Boolean;
    procedure SetKeepTargetLocation(const Value: Boolean);
    function GetTargets: TObjectList<TTarget>;
    procedure SetTargets(const Value: TObjectList<TTarget>);
    function GetKeepTargets: Boolean;
    procedure SetKeepTargets(const Value: Boolean);
    function GetTimeoutSeconds: Int64;
    procedure SetTimeoutSeconds(const Value: Int64);
    function GetValidNextSteps: TList<string>;
    procedure SetValidNextSteps(const Value: TList<string>);
    function GetKeepValidNextSteps: Boolean;
    procedure SetKeepValidNextSteps(const Value: Boolean);
  strict protected
    function Obj: TStepExecution;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAction: Boolean;
    function IsSetExecutionEndTime: Boolean;
    function IsSetExecutionStartTime: Boolean;
    function IsSetFailureDetails: Boolean;
    function IsSetFailureMessage: Boolean;
    function IsSetInputs: Boolean;
    function IsSetIsCritical: Boolean;
    function IsSetIsEnd: Boolean;
    function IsSetMaxAttempts: Boolean;
    function IsSetNextStep: Boolean;
    function IsSetOnFailure: Boolean;
    function IsSetOutputs: Boolean;
    function IsSetOverriddenParameters: Boolean;
    function IsSetResponse: Boolean;
    function IsSetResponseCode: Boolean;
    function IsSetStepExecutionId: Boolean;
    function IsSetStepName: Boolean;
    function IsSetStepStatus: Boolean;
    function IsSetTargetLocation: Boolean;
    function IsSetTargets: Boolean;
    function IsSetTimeoutSeconds: Boolean;
    function IsSetValidNextSteps: Boolean;
    property Action: string read GetAction write SetAction;
    property ExecutionEndTime: TDateTime read GetExecutionEndTime write SetExecutionEndTime;
    property ExecutionStartTime: TDateTime read GetExecutionStartTime write SetExecutionStartTime;
    property FailureDetails: TFailureDetails read GetFailureDetails write SetFailureDetails;
    property KeepFailureDetails: Boolean read GetKeepFailureDetails write SetKeepFailureDetails;
    property FailureMessage: string read GetFailureMessage write SetFailureMessage;
    property Inputs: TDictionary<string, string> read GetInputs write SetInputs;
    property KeepInputs: Boolean read GetKeepInputs write SetKeepInputs;
    property IsCritical: Boolean read GetIsCritical write SetIsCritical;
    property IsEnd: Boolean read GetIsEnd write SetIsEnd;
    property MaxAttempts: Integer read GetMaxAttempts write SetMaxAttempts;
    property NextStep: string read GetNextStep write SetNextStep;
    property OnFailure: string read GetOnFailure write SetOnFailure;
    property Outputs: TObjectDictionary<string, TList<string>> read GetOutputs write SetOutputs;
    property KeepOutputs: Boolean read GetKeepOutputs write SetKeepOutputs;
    property OverriddenParameters: TObjectDictionary<string, TList<string>> read GetOverriddenParameters write SetOverriddenParameters;
    property KeepOverriddenParameters: Boolean read GetKeepOverriddenParameters write SetKeepOverriddenParameters;
    property Response: string read GetResponse write SetResponse;
    property ResponseCode: string read GetResponseCode write SetResponseCode;
    property StepExecutionId: string read GetStepExecutionId write SetStepExecutionId;
    property StepName: string read GetStepName write SetStepName;
    property StepStatus: TAutomationExecutionStatus read GetStepStatus write SetStepStatus;
    property TargetLocation: TTargetLocation read GetTargetLocation write SetTargetLocation;
    property KeepTargetLocation: Boolean read GetKeepTargetLocation write SetKeepTargetLocation;
    property Targets: TObjectList<TTarget> read GetTargets write SetTargets;
    property KeepTargets: Boolean read GetKeepTargets write SetKeepTargets;
    property TimeoutSeconds: Int64 read GetTimeoutSeconds write SetTimeoutSeconds;
    property ValidNextSteps: TList<string> read GetValidNextSteps write SetValidNextSteps;
    property KeepValidNextSteps: Boolean read GetKeepValidNextSteps write SetKeepValidNextSteps;
  end;
  
implementation

{ TStepExecution }

constructor TStepExecution.Create;
begin
  inherited;
  FInputs := TDictionary<string, string>.Create;
  FOutputs := TObjectDictionary<string, TList<string>>.Create([doOwnsValues]);
  FOverriddenParameters := TObjectDictionary<string, TList<string>>.Create([doOwnsValues]);
  FTargets := TObjectList<TTarget>.Create;
  FValidNextSteps := TList<string>.Create;
end;

destructor TStepExecution.Destroy;
begin
  ValidNextSteps := nil;
  Targets := nil;
  TargetLocation := nil;
  OverriddenParameters := nil;
  Outputs := nil;
  Inputs := nil;
  FailureDetails := nil;
  inherited;
end;

function TStepExecution.Obj: TStepExecution;
begin
  Result := Self;
end;

function TStepExecution.GetAction: string;
begin
  Result := FAction.ValueOrDefault;
end;

procedure TStepExecution.SetAction(const Value: string);
begin
  FAction := Value;
end;

function TStepExecution.IsSetAction: Boolean;
begin
  Result := FAction.HasValue;
end;

function TStepExecution.GetExecutionEndTime: TDateTime;
begin
  Result := FExecutionEndTime.ValueOrDefault;
end;

procedure TStepExecution.SetExecutionEndTime(const Value: TDateTime);
begin
  FExecutionEndTime := Value;
end;

function TStepExecution.IsSetExecutionEndTime: Boolean;
begin
  Result := FExecutionEndTime.HasValue;
end;

function TStepExecution.GetExecutionStartTime: TDateTime;
begin
  Result := FExecutionStartTime.ValueOrDefault;
end;

procedure TStepExecution.SetExecutionStartTime(const Value: TDateTime);
begin
  FExecutionStartTime := Value;
end;

function TStepExecution.IsSetExecutionStartTime: Boolean;
begin
  Result := FExecutionStartTime.HasValue;
end;

function TStepExecution.GetFailureDetails: TFailureDetails;
begin
  Result := FFailureDetails;
end;

procedure TStepExecution.SetFailureDetails(const Value: TFailureDetails);
begin
  if FFailureDetails <> Value then
  begin
    if not KeepFailureDetails then
      FFailureDetails.Free;
    FFailureDetails := Value;
  end;
end;

function TStepExecution.GetKeepFailureDetails: Boolean;
begin
  Result := FKeepFailureDetails;
end;

procedure TStepExecution.SetKeepFailureDetails(const Value: Boolean);
begin
  FKeepFailureDetails := Value;
end;

function TStepExecution.IsSetFailureDetails: Boolean;
begin
  Result := FFailureDetails <> nil;
end;

function TStepExecution.GetFailureMessage: string;
begin
  Result := FFailureMessage.ValueOrDefault;
end;

procedure TStepExecution.SetFailureMessage(const Value: string);
begin
  FFailureMessage := Value;
end;

function TStepExecution.IsSetFailureMessage: Boolean;
begin
  Result := FFailureMessage.HasValue;
end;

function TStepExecution.GetInputs: TDictionary<string, string>;
begin
  Result := FInputs;
end;

procedure TStepExecution.SetInputs(const Value: TDictionary<string, string>);
begin
  if FInputs <> Value then
  begin
    if not KeepInputs then
      FInputs.Free;
    FInputs := Value;
  end;
end;

function TStepExecution.GetKeepInputs: Boolean;
begin
  Result := FKeepInputs;
end;

procedure TStepExecution.SetKeepInputs(const Value: Boolean);
begin
  FKeepInputs := Value;
end;

function TStepExecution.IsSetInputs: Boolean;
begin
  Result := (FInputs <> nil) and (FInputs.Count > 0);
end;

function TStepExecution.GetIsCritical: Boolean;
begin
  Result := FIsCritical.ValueOrDefault;
end;

procedure TStepExecution.SetIsCritical(const Value: Boolean);
begin
  FIsCritical := Value;
end;

function TStepExecution.IsSetIsCritical: Boolean;
begin
  Result := FIsCritical.HasValue;
end;

function TStepExecution.GetIsEnd: Boolean;
begin
  Result := FIsEnd.ValueOrDefault;
end;

procedure TStepExecution.SetIsEnd(const Value: Boolean);
begin
  FIsEnd := Value;
end;

function TStepExecution.IsSetIsEnd: Boolean;
begin
  Result := FIsEnd.HasValue;
end;

function TStepExecution.GetMaxAttempts: Integer;
begin
  Result := FMaxAttempts.ValueOrDefault;
end;

procedure TStepExecution.SetMaxAttempts(const Value: Integer);
begin
  FMaxAttempts := Value;
end;

function TStepExecution.IsSetMaxAttempts: Boolean;
begin
  Result := FMaxAttempts.HasValue;
end;

function TStepExecution.GetNextStep: string;
begin
  Result := FNextStep.ValueOrDefault;
end;

procedure TStepExecution.SetNextStep(const Value: string);
begin
  FNextStep := Value;
end;

function TStepExecution.IsSetNextStep: Boolean;
begin
  Result := FNextStep.HasValue;
end;

function TStepExecution.GetOnFailure: string;
begin
  Result := FOnFailure.ValueOrDefault;
end;

procedure TStepExecution.SetOnFailure(const Value: string);
begin
  FOnFailure := Value;
end;

function TStepExecution.IsSetOnFailure: Boolean;
begin
  Result := FOnFailure.HasValue;
end;

function TStepExecution.GetOutputs: TObjectDictionary<string, TList<string>>;
begin
  Result := FOutputs;
end;

procedure TStepExecution.SetOutputs(const Value: TObjectDictionary<string, TList<string>>);
begin
  if FOutputs <> Value then
  begin
    if not KeepOutputs then
      FOutputs.Free;
    FOutputs := Value;
  end;
end;

function TStepExecution.GetKeepOutputs: Boolean;
begin
  Result := FKeepOutputs;
end;

procedure TStepExecution.SetKeepOutputs(const Value: Boolean);
begin
  FKeepOutputs := Value;
end;

function TStepExecution.IsSetOutputs: Boolean;
begin
  Result := (FOutputs <> nil) and (FOutputs.Count > 0);
end;

function TStepExecution.GetOverriddenParameters: TObjectDictionary<string, TList<string>>;
begin
  Result := FOverriddenParameters;
end;

procedure TStepExecution.SetOverriddenParameters(const Value: TObjectDictionary<string, TList<string>>);
begin
  if FOverriddenParameters <> Value then
  begin
    if not KeepOverriddenParameters then
      FOverriddenParameters.Free;
    FOverriddenParameters := Value;
  end;
end;

function TStepExecution.GetKeepOverriddenParameters: Boolean;
begin
  Result := FKeepOverriddenParameters;
end;

procedure TStepExecution.SetKeepOverriddenParameters(const Value: Boolean);
begin
  FKeepOverriddenParameters := Value;
end;

function TStepExecution.IsSetOverriddenParameters: Boolean;
begin
  Result := (FOverriddenParameters <> nil) and (FOverriddenParameters.Count > 0);
end;

function TStepExecution.GetResponse: string;
begin
  Result := FResponse.ValueOrDefault;
end;

procedure TStepExecution.SetResponse(const Value: string);
begin
  FResponse := Value;
end;

function TStepExecution.IsSetResponse: Boolean;
begin
  Result := FResponse.HasValue;
end;

function TStepExecution.GetResponseCode: string;
begin
  Result := FResponseCode.ValueOrDefault;
end;

procedure TStepExecution.SetResponseCode(const Value: string);
begin
  FResponseCode := Value;
end;

function TStepExecution.IsSetResponseCode: Boolean;
begin
  Result := FResponseCode.HasValue;
end;

function TStepExecution.GetStepExecutionId: string;
begin
  Result := FStepExecutionId.ValueOrDefault;
end;

procedure TStepExecution.SetStepExecutionId(const Value: string);
begin
  FStepExecutionId := Value;
end;

function TStepExecution.IsSetStepExecutionId: Boolean;
begin
  Result := FStepExecutionId.HasValue;
end;

function TStepExecution.GetStepName: string;
begin
  Result := FStepName.ValueOrDefault;
end;

procedure TStepExecution.SetStepName(const Value: string);
begin
  FStepName := Value;
end;

function TStepExecution.IsSetStepName: Boolean;
begin
  Result := FStepName.HasValue;
end;

function TStepExecution.GetStepStatus: TAutomationExecutionStatus;
begin
  Result := FStepStatus.ValueOrDefault;
end;

procedure TStepExecution.SetStepStatus(const Value: TAutomationExecutionStatus);
begin
  FStepStatus := Value;
end;

function TStepExecution.IsSetStepStatus: Boolean;
begin
  Result := FStepStatus.HasValue;
end;

function TStepExecution.GetTargetLocation: TTargetLocation;
begin
  Result := FTargetLocation;
end;

procedure TStepExecution.SetTargetLocation(const Value: TTargetLocation);
begin
  if FTargetLocation <> Value then
  begin
    if not KeepTargetLocation then
      FTargetLocation.Free;
    FTargetLocation := Value;
  end;
end;

function TStepExecution.GetKeepTargetLocation: Boolean;
begin
  Result := FKeepTargetLocation;
end;

procedure TStepExecution.SetKeepTargetLocation(const Value: Boolean);
begin
  FKeepTargetLocation := Value;
end;

function TStepExecution.IsSetTargetLocation: Boolean;
begin
  Result := FTargetLocation <> nil;
end;

function TStepExecution.GetTargets: TObjectList<TTarget>;
begin
  Result := FTargets;
end;

procedure TStepExecution.SetTargets(const Value: TObjectList<TTarget>);
begin
  if FTargets <> Value then
  begin
    if not KeepTargets then
      FTargets.Free;
    FTargets := Value;
  end;
end;

function TStepExecution.GetKeepTargets: Boolean;
begin
  Result := FKeepTargets;
end;

procedure TStepExecution.SetKeepTargets(const Value: Boolean);
begin
  FKeepTargets := Value;
end;

function TStepExecution.IsSetTargets: Boolean;
begin
  Result := (FTargets <> nil) and (FTargets.Count > 0);
end;

function TStepExecution.GetTimeoutSeconds: Int64;
begin
  Result := FTimeoutSeconds.ValueOrDefault;
end;

procedure TStepExecution.SetTimeoutSeconds(const Value: Int64);
begin
  FTimeoutSeconds := Value;
end;

function TStepExecution.IsSetTimeoutSeconds: Boolean;
begin
  Result := FTimeoutSeconds.HasValue;
end;

function TStepExecution.GetValidNextSteps: TList<string>;
begin
  Result := FValidNextSteps;
end;

procedure TStepExecution.SetValidNextSteps(const Value: TList<string>);
begin
  if FValidNextSteps <> Value then
  begin
    if not KeepValidNextSteps then
      FValidNextSteps.Free;
    FValidNextSteps := Value;
  end;
end;

function TStepExecution.GetKeepValidNextSteps: Boolean;
begin
  Result := FKeepValidNextSteps;
end;

procedure TStepExecution.SetKeepValidNextSteps(const Value: Boolean);
begin
  FKeepValidNextSteps := Value;
end;

function TStepExecution.IsSetValidNextSteps: Boolean;
begin
  Result := (FValidNextSteps <> nil) and (FValidNextSteps.Count > 0);
end;

end.
