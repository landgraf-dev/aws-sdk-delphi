unit AWS.S3.Transform.ReplicationRuleFilterUnmarshaller;

interface

uses
  AWS.S3.Model.ReplicationRuleFilter, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.S3.Transform.ReplicationRuleAndOperatorUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.S3.Transform.TagUnmarshaller;

type
  IReplicationRuleFilterUnmarshaller = IUnmarshaller<TReplicationRuleFilter, TXmlUnmarshallerContext>;
  
  TReplicationRuleFilterUnmarshaller = class(TInterfacedObject, IUnmarshaller<TReplicationRuleFilter, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IReplicationRuleFilterUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TReplicationRuleFilter;
    class function Instance: IReplicationRuleFilterUnmarshaller; static;
  end;
  
implementation

{ TReplicationRuleFilterUnmarshaller }

function TReplicationRuleFilterUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TReplicationRuleFilter;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TReplicationRuleFilter;
begin
  UnmarshalledObject := TReplicationRuleFilter.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('And', TargetDepth) then
        begin
          var Unmarshaller := TReplicationRuleAndOperatorUnmarshaller.Instance;
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
          var Unmarshaller := TTagUnmarshaller.Instance;
          UnmarshalledObject.Tag := Unmarshaller.Unmarshall(AContext);
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

class constructor TReplicationRuleFilterUnmarshaller.Create;
begin
  FInstance := TReplicationRuleFilterUnmarshaller.Create;
end;

class function TReplicationRuleFilterUnmarshaller.Instance: IReplicationRuleFilterUnmarshaller;
begin
  Result := FInstance;
end;

end.
