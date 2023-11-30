unit AWS.SES.Transform.BounceActionUnmarshaller;

interface

uses
  AWS.SES.Model.BounceAction, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IBounceActionUnmarshaller = IUnmarshaller<TBounceAction, TXmlUnmarshallerContext>;
  
  TBounceActionUnmarshaller = class(TInterfacedObject, IUnmarshaller<TBounceAction, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IBounceActionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TBounceAction;
    class function Instance: IBounceActionUnmarshaller; static;
  end;
  
implementation

{ TBounceActionUnmarshaller }

function TBounceActionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TBounceAction;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TBounceAction;
begin
  UnmarshalledObject := TBounceAction.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('Message', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Message := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Sender', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Sender := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('SmtpReplyCode', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.SmtpReplyCode := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('StatusCode', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.StatusCode := Unmarshaller.Unmarshall(AContext);
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

class constructor TBounceActionUnmarshaller.Create;
begin
  FInstance := TBounceActionUnmarshaller.Create;
end;

class function TBounceActionUnmarshaller.Instance: IBounceActionUnmarshaller;
begin
  Result := FInstance;
end;

end.
