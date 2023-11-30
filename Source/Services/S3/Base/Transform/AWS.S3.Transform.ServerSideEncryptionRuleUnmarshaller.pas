unit AWS.S3.Transform.ServerSideEncryptionRuleUnmarshaller;

interface

uses
  AWS.S3.Model.ServerSideEncryptionRule, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.S3.Transform.ServerSideEncryptionByDefaultUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IServerSideEncryptionRuleUnmarshaller = IUnmarshaller<TServerSideEncryptionRule, TXmlUnmarshallerContext>;
  
  TServerSideEncryptionRuleUnmarshaller = class(TInterfacedObject, IUnmarshaller<TServerSideEncryptionRule, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IServerSideEncryptionRuleUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TServerSideEncryptionRule;
    class function Instance: IServerSideEncryptionRuleUnmarshaller; static;
  end;
  
implementation

{ TServerSideEncryptionRuleUnmarshaller }

function TServerSideEncryptionRuleUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TServerSideEncryptionRule;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TServerSideEncryptionRule;
begin
  UnmarshalledObject := TServerSideEncryptionRule.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('ApplyServerSideEncryptionByDefault', TargetDepth) then
        begin
          var Unmarshaller := TServerSideEncryptionByDefaultUnmarshaller.Instance;
          UnmarshalledObject.ApplyServerSideEncryptionByDefault := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('BucketKeyEnabled', TargetDepth) then
        begin
          var Unmarshaller := TBooleanUnmarshaller.Instance;
          UnmarshalledObject.BucketKeyEnabled := Unmarshaller.Unmarshall(AContext);
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

class constructor TServerSideEncryptionRuleUnmarshaller.Create;
begin
  FInstance := TServerSideEncryptionRuleUnmarshaller.Create;
end;

class function TServerSideEncryptionRuleUnmarshaller.Instance: IServerSideEncryptionRuleUnmarshaller;
begin
  Result := FInstance;
end;

end.
