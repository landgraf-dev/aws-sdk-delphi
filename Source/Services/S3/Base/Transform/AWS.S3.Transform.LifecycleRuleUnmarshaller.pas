unit AWS.S3.Transform.LifecycleRuleUnmarshaller;

interface

uses
  AWS.S3.Model.LifecycleRule, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.S3.Transform.AbortIncompleteMultipartUploadUnmarshaller, 
  AWS.S3.Transform.LifecycleExpirationUnmarshaller, 
  AWS.S3.Transform.LifecycleRuleFilterUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.S3.Transform.NoncurrentVersionExpirationUnmarshaller, 
  AWS.S3.Transform.NoncurrentVersionTransitionUnmarshaller, 
  AWS.S3.Model.NoncurrentVersionTransition, 
  AWS.S3.Transform.TransitionUnmarshaller, 
  AWS.S3.Model.Transition;

type
  ILifecycleRuleUnmarshaller = IUnmarshaller<TLifecycleRule, TXmlUnmarshallerContext>;
  
  TLifecycleRuleUnmarshaller = class(TInterfacedObject, IUnmarshaller<TLifecycleRule, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: ILifecycleRuleUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TLifecycleRule;
    class function Instance: ILifecycleRuleUnmarshaller; static;
  end;
  
implementation

{ TLifecycleRuleUnmarshaller }

function TLifecycleRuleUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TLifecycleRule;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TLifecycleRule;
begin
  UnmarshalledObject := TLifecycleRule.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('AbortIncompleteMultipartUpload', TargetDepth) then
        begin
          var Unmarshaller := TAbortIncompleteMultipartUploadUnmarshaller.Instance;
          UnmarshalledObject.AbortIncompleteMultipartUpload := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Expiration', TargetDepth) then
        begin
          var Unmarshaller := TLifecycleExpirationUnmarshaller.Instance;
          UnmarshalledObject.Expiration := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Filter', TargetDepth) then
        begin
          var Unmarshaller := TLifecycleRuleFilterUnmarshaller.Instance;
          UnmarshalledObject.Filter := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('ID', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.ID := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('NoncurrentVersionExpiration', TargetDepth) then
        begin
          var Unmarshaller := TNoncurrentVersionExpirationUnmarshaller.Instance;
          UnmarshalledObject.NoncurrentVersionExpiration := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('NoncurrentVersionTransition/member', TargetDepth) then
        begin
          var Unmarshaller := TNoncurrentVersionTransitionUnmarshaller.Instance;
          UnmarshalledObject.NoncurrentVersionTransitions.Add(Unmarshaller.Unmarshall(AContext));
          Continue;
        end;
        if AContext.TestExpression('Prefix', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Prefix := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Status', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Status := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Transition/member', TargetDepth) then
        begin
          var Unmarshaller := TTransitionUnmarshaller.Instance;
          UnmarshalledObject.Transitions.Add(Unmarshaller.Unmarshall(AContext));
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

class constructor TLifecycleRuleUnmarshaller.Create;
begin
  FInstance := TLifecycleRuleUnmarshaller.Create;
end;

class function TLifecycleRuleUnmarshaller.Instance: ILifecycleRuleUnmarshaller;
begin
  Result := FInstance;
end;

end.
