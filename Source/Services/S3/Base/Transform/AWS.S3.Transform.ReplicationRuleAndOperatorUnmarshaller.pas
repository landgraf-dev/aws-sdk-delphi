unit AWS.S3.Transform.ReplicationRuleAndOperatorUnmarshaller;

interface

uses
  AWS.S3.Model.ReplicationRuleAndOperator, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.S3.Transform.TagUnmarshaller, 
  AWS.S3.Model.Tag;

type
  IReplicationRuleAndOperatorUnmarshaller = IUnmarshaller<TReplicationRuleAndOperator, TXmlUnmarshallerContext>;
  
  TReplicationRuleAndOperatorUnmarshaller = class(TInterfacedObject, IUnmarshaller<TReplicationRuleAndOperator, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IReplicationRuleAndOperatorUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TReplicationRuleAndOperator;
    class function Instance: IReplicationRuleAndOperatorUnmarshaller; static;
  end;
  
implementation

{ TReplicationRuleAndOperatorUnmarshaller }

function TReplicationRuleAndOperatorUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TReplicationRuleAndOperator;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TReplicationRuleAndOperator;
begin
  UnmarshalledObject := TReplicationRuleAndOperator.Create;
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

class constructor TReplicationRuleAndOperatorUnmarshaller.Create;
begin
  FInstance := TReplicationRuleAndOperatorUnmarshaller.Create;
end;

class function TReplicationRuleAndOperatorUnmarshaller.Instance: IReplicationRuleAndOperatorUnmarshaller;
begin
  Result := FInstance;
end;

end.
