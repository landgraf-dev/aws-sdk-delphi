unit AWS.SSM.Model.MaintenanceWindowStepFunctionsParameters;

interface

uses
  AWS.Nullable;

type
  TMaintenanceWindowStepFunctionsParameters = class;
  
  IMaintenanceWindowStepFunctionsParameters = interface
    function GetInput: string;
    procedure SetInput(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function Obj: TMaintenanceWindowStepFunctionsParameters;
    function IsSetInput: Boolean;
    function IsSetName: Boolean;
    property Input: string read GetInput write SetInput;
    property Name: string read GetName write SetName;
  end;
  
  TMaintenanceWindowStepFunctionsParameters = class
  strict private
    FInput: Nullable<string>;
    FName: Nullable<string>;
    function GetInput: string;
    procedure SetInput(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
  strict protected
    function Obj: TMaintenanceWindowStepFunctionsParameters;
  public
    function IsSetInput: Boolean;
    function IsSetName: Boolean;
    property Input: string read GetInput write SetInput;
    property Name: string read GetName write SetName;
  end;
  
implementation

{ TMaintenanceWindowStepFunctionsParameters }

function TMaintenanceWindowStepFunctionsParameters.Obj: TMaintenanceWindowStepFunctionsParameters;
begin
  Result := Self;
end;

function TMaintenanceWindowStepFunctionsParameters.GetInput: string;
begin
  Result := FInput.ValueOrDefault;
end;

procedure TMaintenanceWindowStepFunctionsParameters.SetInput(const Value: string);
begin
  FInput := Value;
end;

function TMaintenanceWindowStepFunctionsParameters.IsSetInput: Boolean;
begin
  Result := FInput.HasValue;
end;

function TMaintenanceWindowStepFunctionsParameters.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TMaintenanceWindowStepFunctionsParameters.SetName(const Value: string);
begin
  FName := Value;
end;

function TMaintenanceWindowStepFunctionsParameters.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

end.
