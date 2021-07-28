unit AWS.SES.Transform.SNSActionUnmarshaller;

interface

uses
  AWS.SES.Model.SNSAction, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ISNSActionUnmarshaller = IUnmarshaller<TSNSAction, TXmlUnmarshallerContext>;
  
  TSNSActionUnmarshaller = class(TInterfacedObject, IUnmarshaller<TSNSAction, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: ISNSActionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TSNSAction;
    class function Instance: ISNSActionUnmarshaller; static;
  end;
  
implementation

{ TSNSActionUnmarshaller }

function TSNSActionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TSNSAction;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TSNSAction;
begin
  UnmarshalledObject := TSNSAction.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('Encoding', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Encoding := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('TopicArn', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.TopicArn := Unmarshaller.Unmarshall(AContext);
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

class constructor TSNSActionUnmarshaller.Create;
begin
  FInstance := TSNSActionUnmarshaller.Create;
end;

class function TSNSActionUnmarshaller.Instance: ISNSActionUnmarshaller;
begin
  Result := FInstance;
end;

end.
