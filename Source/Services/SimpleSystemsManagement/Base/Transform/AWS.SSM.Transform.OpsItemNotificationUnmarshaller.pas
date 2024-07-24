unit AWS.SSM.Transform.OpsItemNotificationUnmarshaller;

interface

uses
  AWS.SSM.Model.OpsItemNotification, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IOpsItemNotificationUnmarshaller = IUnmarshaller<TOpsItemNotification, TJsonUnmarshallerContext>;
  
  TOpsItemNotificationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TOpsItemNotification, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IOpsItemNotificationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TOpsItemNotification;
    class function JsonInstance: IOpsItemNotificationUnmarshaller; static;
  end;
  
implementation

{ TOpsItemNotificationUnmarshaller }

function TOpsItemNotificationUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TOpsItemNotification;
var
  TargetDepth: Integer;
  UnmarshalledObject: TOpsItemNotification;
begin
  UnmarshalledObject := TOpsItemNotification.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('Arn', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Arn := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TOpsItemNotificationUnmarshaller.Create;
begin
  FJsonInstance := TOpsItemNotificationUnmarshaller.Create;
end;

class function TOpsItemNotificationUnmarshaller.JsonInstance: IOpsItemNotificationUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
