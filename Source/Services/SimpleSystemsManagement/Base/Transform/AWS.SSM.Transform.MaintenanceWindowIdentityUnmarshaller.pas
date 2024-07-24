unit AWS.SSM.Transform.MaintenanceWindowIdentityUnmarshaller;

interface

uses
  AWS.SSM.Model.MaintenanceWindowIdentity, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IMaintenanceWindowIdentityUnmarshaller = IUnmarshaller<TMaintenanceWindowIdentity, TJsonUnmarshallerContext>;
  
  TMaintenanceWindowIdentityUnmarshaller = class(TInterfacedObject, IUnmarshaller<TMaintenanceWindowIdentity, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IMaintenanceWindowIdentityUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TMaintenanceWindowIdentity;
    class function JsonInstance: IMaintenanceWindowIdentityUnmarshaller; static;
  end;
  
implementation

{ TMaintenanceWindowIdentityUnmarshaller }

function TMaintenanceWindowIdentityUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TMaintenanceWindowIdentity;
var
  TargetDepth: Integer;
  UnmarshalledObject: TMaintenanceWindowIdentity;
begin
  UnmarshalledObject := TMaintenanceWindowIdentity.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Cutoff', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.Cutoff := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Description', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Description := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Duration', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.Duration := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Enabled', TargetDepth) then
      begin
        var Unmarshaller := TBooleanUnmarshaller.JsonInstance;
        UnmarshalledObject.Enabled := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('EndDate', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.EndDate := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Name', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Name := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('NextExecutionTime', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.NextExecutionTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Schedule', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Schedule := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ScheduleOffset', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.ScheduleOffset := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ScheduleTimezone', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ScheduleTimezone := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('StartDate', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.StartDate := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('WindowId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.WindowId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TMaintenanceWindowIdentityUnmarshaller.Create;
begin
  FJsonInstance := TMaintenanceWindowIdentityUnmarshaller.Create;
end;

class function TMaintenanceWindowIdentityUnmarshaller.JsonInstance: IMaintenanceWindowIdentityUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
