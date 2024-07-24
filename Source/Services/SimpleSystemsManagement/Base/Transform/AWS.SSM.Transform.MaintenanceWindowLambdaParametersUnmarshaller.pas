unit AWS.SSM.Transform.MaintenanceWindowLambdaParametersUnmarshaller;

interface

uses
  AWS.SSM.Model.MaintenanceWindowLambdaParameters, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IMaintenanceWindowLambdaParametersUnmarshaller = IUnmarshaller<TMaintenanceWindowLambdaParameters, TJsonUnmarshallerContext>;
  
  TMaintenanceWindowLambdaParametersUnmarshaller = class(TInterfacedObject, IUnmarshaller<TMaintenanceWindowLambdaParameters, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IMaintenanceWindowLambdaParametersUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TMaintenanceWindowLambdaParameters;
    class function JsonInstance: IMaintenanceWindowLambdaParametersUnmarshaller; static;
  end;
  
implementation

{ TMaintenanceWindowLambdaParametersUnmarshaller }

function TMaintenanceWindowLambdaParametersUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TMaintenanceWindowLambdaParameters;
var
  TargetDepth: Integer;
  UnmarshalledObject: TMaintenanceWindowLambdaParameters;
begin
  UnmarshalledObject := TMaintenanceWindowLambdaParameters.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('ClientContext', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ClientContext := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Payload', TargetDepth) then
      begin
        var Unmarshaller := TBytesStreamUnmarshaller.JsonInstance;
        UnmarshalledObject.Payload := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Qualifier', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Qualifier := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TMaintenanceWindowLambdaParametersUnmarshaller.Create;
begin
  FJsonInstance := TMaintenanceWindowLambdaParametersUnmarshaller.Create;
end;

class function TMaintenanceWindowLambdaParametersUnmarshaller.JsonInstance: IMaintenanceWindowLambdaParametersUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
