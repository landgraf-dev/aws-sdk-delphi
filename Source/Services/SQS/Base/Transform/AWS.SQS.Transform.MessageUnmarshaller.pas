unit AWS.SQS.Transform.MessageUnmarshaller;

interface

uses
  AWS.SQS.Model.Message, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SQS.Transform.MessageAttributeValueUnmarshaller, 
  AWS.SQS.Model.MessageAttributeValue;

type
  IMessageUnmarshaller = IUnmarshaller<TMessage, TXmlUnmarshallerContext>;
  
  TMessageUnmarshaller = class(TInterfacedObject, IUnmarshaller<TMessage, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IMessageUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TMessage;
    class function Instance: IMessageUnmarshaller; static;
  end;
  
implementation

{ TMessageUnmarshaller }

function TMessageUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TMessage;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TMessage;
begin
  UnmarshalledObject := TMessage.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('Attribute', TargetDepth) then
        begin
          var Unmarshaller := TKeyValueUnmarshaller<string, string, IStringUnmarshaller, IStringUnmarshaller>.New(TStringUnmarshaller.Instance, TStringUnmarshaller.Instance);
          var item := Unmarshaller.Unmarshall(AContext);
          UnmarshalledObject.Attributes.Add(item.Key, item.Value);
          Continue;
        end;
        if AContext.TestExpression('Body', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Body := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('MD5OfBody', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.MD5OfBody := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('MD5OfMessageAttributes', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.MD5OfMessageAttributes := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('MessageAttribute', TargetDepth) then
        begin
          var Unmarshaller := TKeyValueUnmarshaller<string, TMessageAttributeValue, IStringUnmarshaller, IMessageAttributeValueUnmarshaller>.New(TStringUnmarshaller.Instance, TMessageAttributeValueUnmarshaller.Instance);
          var item := Unmarshaller.Unmarshall(AContext);
          UnmarshalledObject.MessageAttributes.Add(item.Key, item.Value);
          Continue;
        end;
        if AContext.TestExpression('MessageId', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.MessageId := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('ReceiptHandle', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.ReceiptHandle := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
      end
      else
        if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
          Exit(UnmarshalledObject);
  except
    UnmarshalledObject.Free;
    raise;
  end;
end;

class constructor TMessageUnmarshaller.Create;
begin
  FInstance := TMessageUnmarshaller.Create;
end;

class function TMessageUnmarshaller.Instance: IMessageUnmarshaller;
begin
  Result := FInstance;
end;

end.
