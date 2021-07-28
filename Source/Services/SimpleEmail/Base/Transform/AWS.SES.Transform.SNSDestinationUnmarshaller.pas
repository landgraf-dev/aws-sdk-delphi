unit AWS.SES.Transform.SNSDestinationUnmarshaller;

interface

uses
  AWS.SES.Model.SNSDestination, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ISNSDestinationUnmarshaller = IUnmarshaller<TSNSDestination, TXmlUnmarshallerContext>;
  
  TSNSDestinationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TSNSDestination, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: ISNSDestinationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TSNSDestination;
    class function Instance: ISNSDestinationUnmarshaller; static;
  end;
  
implementation

{ TSNSDestinationUnmarshaller }

function TSNSDestinationUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TSNSDestination;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TSNSDestination;
begin
  UnmarshalledObject := TSNSDestination.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('TopicARN', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.TopicARN := Unmarshaller.Unmarshall(AContext);
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

class constructor TSNSDestinationUnmarshaller.Create;
begin
  FInstance := TSNSDestinationUnmarshaller.Create;
end;

class function TSNSDestinationUnmarshaller.Instance: ISNSDestinationUnmarshaller;
begin
  Result := FInstance;
end;

end.
