unit AWS.Rekognition.Transform.StreamProcessorNotificationChannelUnmarshaller;

interface

uses
  AWS.Rekognition.Model.StreamProcessorNotificationChannel, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IStreamProcessorNotificationChannelUnmarshaller = IUnmarshaller<TStreamProcessorNotificationChannel, TJsonUnmarshallerContext>;
  
  TStreamProcessorNotificationChannelUnmarshaller = class(TInterfacedObject, IUnmarshaller<TStreamProcessorNotificationChannel, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IStreamProcessorNotificationChannelUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TStreamProcessorNotificationChannel;
    class function JsonInstance: IStreamProcessorNotificationChannelUnmarshaller; static;
  end;
  
implementation

{ TStreamProcessorNotificationChannelUnmarshaller }

function TStreamProcessorNotificationChannelUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TStreamProcessorNotificationChannel;
var
  TargetDepth: Integer;
  UnmarshalledObject: TStreamProcessorNotificationChannel;
begin
  UnmarshalledObject := TStreamProcessorNotificationChannel.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('SNSTopicArn', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.SNSTopicArn := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TStreamProcessorNotificationChannelUnmarshaller.Create;
begin
  FJsonInstance := TStreamProcessorNotificationChannelUnmarshaller.Create;
end;

class function TStreamProcessorNotificationChannelUnmarshaller.JsonInstance: IStreamProcessorNotificationChannelUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
