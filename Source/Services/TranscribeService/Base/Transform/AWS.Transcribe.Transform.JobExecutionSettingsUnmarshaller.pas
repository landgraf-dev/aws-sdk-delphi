unit AWS.Transcribe.Transform.JobExecutionSettingsUnmarshaller;

interface

uses
  AWS.Transcribe.Model.JobExecutionSettings, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IJobExecutionSettingsUnmarshaller = IUnmarshaller<TJobExecutionSettings, TJsonUnmarshallerContext>;
  
  TJobExecutionSettingsUnmarshaller = class(TInterfacedObject, IUnmarshaller<TJobExecutionSettings, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IJobExecutionSettingsUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TJobExecutionSettings;
    class function JsonInstance: IJobExecutionSettingsUnmarshaller; static;
  end;
  
implementation

{ TJobExecutionSettingsUnmarshaller }

function TJobExecutionSettingsUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TJobExecutionSettings;
var
  TargetDepth: Integer;
  UnmarshalledObject: TJobExecutionSettings;
begin
  UnmarshalledObject := TJobExecutionSettings.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('AllowDeferredExecution', TargetDepth) then
      begin
        var Unmarshaller := TBooleanUnmarshaller.JsonInstance;
        UnmarshalledObject.AllowDeferredExecution := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('DataAccessRoleArn', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DataAccessRoleArn := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TJobExecutionSettingsUnmarshaller.Create;
begin
  FJsonInstance := TJobExecutionSettingsUnmarshaller.Create;
end;

class function TJobExecutionSettingsUnmarshaller.JsonInstance: IJobExecutionSettingsUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
