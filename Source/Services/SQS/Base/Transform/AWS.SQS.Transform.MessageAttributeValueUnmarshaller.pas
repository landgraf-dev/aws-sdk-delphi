unit AWS.SQS.Transform.MessageAttributeValueUnmarshaller;

interface

uses
  AWS.SQS.Model.MessageAttributeValue, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  System.Classes;

type
  IMessageAttributeValueUnmarshaller = IUnmarshaller<TMessageAttributeValue, TXmlUnmarshallerContext>;
  
  TMessageAttributeValueUnmarshaller = class(TInterfacedObject, IUnmarshaller<TMessageAttributeValue, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IMessageAttributeValueUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TMessageAttributeValue;
    class function Instance: IMessageAttributeValueUnmarshaller; static;
  end;
  
implementation

{ TMessageAttributeValueUnmarshaller }

function TMessageAttributeValueUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TMessageAttributeValue;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TMessageAttributeValue;
begin
  UnmarshalledObject := TMessageAttributeValue.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('BinaryListValue/BinaryListValue', TargetDepth) then
        begin
          var Unmarshaller := TBytesStreamUnmarshaller.Instance;
          UnmarshalledObject.BinaryListValues.Add(Unmarshaller.Unmarshall(AContext));
          Continue;
        end;
        if AContext.TestExpression('BinaryValue', TargetDepth) then
        begin
          var Unmarshaller := TBytesStreamUnmarshaller.Instance;
          UnmarshalledObject.BinaryValue := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('DataType', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.DataType := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('StringListValue/StringListValue', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.StringListValues.Add(Unmarshaller.Unmarshall(AContext));
          Continue;
        end;
        if AContext.TestExpression('StringValue', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.StringValue := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
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

class constructor TMessageAttributeValueUnmarshaller.Create;
begin
  FInstance := TMessageAttributeValueUnmarshaller.Create;
end;

class function TMessageAttributeValueUnmarshaller.Instance: IMessageAttributeValueUnmarshaller;
begin
  Result := FInstance;
end;

end.
