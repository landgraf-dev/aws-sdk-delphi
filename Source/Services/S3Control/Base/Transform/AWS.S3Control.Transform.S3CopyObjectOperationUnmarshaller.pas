unit AWS.S3Control.Transform.S3CopyObjectOperationUnmarshaller;

interface

uses
  AWS.S3Control.Model.S3CopyObjectOperation, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.S3Control.Transform.S3GrantUnmarshaller, 
  AWS.S3Control.Model.S3Grant, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.S3Control.Transform.S3ObjectMetadataUnmarshaller, 
  AWS.S3Control.Transform.S3TagUnmarshaller, 
  AWS.S3Control.Model.S3Tag;

type
  IS3CopyObjectOperationUnmarshaller = IUnmarshaller<TS3CopyObjectOperation, TXmlUnmarshallerContext>;
  
  TS3CopyObjectOperationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TS3CopyObjectOperation, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IS3CopyObjectOperationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TS3CopyObjectOperation;
    class function Instance: IS3CopyObjectOperationUnmarshaller; static;
  end;
  
implementation

{ TS3CopyObjectOperationUnmarshaller }

function TS3CopyObjectOperationUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TS3CopyObjectOperation;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TS3CopyObjectOperation;
begin
  UnmarshalledObject := TS3CopyObjectOperation.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('AccessControlGrants/member', TargetDepth) then
        begin
          var Unmarshaller := TS3GrantUnmarshaller.Instance;
          UnmarshalledObject.AccessControlGrants.Add(Unmarshaller.Unmarshall(AContext));
          Continue;
        end;
        if AContext.TestExpression('BucketKeyEnabled', TargetDepth) then
        begin
          var Unmarshaller := TBooleanUnmarshaller.Instance;
          UnmarshalledObject.BucketKeyEnabled := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('CannedAccessControlList', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.CannedAccessControlList := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('MetadataDirective', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.MetadataDirective := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('ModifiedSinceConstraint', TargetDepth) then
        begin
          var Unmarshaller := TDateTimeUnmarshaller.Instance;
          UnmarshalledObject.ModifiedSinceConstraint := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('NewObjectMetadata', TargetDepth) then
        begin
          var Unmarshaller := TS3ObjectMetadataUnmarshaller.Instance;
          UnmarshalledObject.NewObjectMetadata := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('NewObjectTagging/member', TargetDepth) then
        begin
          var Unmarshaller := TS3TagUnmarshaller.Instance;
          UnmarshalledObject.NewObjectTagging.Add(Unmarshaller.Unmarshall(AContext));
          Continue;
        end;
        if AContext.TestExpression('ObjectLockLegalHoldStatus', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.ObjectLockLegalHoldStatus := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('ObjectLockMode', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.ObjectLockMode := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('ObjectLockRetainUntilDate', TargetDepth) then
        begin
          var Unmarshaller := TDateTimeUnmarshaller.Instance;
          UnmarshalledObject.ObjectLockRetainUntilDate := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('RedirectLocation', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.RedirectLocation := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('RequesterPays', TargetDepth) then
        begin
          var Unmarshaller := TBooleanUnmarshaller.Instance;
          UnmarshalledObject.RequesterPays := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('SSEAwsKmsKeyId', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.SSEAwsKmsKeyId := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('StorageClass', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.StorageClass := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('TargetKeyPrefix', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.TargetKeyPrefix := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('TargetResource', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.TargetResource := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('UnModifiedSinceConstraint', TargetDepth) then
        begin
          var Unmarshaller := TDateTimeUnmarshaller.Instance;
          UnmarshalledObject.UnModifiedSinceConstraint := Unmarshaller.Unmarshall(AContext);
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

class constructor TS3CopyObjectOperationUnmarshaller.Create;
begin
  FInstance := TS3CopyObjectOperationUnmarshaller.Create;
end;

class function TS3CopyObjectOperationUnmarshaller.Instance: IS3CopyObjectOperationUnmarshaller;
begin
  Result := FInstance;
end;

end.
