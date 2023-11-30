unit AWS.SES.Transform.LambdaActionUnmarshaller;

interface

uses
  AWS.SES.Model.LambdaAction, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ILambdaActionUnmarshaller = IUnmarshaller<TLambdaAction, TXmlUnmarshallerContext>;
  
  TLambdaActionUnmarshaller = class(TInterfacedObject, IUnmarshaller<TLambdaAction, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: ILambdaActionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TLambdaAction;
    class function Instance: ILambdaActionUnmarshaller; static;
  end;
  
implementation

{ TLambdaActionUnmarshaller }

function TLambdaActionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TLambdaAction;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TLambdaAction;
begin
  UnmarshalledObject := TLambdaAction.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('FunctionArn', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.FunctionArn := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('InvocationType', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.InvocationType := Unmarshaller.Unmarshall(AContext);
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

class constructor TLambdaActionUnmarshaller.Create;
begin
  FInstance := TLambdaActionUnmarshaller.Create;
end;

class function TLambdaActionUnmarshaller.Instance: ILambdaActionUnmarshaller;
begin
  Result := FInstance;
end;

end.
