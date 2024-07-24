unit AWS.SSM.Transform.MaintenanceWindowTaskParameterValueExpressionUnmarshaller;

interface

uses
  AWS.SSM.Model.MaintenanceWindowTaskParameterValueExpression, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IMaintenanceWindowTaskParameterValueExpressionUnmarshaller = IUnmarshaller<TMaintenanceWindowTaskParameterValueExpression, TJsonUnmarshallerContext>;
  
  TMaintenanceWindowTaskParameterValueExpressionUnmarshaller = class(TInterfacedObject, IUnmarshaller<TMaintenanceWindowTaskParameterValueExpression, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IMaintenanceWindowTaskParameterValueExpressionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TMaintenanceWindowTaskParameterValueExpression;
    class function JsonInstance: IMaintenanceWindowTaskParameterValueExpressionUnmarshaller; static;
  end;
  
implementation

{ TMaintenanceWindowTaskParameterValueExpressionUnmarshaller }

function TMaintenanceWindowTaskParameterValueExpressionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TMaintenanceWindowTaskParameterValueExpression;
var
  TargetDepth: Integer;
  UnmarshalledObject: TMaintenanceWindowTaskParameterValueExpression;
begin
  UnmarshalledObject := TMaintenanceWindowTaskParameterValueExpression.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('Values', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.Values := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TMaintenanceWindowTaskParameterValueExpressionUnmarshaller.Create;
begin
  FJsonInstance := TMaintenanceWindowTaskParameterValueExpressionUnmarshaller.Create;
end;

class function TMaintenanceWindowTaskParameterValueExpressionUnmarshaller.JsonInstance: IMaintenanceWindowTaskParameterValueExpressionUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
