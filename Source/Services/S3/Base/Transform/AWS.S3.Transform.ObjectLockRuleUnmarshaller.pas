unit AWS.S3.Transform.ObjectLockRuleUnmarshaller;

interface

uses
  AWS.S3.Model.ObjectLockRule, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.S3.Transform.DefaultRetentionUnmarshaller;

type
  IObjectLockRuleUnmarshaller = IUnmarshaller<TObjectLockRule, TXmlUnmarshallerContext>;
  
  TObjectLockRuleUnmarshaller = class(TInterfacedObject, IUnmarshaller<TObjectLockRule, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IObjectLockRuleUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TObjectLockRule;
    class function Instance: IObjectLockRuleUnmarshaller; static;
  end;
  
implementation

{ TObjectLockRuleUnmarshaller }

function TObjectLockRuleUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TObjectLockRule;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TObjectLockRule;
begin
  UnmarshalledObject := TObjectLockRule.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('DefaultRetention', TargetDepth) then
        begin
          var Unmarshaller := TDefaultRetentionUnmarshaller.Instance;
          UnmarshalledObject.DefaultRetention := Unmarshaller.Unmarshall(AContext);
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

class constructor TObjectLockRuleUnmarshaller.Create;
begin
  FInstance := TObjectLockRuleUnmarshaller.Create;
end;

class function TObjectLockRuleUnmarshaller.Instance: IObjectLockRuleUnmarshaller;
begin
  Result := FInstance;
end;

end.
