unit AWS.S3Control.Transform.LifecycleRuleUnmarshaller;

interface

uses
  AWS.S3Control.Model.LifecycleRule, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.S3Control.Transform.AbortIncompleteMultipartUploadUnmarshaller, 
  AWS.S3Control.Transform.LifecycleExpirationUnmarshaller, 
  AWS.S3Control.Transform.LifecycleRuleFilterUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.S3Control.Transform.NoncurrentVersionExpirationUnmarshaller, 
  AWS.S3Control.Transform.NoncurrentVersionTransitionUnmarshaller, 
  AWS.S3Control.Model.NoncurrentVersionTransition, 
  AWS.S3Control.Transform.TransitionUnmarshaller, 
  AWS.S3Control.Model.Transition;

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
        if AContext.TestExpression('NoncurrentVersionTransitions/NoncurrentVersionTransition', TargetDepth) then
        begin
          var Unmarshaller := TNoncurrentVersionTransitionUnmarshaller.Instance;
          UnmarshalledObject.NoncurrentVersionTransitions.Add(Unmarshaller.Unmarshall(AContext));
          Continue;
        end;
        if AContext.TestExpression('Status', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Status := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Transitions/Transition', TargetDepth) then
        begin
          var Unmarshaller := TTransitionUnmarshaller.Instance;
          UnmarshalledObject.Transitions.Add(Unmarshaller.Unmarshall(AContext));
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

class constructor TLifecycleRuleUnmarshaller.Create;
begin
  FInstance := TLifecycleRuleUnmarshaller.Create;
end;

class function TLifecycleRuleUnmarshaller.Instance: ILifecycleRuleUnmarshaller;
begin
  Result := FInstance;
end;

end.
