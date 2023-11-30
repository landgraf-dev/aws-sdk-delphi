unit AWS.SES.Transform.StopActionUnmarshaller;

interface

uses
  AWS.SES.Model.StopAction, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IStopActionUnmarshaller = IUnmarshaller<TStopAction, TXmlUnmarshallerContext>;
  
  TStopActionUnmarshaller = class(TInterfacedObject, IUnmarshaller<TStopAction, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IStopActionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TStopAction;
    class function Instance: IStopActionUnmarshaller; static;
  end;
  
implementation

{ TStopActionUnmarshaller }

function TStopActionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TStopAction;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TStopAction;
begin
  UnmarshalledObject := TStopAction.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('Scope', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Scope := Unmarshaller.Unmarshall(AContext);
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
  except
    UnmarshalledObject.Free;
    raise;
  end;
end;

class constructor TStopActionUnmarshaller.Create;
begin
  FInstance := TStopActionUnmarshaller.Create;
end;

class function TStopActionUnmarshaller.Instance: IStopActionUnmarshaller;
begin
  Result := FInstance;
end;

end.
