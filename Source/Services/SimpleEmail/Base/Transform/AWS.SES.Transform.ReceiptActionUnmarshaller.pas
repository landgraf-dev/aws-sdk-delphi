unit AWS.SES.Transform.ReceiptActionUnmarshaller;

interface

uses
  AWS.SES.Model.ReceiptAction, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.SES.Transform.AddHeaderActionUnmarshaller, 
  AWS.SES.Transform.BounceActionUnmarshaller, 
  AWS.SES.Transform.LambdaActionUnmarshaller, 
  AWS.SES.Transform.S3ActionUnmarshaller, 
  AWS.SES.Transform.SNSActionUnmarshaller, 
  AWS.SES.Transform.StopActionUnmarshaller, 
  AWS.SES.Transform.WorkmailActionUnmarshaller;

type
  IReceiptActionUnmarshaller = IUnmarshaller<TReceiptAction, TXmlUnmarshallerContext>;
  
  TReceiptActionUnmarshaller = class(TInterfacedObject, IUnmarshaller<TReceiptAction, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IReceiptActionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TReceiptAction;
    class function Instance: IReceiptActionUnmarshaller; static;
  end;
  
implementation

{ TReceiptActionUnmarshaller }

function TReceiptActionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TReceiptAction;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TReceiptAction;
begin
  UnmarshalledObject := TReceiptAction.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('AddHeaderAction', TargetDepth) then
        begin
          var Unmarshaller := TAddHeaderActionUnmarshaller.Instance;
          UnmarshalledObject.AddHeaderAction := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('BounceAction', TargetDepth) then
        begin
          var Unmarshaller := TBounceActionUnmarshaller.Instance;
          UnmarshalledObject.BounceAction := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('LambdaAction', TargetDepth) then
        begin
          var Unmarshaller := TLambdaActionUnmarshaller.Instance;
          UnmarshalledObject.LambdaAction := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('S3Action', TargetDepth) then
        begin
          var Unmarshaller := TS3ActionUnmarshaller.Instance;
          UnmarshalledObject.S3Action := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('SNSAction', TargetDepth) then
        begin
          var Unmarshaller := TSNSActionUnmarshaller.Instance;
          UnmarshalledObject.SNSAction := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('StopAction', TargetDepth) then
        begin
          var Unmarshaller := TStopActionUnmarshaller.Instance;
          UnmarshalledObject.StopAction := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('WorkmailAction', TargetDepth) then
        begin
          var Unmarshaller := TWorkmailActionUnmarshaller.Instance;
          UnmarshalledObject.WorkmailAction := Unmarshaller.Unmarshall(AContext);
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

class constructor TReceiptActionUnmarshaller.Create;
begin
  FInstance := TReceiptActionUnmarshaller.Create;
end;

class function TReceiptActionUnmarshaller.Instance: IReceiptActionUnmarshaller;
begin
  Result := FInstance;
end;

end.
