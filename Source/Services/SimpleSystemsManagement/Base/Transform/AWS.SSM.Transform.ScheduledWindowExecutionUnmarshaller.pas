unit AWS.SSM.Transform.ScheduledWindowExecutionUnmarshaller;

interface

uses
  AWS.SSM.Model.ScheduledWindowExecution, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IScheduledWindowExecutionUnmarshaller = IUnmarshaller<TScheduledWindowExecution, TJsonUnmarshallerContext>;
  
  TScheduledWindowExecutionUnmarshaller = class(TInterfacedObject, IUnmarshaller<TScheduledWindowExecution, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IScheduledWindowExecutionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TScheduledWindowExecution;
    class function JsonInstance: IScheduledWindowExecutionUnmarshaller; static;
  end;
  
implementation

{ TScheduledWindowExecutionUnmarshaller }

function TScheduledWindowExecutionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TScheduledWindowExecution;
var
  TargetDepth: Integer;
  UnmarshalledObject: TScheduledWindowExecution;
begin
  UnmarshalledObject := TScheduledWindowExecution.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('ExecutionTime', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ExecutionTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Name', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Name := Unmarshaller.Unmarshall(AContext);
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

class constructor TScheduledWindowExecutionUnmarshaller.Create;
begin
  FJsonInstance := TScheduledWindowExecutionUnmarshaller.Create;
end;

class function TScheduledWindowExecutionUnmarshaller.JsonInstance: IScheduledWindowExecutionUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
