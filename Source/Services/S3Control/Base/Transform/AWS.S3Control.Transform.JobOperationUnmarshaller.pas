unit AWS.S3Control.Transform.JobOperationUnmarshaller;

interface

uses
  AWS.S3Control.Model.JobOperation, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.S3Control.Transform.LambdaInvokeOperationUnmarshaller, 
  AWS.S3Control.Transform.S3DeleteObjectTaggingOperationUnmarshaller, 
  AWS.S3Control.Transform.S3InitiateRestoreObjectOperationUnmarshaller, 
  AWS.S3Control.Transform.S3SetObjectAclOperationUnmarshaller, 
  AWS.S3Control.Transform.S3CopyObjectOperationUnmarshaller, 
  AWS.S3Control.Transform.S3SetObjectLegalHoldOperationUnmarshaller, 
  AWS.S3Control.Transform.S3SetObjectRetentionOperationUnmarshaller, 
  AWS.S3Control.Transform.S3SetObjectTaggingOperationUnmarshaller;

type
  IJobOperationUnmarshaller = IUnmarshaller<TJobOperation, TXmlUnmarshallerContext>;
  
  TJobOperationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TJobOperation, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IJobOperationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TJobOperation;
    class function Instance: IJobOperationUnmarshaller; static;
  end;
  
implementation

{ TJobOperationUnmarshaller }

function TJobOperationUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TJobOperation;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TJobOperation;
begin
  UnmarshalledObject := TJobOperation.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('LambdaInvoke', TargetDepth) then
        begin
          var Unmarshaller := TLambdaInvokeOperationUnmarshaller.Instance;
          UnmarshalledObject.LambdaInvoke := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('S3DeleteObjectTagging', TargetDepth) then
        begin
          var Unmarshaller := TS3DeleteObjectTaggingOperationUnmarshaller.Instance;
          UnmarshalledObject.S3DeleteObjectTagging := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('S3InitiateRestoreObject', TargetDepth) then
        begin
          var Unmarshaller := TS3InitiateRestoreObjectOperationUnmarshaller.Instance;
          UnmarshalledObject.S3InitiateRestoreObject := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('S3PutObjectAcl', TargetDepth) then
        begin
          var Unmarshaller := TS3SetObjectAclOperationUnmarshaller.Instance;
          UnmarshalledObject.S3PutObjectAcl := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('S3PutObjectCopy', TargetDepth) then
        begin
          var Unmarshaller := TS3CopyObjectOperationUnmarshaller.Instance;
          UnmarshalledObject.S3PutObjectCopy := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('S3PutObjectLegalHold', TargetDepth) then
        begin
          var Unmarshaller := TS3SetObjectLegalHoldOperationUnmarshaller.Instance;
          UnmarshalledObject.S3PutObjectLegalHold := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('S3PutObjectRetention', TargetDepth) then
        begin
          var Unmarshaller := TS3SetObjectRetentionOperationUnmarshaller.Instance;
          UnmarshalledObject.S3PutObjectRetention := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('S3PutObjectTagging', TargetDepth) then
        begin
          var Unmarshaller := TS3SetObjectTaggingOperationUnmarshaller.Instance;
          UnmarshalledObject.S3PutObjectTagging := Unmarshaller.Unmarshall(AContext);
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

class constructor TJobOperationUnmarshaller.Create;
begin
  FInstance := TJobOperationUnmarshaller.Create;
end;

class function TJobOperationUnmarshaller.Instance: IJobOperationUnmarshaller;
begin
  Result := FInstance;
end;

end.
