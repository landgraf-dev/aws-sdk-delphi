unit AWS.SSM.Model.MaintenanceWindowTaskInvocationParameters;

interface

uses
  AWS.SSM.Model.MaintenanceWindowAutomationParameters, 
  AWS.SSM.Model.MaintenanceWindowLambdaParameters, 
  AWS.SSM.Model.MaintenanceWindowRunCommandParameters, 
  AWS.SSM.Model.MaintenanceWindowStepFunctionsParameters;

type
  TMaintenanceWindowTaskInvocationParameters = class;
  
  IMaintenanceWindowTaskInvocationParameters = interface
    function GetAutomation: TMaintenanceWindowAutomationParameters;
    procedure SetAutomation(const Value: TMaintenanceWindowAutomationParameters);
    function GetKeepAutomation: Boolean;
    procedure SetKeepAutomation(const Value: Boolean);
    function GetLambda: TMaintenanceWindowLambdaParameters;
    procedure SetLambda(const Value: TMaintenanceWindowLambdaParameters);
    function GetKeepLambda: Boolean;
    procedure SetKeepLambda(const Value: Boolean);
    function GetRunCommand: TMaintenanceWindowRunCommandParameters;
    procedure SetRunCommand(const Value: TMaintenanceWindowRunCommandParameters);
    function GetKeepRunCommand: Boolean;
    procedure SetKeepRunCommand(const Value: Boolean);
    function GetStepFunctions: TMaintenanceWindowStepFunctionsParameters;
    procedure SetStepFunctions(const Value: TMaintenanceWindowStepFunctionsParameters);
    function GetKeepStepFunctions: Boolean;
    procedure SetKeepStepFunctions(const Value: Boolean);
    function Obj: TMaintenanceWindowTaskInvocationParameters;
    function IsSetAutomation: Boolean;
    function IsSetLambda: Boolean;
    function IsSetRunCommand: Boolean;
    function IsSetStepFunctions: Boolean;
    property Automation: TMaintenanceWindowAutomationParameters read GetAutomation write SetAutomation;
    property KeepAutomation: Boolean read GetKeepAutomation write SetKeepAutomation;
    property Lambda: TMaintenanceWindowLambdaParameters read GetLambda write SetLambda;
    property KeepLambda: Boolean read GetKeepLambda write SetKeepLambda;
    property RunCommand: TMaintenanceWindowRunCommandParameters read GetRunCommand write SetRunCommand;
    property KeepRunCommand: Boolean read GetKeepRunCommand write SetKeepRunCommand;
    property StepFunctions: TMaintenanceWindowStepFunctionsParameters read GetStepFunctions write SetStepFunctions;
    property KeepStepFunctions: Boolean read GetKeepStepFunctions write SetKeepStepFunctions;
  end;
  
  TMaintenanceWindowTaskInvocationParameters = class
  strict private
    FAutomation: TMaintenanceWindowAutomationParameters;
    FKeepAutomation: Boolean;
    FLambda: TMaintenanceWindowLambdaParameters;
    FKeepLambda: Boolean;
    FRunCommand: TMaintenanceWindowRunCommandParameters;
    FKeepRunCommand: Boolean;
    FStepFunctions: TMaintenanceWindowStepFunctionsParameters;
    FKeepStepFunctions: Boolean;
    function GetAutomation: TMaintenanceWindowAutomationParameters;
    procedure SetAutomation(const Value: TMaintenanceWindowAutomationParameters);
    function GetKeepAutomation: Boolean;
    procedure SetKeepAutomation(const Value: Boolean);
    function GetLambda: TMaintenanceWindowLambdaParameters;
    procedure SetLambda(const Value: TMaintenanceWindowLambdaParameters);
    function GetKeepLambda: Boolean;
    procedure SetKeepLambda(const Value: Boolean);
    function GetRunCommand: TMaintenanceWindowRunCommandParameters;
    procedure SetRunCommand(const Value: TMaintenanceWindowRunCommandParameters);
    function GetKeepRunCommand: Boolean;
    procedure SetKeepRunCommand(const Value: Boolean);
    function GetStepFunctions: TMaintenanceWindowStepFunctionsParameters;
    procedure SetStepFunctions(const Value: TMaintenanceWindowStepFunctionsParameters);
    function GetKeepStepFunctions: Boolean;
    procedure SetKeepStepFunctions(const Value: Boolean);
  strict protected
    function Obj: TMaintenanceWindowTaskInvocationParameters;
  public
    destructor Destroy; override;
    function IsSetAutomation: Boolean;
    function IsSetLambda: Boolean;
    function IsSetRunCommand: Boolean;
    function IsSetStepFunctions: Boolean;
    property Automation: TMaintenanceWindowAutomationParameters read GetAutomation write SetAutomation;
    property KeepAutomation: Boolean read GetKeepAutomation write SetKeepAutomation;
    property Lambda: TMaintenanceWindowLambdaParameters read GetLambda write SetLambda;
    property KeepLambda: Boolean read GetKeepLambda write SetKeepLambda;
    property RunCommand: TMaintenanceWindowRunCommandParameters read GetRunCommand write SetRunCommand;
    property KeepRunCommand: Boolean read GetKeepRunCommand write SetKeepRunCommand;
    property StepFunctions: TMaintenanceWindowStepFunctionsParameters read GetStepFunctions write SetStepFunctions;
    property KeepStepFunctions: Boolean read GetKeepStepFunctions write SetKeepStepFunctions;
  end;
  
implementation

{ TMaintenanceWindowTaskInvocationParameters }

destructor TMaintenanceWindowTaskInvocationParameters.Destroy;
begin
  StepFunctions := nil;
  RunCommand := nil;
  Lambda := nil;
  Automation := nil;
  inherited;
end;

function TMaintenanceWindowTaskInvocationParameters.Obj: TMaintenanceWindowTaskInvocationParameters;
begin
  Result := Self;
end;

function TMaintenanceWindowTaskInvocationParameters.GetAutomation: TMaintenanceWindowAutomationParameters;
begin
  Result := FAutomation;
end;

procedure TMaintenanceWindowTaskInvocationParameters.SetAutomation(const Value: TMaintenanceWindowAutomationParameters);
begin
  if FAutomation <> Value then
  begin
    if not KeepAutomation then
      FAutomation.Free;
    FAutomation := Value;
  end;
end;

function TMaintenanceWindowTaskInvocationParameters.GetKeepAutomation: Boolean;
begin
  Result := FKeepAutomation;
end;

procedure TMaintenanceWindowTaskInvocationParameters.SetKeepAutomation(const Value: Boolean);
begin
  FKeepAutomation := Value;
end;

function TMaintenanceWindowTaskInvocationParameters.IsSetAutomation: Boolean;
begin
  Result := FAutomation <> nil;
end;

function TMaintenanceWindowTaskInvocationParameters.GetLambda: TMaintenanceWindowLambdaParameters;
begin
  Result := FLambda;
end;

procedure TMaintenanceWindowTaskInvocationParameters.SetLambda(const Value: TMaintenanceWindowLambdaParameters);
begin
  if FLambda <> Value then
  begin
    if not KeepLambda then
      FLambda.Free;
    FLambda := Value;
  end;
end;

function TMaintenanceWindowTaskInvocationParameters.GetKeepLambda: Boolean;
begin
  Result := FKeepLambda;
end;

procedure TMaintenanceWindowTaskInvocationParameters.SetKeepLambda(const Value: Boolean);
begin
  FKeepLambda := Value;
end;

function TMaintenanceWindowTaskInvocationParameters.IsSetLambda: Boolean;
begin
  Result := FLambda <> nil;
end;

function TMaintenanceWindowTaskInvocationParameters.GetRunCommand: TMaintenanceWindowRunCommandParameters;
begin
  Result := FRunCommand;
end;

procedure TMaintenanceWindowTaskInvocationParameters.SetRunCommand(const Value: TMaintenanceWindowRunCommandParameters);
begin
  if FRunCommand <> Value then
  begin
    if not KeepRunCommand then
      FRunCommand.Free;
    FRunCommand := Value;
  end;
end;

function TMaintenanceWindowTaskInvocationParameters.GetKeepRunCommand: Boolean;
begin
  Result := FKeepRunCommand;
end;

procedure TMaintenanceWindowTaskInvocationParameters.SetKeepRunCommand(const Value: Boolean);
begin
  FKeepRunCommand := Value;
end;

function TMaintenanceWindowTaskInvocationParameters.IsSetRunCommand: Boolean;
begin
  Result := FRunCommand <> nil;
end;

function TMaintenanceWindowTaskInvocationParameters.GetStepFunctions: TMaintenanceWindowStepFunctionsParameters;
begin
  Result := FStepFunctions;
end;

procedure TMaintenanceWindowTaskInvocationParameters.SetStepFunctions(const Value: TMaintenanceWindowStepFunctionsParameters);
begin
  if FStepFunctions <> Value then
  begin
    if not KeepStepFunctions then
      FStepFunctions.Free;
    FStepFunctions := Value;
  end;
end;

function TMaintenanceWindowTaskInvocationParameters.GetKeepStepFunctions: Boolean;
begin
  Result := FKeepStepFunctions;
end;

procedure TMaintenanceWindowTaskInvocationParameters.SetKeepStepFunctions(const Value: Boolean);
begin
  FKeepStepFunctions := Value;
end;

function TMaintenanceWindowTaskInvocationParameters.IsSetStepFunctions: Boolean;
begin
  Result := FStepFunctions <> nil;
end;

end.
