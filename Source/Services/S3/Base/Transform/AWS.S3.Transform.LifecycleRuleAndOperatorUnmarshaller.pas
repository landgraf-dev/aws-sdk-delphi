unit AWS.S3.Transform.LifecycleRuleAndOperatorUnmarshaller;

interface

uses
  AWS.S3.Model.LifecycleRuleAndOperator, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.S3.Transform.TagUnmarshaller, 
  AWS.S3.Model.Tag;

type
  ILifecycleRuleAndOperatorUnmarshaller = IUnmarshaller<TLifecycleRuleAndOperator, TXmlUnmarshallerContext>;
  
  TLifecycleRuleAndOperatorUnmarshaller = class(TInterfacedObject, IUnmarshaller<TLifecycleRuleAndOperator, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: ILifecycleRuleAndOperatorUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TLifecycleRuleAndOperator;
    class function Instance: ILifecycleRuleAndOperatorUnmarshaller; static;
  end;
  
implementation

{ TLifecycleRuleAndOperatorUnmarshaller }

function TLifecycleRuleAndOperatorUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TLifecycleRuleAndOperator;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TLifecycleRuleAndOperator;
begin
  UnmarshalledObject := TLifecycleRuleAndOperator.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('Prefix', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Prefix := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Tag/Tag', TargetDepth) then
        begin
          var Unmarshaller := TTagUnmarshaller.Instance;
          UnmarshalledObject.Tags.Add(Unmarshaller.Unmarshall(AContext));
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

class constructor TLifecycleRuleAndOperatorUnmarshaller.Create;
begin
  FInstance := TLifecycleRuleAndOperatorUnmarshaller.Create;
end;

class function TLifecycleRuleAndOperatorUnmarshaller.Instance: ILifecycleRuleAndOperatorUnmarshaller;
begin
  Result := FInstance;
end;

end.
