unit AWS.SSM.Transform.MaintenanceWindowExecutionUnmarshaller;

interface

uses
  AWS.SSM.Model.MaintenanceWindowExecution, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IMaintenanceWindowExecutionUnmarshaller = IUnmarshaller<TMaintenanceWindowExecution, TJsonUnmarshallerContext>;
  
  TMaintenanceWindowExecutionUnmarshaller = class(TInterfacedObject, IUnmarshaller<TMaintenanceWindowExecution, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IMaintenanceWindowExecutionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TMaintenanceWindowExecution;
    class function JsonInstance: IMaintenanceWindowExecutionUnmarshaller; static;
  end;
  
implementation

{ TMaintenanceWindowExecutionUnmarshaller }

function TMaintenanceWindowExecutionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TMaintenanceWindowExecution;
var
  TargetDepth: Integer;
  UnmarshalledObject: TMaintenanceWindowExecution;
begin
  UnmarshalledObject := TMaintenanceWindowExecution.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('EndTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.EndTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('StartTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.StartTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Status', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Status := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('StatusDetails', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.StatusDetails := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('WindowExecutionId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.WindowExecutionId := Unmarshaller.Unmarshall(AContext);
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

class constructor TMaintenanceWindowExecutionUnmarshaller.Create;
begin
  FJsonInstance := TMaintenanceWindowExecutionUnmarshaller.Create;
end;

class function TMaintenanceWindowExecutionUnmarshaller.JsonInstance: IMaintenanceWindowExecutionUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
