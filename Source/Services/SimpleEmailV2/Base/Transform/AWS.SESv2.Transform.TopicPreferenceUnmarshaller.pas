unit AWS.SESv2.Transform.TopicPreferenceUnmarshaller;

interface

uses
  AWS.SESv2.Model.TopicPreference, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ITopicPreferenceUnmarshaller = IUnmarshaller<TTopicPreference, TJsonUnmarshallerContext>;
  
  TTopicPreferenceUnmarshaller = class(TInterfacedObject, IUnmarshaller<TTopicPreference, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ITopicPreferenceUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TTopicPreference;
    class function JsonInstance: ITopicPreferenceUnmarshaller; static;
  end;
  
implementation

{ TTopicPreferenceUnmarshaller }

function TTopicPreferenceUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TTopicPreference;
var
  TargetDepth: Integer;
  UnmarshalledObject: TTopicPreference;
begin
  UnmarshalledObject := TTopicPreference.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('SubscriptionStatus', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.SubscriptionStatus := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TopicName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.TopicName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TTopicPreferenceUnmarshaller.Create;
begin
  FJsonInstance := TTopicPreferenceUnmarshaller.Create;
end;

class function TTopicPreferenceUnmarshaller.JsonInstance: ITopicPreferenceUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
