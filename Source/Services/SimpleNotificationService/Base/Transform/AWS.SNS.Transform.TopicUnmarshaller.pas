unit AWS.SNS.Transform.TopicUnmarshaller;

interface

uses
  AWS.SNS.Model.Topic, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ITopicUnmarshaller = IUnmarshaller<TTopic, TXmlUnmarshallerContext>;
  
  TTopicUnmarshaller = class(TInterfacedObject, IUnmarshaller<TTopic, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: ITopicUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TTopic;
    class function Instance: ITopicUnmarshaller; static;
  end;
  
implementation

{ TTopicUnmarshaller }

function TTopicUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TTopic;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TTopic;
begin
  UnmarshalledObject := TTopic.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('TopicArn', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.TopicArn := Unmarshaller.Unmarshall(AContext);
          Continue;
        end
      else
        if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
          Exit(UnmarshalledObject);
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TTopicUnmarshaller.Create;
begin
  FInstance := TTopicUnmarshaller.Create;
end;

class function TTopicUnmarshaller.Instance: ITopicUnmarshaller;
begin
  Result := FInstance;
end;

end.
