unit AWS.SESv2.Transform.TopicUnmarshaller;

interface

uses
  AWS.SESv2.Model.Topic, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ITopicUnmarshaller = IUnmarshaller<TTopic, TJsonUnmarshallerContext>;
  
  TTopicUnmarshaller = class(TInterfacedObject, IUnmarshaller<TTopic, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ITopicUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TTopic;
    class function JsonInstance: ITopicUnmarshaller; static;
  end;
  
implementation

{ TTopicUnmarshaller }

function TTopicUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TTopic;
var
  TargetDepth: Integer;
  UnmarshalledObject: TTopic;
begin
  UnmarshalledObject := TTopic.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('DefaultSubscriptionStatus', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DefaultSubscriptionStatus := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Description', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Description := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('DisplayName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DisplayName := Unmarshaller.Unmarshall(AContext);
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

class constructor TTopicUnmarshaller.Create;
begin
  FJsonInstance := TTopicUnmarshaller.Create;
end;

class function TTopicUnmarshaller.JsonInstance: ITopicUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
