unit AWS.SSM.Model.ScheduledWindowExecution;

interface

uses
  AWS.Nullable;

type
  TScheduledWindowExecution = class;
  
  IScheduledWindowExecution = interface
    function GetExecutionTime: string;
    procedure SetExecutionTime(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetWindowId: string;
    procedure SetWindowId(const Value: string);
    function Obj: TScheduledWindowExecution;
    function IsSetExecutionTime: Boolean;
    function IsSetName: Boolean;
    function IsSetWindowId: Boolean;
    property ExecutionTime: string read GetExecutionTime write SetExecutionTime;
    property Name: string read GetName write SetName;
    property WindowId: string read GetWindowId write SetWindowId;
  end;
  
  TScheduledWindowExecution = class
  strict private
    FExecutionTime: Nullable<string>;
    FName: Nullable<string>;
    FWindowId: Nullable<string>;
    function GetExecutionTime: string;
    procedure SetExecutionTime(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetWindowId: string;
    procedure SetWindowId(const Value: string);
  strict protected
    function Obj: TScheduledWindowExecution;
  public
    function IsSetExecutionTime: Boolean;
    function IsSetName: Boolean;
    function IsSetWindowId: Boolean;
    property ExecutionTime: string read GetExecutionTime write SetExecutionTime;
    property Name: string read GetName write SetName;
    property WindowId: string read GetWindowId write SetWindowId;
  end;
  
implementation

{ TScheduledWindowExecution }

function TScheduledWindowExecution.Obj: TScheduledWindowExecution;
begin
  Result := Self;
end;

function TScheduledWindowExecution.GetExecutionTime: string;
begin
  Result := FExecutionTime.ValueOrDefault;
end;

procedure TScheduledWindowExecution.SetExecutionTime(const Value: string);
begin
  FExecutionTime := Value;
end;

function TScheduledWindowExecution.IsSetExecutionTime: Boolean;
begin
  Result := FExecutionTime.HasValue;
end;

function TScheduledWindowExecution.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TScheduledWindowExecution.SetName(const Value: string);
begin
  FName := Value;
end;

function TScheduledWindowExecution.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TScheduledWindowExecution.GetWindowId: string;
begin
  Result := FWindowId.ValueOrDefault;
end;

procedure TScheduledWindowExecution.SetWindowId(const Value: string);
begin
  FWindowId := Value;
end;

function TScheduledWindowExecution.IsSetWindowId: Boolean;
begin
  Result := FWindowId.HasValue;
end;

end.
