unit AWS.S3.Transform.OwnershipControlsRuleUnmarshaller;

interface

uses
  AWS.S3.Model.OwnershipControlsRule, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IOwnershipControlsRuleUnmarshaller = IUnmarshaller<TOwnershipControlsRule, TXmlUnmarshallerContext>;
  
  TOwnershipControlsRuleUnmarshaller = class(TInterfacedObject, IUnmarshaller<TOwnershipControlsRule, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IOwnershipControlsRuleUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TOwnershipControlsRule;
    class function Instance: IOwnershipControlsRuleUnmarshaller; static;
  end;
  
implementation

{ TOwnershipControlsRuleUnmarshaller }

function TOwnershipControlsRuleUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TOwnershipControlsRule;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TOwnershipControlsRule;
begin
  UnmarshalledObject := TOwnershipControlsRule.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('ObjectOwnership', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.ObjectOwnership := Unmarshaller.Unmarshall(AContext);
          Continue;
        end
      else
        if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
          Exit(UnmarshalledObject);
  except
    UnmarshalledObject.Free;
    raise;
  end;
end;

class constructor TOwnershipControlsRuleUnmarshaller.Create;
begin
  FInstance := TOwnershipControlsRuleUnmarshaller.Create;
end;

class function TOwnershipControlsRuleUnmarshaller.Instance: IOwnershipControlsRuleUnmarshaller;
begin
  Result := FInstance;
end;

end.
