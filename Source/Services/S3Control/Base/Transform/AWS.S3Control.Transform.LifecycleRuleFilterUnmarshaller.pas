unit AWS.S3Control.Transform.LifecycleRuleFilterUnmarshaller;

interface

uses
  AWS.S3Control.Model.LifecycleRuleFilter, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.S3Control.Transform.LifecycleRuleAndOperatorUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.S3Control.Transform.S3TagUnmarshaller;

type
  ILifecycleRuleFilterUnmarshaller = IUnmarshaller<TLifecycleRuleFilter, TXmlUnmarshallerContext>;
  
  TLifecycleRuleFilterUnmarshaller = class(TInterfacedObject, IUnmarshaller<TLifecycleRuleFilter, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: ILifecycleRuleFilterUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TLifecycleRuleFilter;
    class function Instance: ILifecycleRuleFilterUnmarshaller; static;
  end;
  
implementation

{ TLifecycleRuleFilterUnmarshaller }

function TLifecycleRuleFilterUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TLifecycleRuleFilter;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TLifecycleRuleFilter;
begin
  UnmarshalledObject := TLifecycleRuleFilter.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('And', TargetDepth) then
        begin
          var Unmarshaller := TLifecycleRuleAndOperatorUnmarshaller.Instance;
          UnmarshalledObject.&And := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Prefix', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Prefix := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Tag', TargetDepth) then
        begin
          var Unmarshaller := TS3TagUnmarshaller.Instance;
          UnmarshalledObject.Tag := Unmarshaller.Unmarshall(AContext);
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

class constructor TLifecycleRuleFilterUnmarshaller.Create;
begin
  FInstance := TLifecycleRuleFilterUnmarshaller.Create;
end;

class function TLifecycleRuleFilterUnmarshaller.Instance: ILifecycleRuleFilterUnmarshaller;
begin
  Result := FInstance;
end;

end.
