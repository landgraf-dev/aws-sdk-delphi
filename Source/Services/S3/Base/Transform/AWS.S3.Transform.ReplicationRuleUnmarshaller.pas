unit AWS.S3.Transform.ReplicationRuleUnmarshaller;

interface

uses
  AWS.S3.Model.ReplicationRule, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.S3.Transform.DeleteMarkerReplicationUnmarshaller, 
  AWS.S3.Transform.DestinationUnmarshaller, 
  AWS.S3.Transform.ExistingObjectReplicationUnmarshaller, 
  AWS.S3.Transform.ReplicationRuleFilterUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.S3.Transform.SourceSelectionCriteriaUnmarshaller;

type
  IReplicationRuleUnmarshaller = IUnmarshaller<TReplicationRule, TXmlUnmarshallerContext>;
  
  TReplicationRuleUnmarshaller = class(TInterfacedObject, IUnmarshaller<TReplicationRule, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IReplicationRuleUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TReplicationRule;
    class function Instance: IReplicationRuleUnmarshaller; static;
  end;
  
implementation

{ TReplicationRuleUnmarshaller }

function TReplicationRuleUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TReplicationRule;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TReplicationRule;
begin
  UnmarshalledObject := TReplicationRule.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('DeleteMarkerReplication', TargetDepth) then
        begin
          var Unmarshaller := TDeleteMarkerReplicationUnmarshaller.Instance;
          UnmarshalledObject.DeleteMarkerReplication := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Destination', TargetDepth) then
        begin
          var Unmarshaller := TDestinationUnmarshaller.Instance;
          UnmarshalledObject.Destination := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('ExistingObjectReplication', TargetDepth) then
        begin
          var Unmarshaller := TExistingObjectReplicationUnmarshaller.Instance;
          UnmarshalledObject.ExistingObjectReplication := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Filter', TargetDepth) then
        begin
          var Unmarshaller := TReplicationRuleFilterUnmarshaller.Instance;
          UnmarshalledObject.Filter := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('ID', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.ID := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Prefix', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Prefix := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Priority', TargetDepth) then
        begin
          var Unmarshaller := TIntegerUnmarshaller.Instance;
          UnmarshalledObject.Priority := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('SourceSelectionCriteria', TargetDepth) then
        begin
          var Unmarshaller := TSourceSelectionCriteriaUnmarshaller.Instance;
          UnmarshalledObject.SourceSelectionCriteria := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Status', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Status := Unmarshaller.Unmarshall(AContext);
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

class constructor TReplicationRuleUnmarshaller.Create;
begin
  FInstance := TReplicationRuleUnmarshaller.Create;
end;

class function TReplicationRuleUnmarshaller.Instance: IReplicationRuleUnmarshaller;
begin
  Result := FInstance;
end;

end.
