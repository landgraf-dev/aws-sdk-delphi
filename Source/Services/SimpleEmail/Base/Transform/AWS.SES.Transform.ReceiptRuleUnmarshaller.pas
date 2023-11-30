unit AWS.SES.Transform.ReceiptRuleUnmarshaller;

interface

uses
  AWS.SES.Model.ReceiptRule, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.SES.Transform.ReceiptActionUnmarshaller, 
  AWS.SES.Model.ReceiptAction, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IReceiptRuleUnmarshaller = IUnmarshaller<TReceiptRule, TXmlUnmarshallerContext>;
  
  TReceiptRuleUnmarshaller = class(TInterfacedObject, IUnmarshaller<TReceiptRule, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IReceiptRuleUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TReceiptRule;
    class function Instance: IReceiptRuleUnmarshaller; static;
  end;
  
implementation

{ TReceiptRuleUnmarshaller }

function TReceiptRuleUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TReceiptRule;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TReceiptRule;
begin
  UnmarshalledObject := TReceiptRule.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('Actions/member', TargetDepth) then
        begin
          var Unmarshaller := TReceiptActionUnmarshaller.Instance;
          UnmarshalledObject.Actions.Add(Unmarshaller.Unmarshall(AContext));
          Continue;
        end;
        if AContext.TestExpression('Enabled', TargetDepth) then
        begin
          var Unmarshaller := TBooleanUnmarshaller.Instance;
          UnmarshalledObject.Enabled := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Name', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Name := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Recipients/member', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Recipients.Add(Unmarshaller.Unmarshall(AContext));
          Continue;
        end;
        if AContext.TestExpression('ScanEnabled', TargetDepth) then
        begin
          var Unmarshaller := TBooleanUnmarshaller.Instance;
          UnmarshalledObject.ScanEnabled := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('TlsPolicy', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.TlsPolicy := Unmarshaller.Unmarshall(AContext);
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

class constructor TReceiptRuleUnmarshaller.Create;
begin
  FInstance := TReceiptRuleUnmarshaller.Create;
end;

class function TReceiptRuleUnmarshaller.Instance: IReceiptRuleUnmarshaller;
begin
  Result := FInstance;
end;

end.
