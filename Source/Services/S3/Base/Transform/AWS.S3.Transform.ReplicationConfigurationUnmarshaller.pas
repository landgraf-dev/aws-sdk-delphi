unit AWS.S3.Transform.ReplicationConfigurationUnmarshaller;

interface

uses
  AWS.S3.Model.ReplicationConfiguration, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.S3.Transform.ReplicationRuleUnmarshaller, 
  AWS.S3.Model.ReplicationRule;

type
  IReplicationConfigurationUnmarshaller = IUnmarshaller<TReplicationConfiguration, TXmlUnmarshallerContext>;
  
  TReplicationConfigurationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TReplicationConfiguration, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IReplicationConfigurationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TReplicationConfiguration;
    class function Instance: IReplicationConfigurationUnmarshaller; static;
  end;
  
implementation

{ TReplicationConfigurationUnmarshaller }

function TReplicationConfigurationUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TReplicationConfiguration;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TReplicationConfiguration;
begin
  UnmarshalledObject := TReplicationConfiguration.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('Role', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Role := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Rule/member', TargetDepth) then
        begin
          var Unmarshaller := TReplicationRuleUnmarshaller.Instance;
          UnmarshalledObject.Rules.Add(Unmarshaller.Unmarshall(AContext));
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

class constructor TReplicationConfigurationUnmarshaller.Create;
begin
  FInstance := TReplicationConfigurationUnmarshaller.Create;
end;

class function TReplicationConfigurationUnmarshaller.Instance: IReplicationConfigurationUnmarshaller;
begin
  Result := FInstance;
end;

end.
