unit AWS.SSM.Transform.NotificationConfigUnmarshaller;

interface

uses
  AWS.SSM.Model.NotificationConfig, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  INotificationConfigUnmarshaller = IUnmarshaller<TNotificationConfig, TJsonUnmarshallerContext>;
  
  TNotificationConfigUnmarshaller = class(TInterfacedObject, IUnmarshaller<TNotificationConfig, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: INotificationConfigUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TNotificationConfig;
    class function JsonInstance: INotificationConfigUnmarshaller; static;
  end;
  
implementation

{ TNotificationConfigUnmarshaller }

function TNotificationConfigUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TNotificationConfig;
var
  TargetDepth: Integer;
  UnmarshalledObject: TNotificationConfig;
begin
  UnmarshalledObject := TNotificationConfig.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('NotificationArn', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.NotificationArn := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('NotificationEvents', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.NotificationEvents := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('NotificationType', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.NotificationType := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TNotificationConfigUnmarshaller.Create;
begin
  FJsonInstance := TNotificationConfigUnmarshaller.Create;
end;

class function TNotificationConfigUnmarshaller.JsonInstance: INotificationConfigUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
