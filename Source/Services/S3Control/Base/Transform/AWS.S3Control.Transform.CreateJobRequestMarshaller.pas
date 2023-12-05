unit AWS.S3Control.Transform.CreateJobRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.CreateJobRequest, 
  AWS.Internal.DefaultRequest, 
  System.Classes, 
  AWS.Xml.Writer, 
  System.SysUtils, 
  AWS.Internal.StringUtils, 
  AWS.SDKUtils, 
  AWS.S3Control.Exception, 
  AWS.Internal.Util.HostPrefixUtils;

type
  ICreateJobRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCreateJobRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCreateJobRequest>, ICreateJobRequestMarshaller)
  strict private
    class var FInstance: ICreateJobRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCreateJobRequest): IRequest; overload;
    class function Instance: ICreateJobRequestMarshaller; static;
  end;
  
implementation

{ TCreateJobRequestMarshaller }

function TCreateJobRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCreateJobRequest(AInput));
end;

function TCreateJobRequestMarshaller.Marshall(PublicRequest: TCreateJobRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3Control');
  Request.HttpMethod := 'POST';
  if PublicRequest.IsSetAccountId then
    Request.Headers.Add('x-amz-account-id', PublicRequest.AccountId);
  Request.ResourcePath := '/v20180820/jobs';
  var XmlStream := TBytesStream.Create;
  try
    var XmlWriter := TXmlWriter.Create(XmlStream, False, TEncoding.UTF8);
    try
      XmlWriter.WriteStartElement('CreateJobRequest', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
      if PublicRequest.Manifest <> nil then
      begin
        XmlWriter.WriteStartElement('Manifest', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
        if PublicRequest.Manifest.Location <> nil then
        begin
          XmlWriter.WriteStartElement('Location', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
          if PublicRequest.Manifest.Location.IsSetETag then
            XmlWriter.WriteElementString('ETag', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.Fromstring(PublicRequest.Manifest.Location.ETag));
          if PublicRequest.Manifest.Location.IsSetObjectArn then
            XmlWriter.WriteElementString('ObjectArn', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.Fromstring(PublicRequest.Manifest.Location.ObjectArn));
          if PublicRequest.Manifest.Location.IsSetObjectVersionId then
            XmlWriter.WriteElementString('ObjectVersionId', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.Fromstring(PublicRequest.Manifest.Location.ObjectVersionId));
          XmlWriter.WriteEndElement;
        end;
        if PublicRequest.Manifest.Spec <> nil then
        begin
          XmlWriter.WriteStartElement('Spec', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
          var PublicRequestManifestSpecFields := PublicRequest.Manifest.Spec.Fields;
          if (PublicRequestManifestSpecFields <> nil) and (PublicRequestManifestSpecFields.Count > 0) then
          begin
            XmlWriter.WriteStartElement('Fields', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
            for var PublicRequestManifestSpecFieldsValue in PublicRequestManifestSpecFields do
            begin
              XmlWriter.WriteStartElement('member', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
              XmlWriter.WriteValue(PublicRequestManifestSpecFieldsValue);
              XmlWriter.WriteEndElement;
            end;
            XmlWriter.WriteEndElement;
          end;
          if PublicRequest.Manifest.Spec.IsSetFormat then
            XmlWriter.WriteElementString('Format', 'http://awss3control.amazonaws.com/doc/2018-08-20/', PublicRequest.Manifest.Spec.Format.Value);
          XmlWriter.WriteEndElement;
        end;
        XmlWriter.WriteEndElement;
      end;
      if PublicRequest.Operation <> nil then
      begin
        XmlWriter.WriteStartElement('Operation', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
        if PublicRequest.Operation.LambdaInvoke <> nil then
        begin
          XmlWriter.WriteStartElement('LambdaInvoke', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
          if PublicRequest.Operation.LambdaInvoke.IsSetFunctionArn then
            XmlWriter.WriteElementString('FunctionArn', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.Fromstring(PublicRequest.Operation.LambdaInvoke.FunctionArn));
          XmlWriter.WriteEndElement;
        end;
        if PublicRequest.Operation.S3DeleteObjectTagging <> nil then
        begin
          XmlWriter.WriteStartElement('S3DeleteObjectTagging', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
          XmlWriter.WriteEndElement;
        end;
        if PublicRequest.Operation.S3InitiateRestoreObject <> nil then
        begin
          XmlWriter.WriteStartElement('S3InitiateRestoreObject', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
          if PublicRequest.Operation.S3InitiateRestoreObject.IsSetExpirationInDays then
            XmlWriter.WriteElementString('ExpirationInDays', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.FromInteger(PublicRequest.Operation.S3InitiateRestoreObject.ExpirationInDays));
          if PublicRequest.Operation.S3InitiateRestoreObject.IsSetGlacierJobTier then
            XmlWriter.WriteElementString('GlacierJobTier', 'http://awss3control.amazonaws.com/doc/2018-08-20/', PublicRequest.Operation.S3InitiateRestoreObject.GlacierJobTier.Value);
          XmlWriter.WriteEndElement;
        end;
        if PublicRequest.Operation.S3PutObjectAcl <> nil then
        begin
          XmlWriter.WriteStartElement('S3PutObjectAcl', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
          if PublicRequest.Operation.S3PutObjectAcl.AccessControlPolicy <> nil then
          begin
            XmlWriter.WriteStartElement('AccessControlPolicy', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
            if PublicRequest.Operation.S3PutObjectAcl.AccessControlPolicy.AccessControlList <> nil then
            begin
              XmlWriter.WriteStartElement('AccessControlList', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
              var PublicRequestOperationS3PutObjectAclAccessControlPolicyAccessControlListGrants := PublicRequest.Operation.S3PutObjectAcl.AccessControlPolicy.AccessControlList.Grants;
              if (PublicRequestOperationS3PutObjectAclAccessControlPolicyAccessControlListGrants <> nil) and (PublicRequestOperationS3PutObjectAclAccessControlPolicyAccessControlListGrants.Count > 0) then
              begin
                XmlWriter.WriteStartElement('Grants', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
                for var PublicRequestOperationS3PutObjectAclAccessControlPolicyAccessControlListGrantsValue in PublicRequestOperationS3PutObjectAclAccessControlPolicyAccessControlListGrants do
                  if PublicRequestOperationS3PutObjectAclAccessControlPolicyAccessControlListGrantsValue <> nil then
                  begin
                    XmlWriter.WriteStartElement('member', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
                    if PublicRequestOperationS3PutObjectAclAccessControlPolicyAccessControlListGrantsValue.Grantee <> nil then
                    begin
                      XmlWriter.WriteStartElement('Grantee', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
                      if PublicRequestOperationS3PutObjectAclAccessControlPolicyAccessControlListGrantsValue.Grantee.IsSetDisplayName then
                        XmlWriter.WriteElementString('DisplayName', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.Fromstring(PublicRequestOperationS3PutObjectAclAccessControlPolicyAccessControlListGrantsValue.Grantee.DisplayName));
                      if PublicRequestOperationS3PutObjectAclAccessControlPolicyAccessControlListGrantsValue.Grantee.IsSetIdentifier then
                        XmlWriter.WriteElementString('Identifier', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.Fromstring(PublicRequestOperationS3PutObjectAclAccessControlPolicyAccessControlListGrantsValue.Grantee.Identifier));
                      if PublicRequestOperationS3PutObjectAclAccessControlPolicyAccessControlListGrantsValue.Grantee.IsSetTypeIdentifier then
                        XmlWriter.WriteElementString('TypeIdentifier', 'http://awss3control.amazonaws.com/doc/2018-08-20/', PublicRequestOperationS3PutObjectAclAccessControlPolicyAccessControlListGrantsValue.Grantee.TypeIdentifier.Value);
                      XmlWriter.WriteEndElement;
                    end;
                    if PublicRequestOperationS3PutObjectAclAccessControlPolicyAccessControlListGrantsValue.IsSetPermission then
                      XmlWriter.WriteElementString('Permission', 'http://awss3control.amazonaws.com/doc/2018-08-20/', PublicRequestOperationS3PutObjectAclAccessControlPolicyAccessControlListGrantsValue.Permission.Value);
                    XmlWriter.WriteEndElement;
                  end;
                XmlWriter.WriteEndElement;
              end;
              if PublicRequest.Operation.S3PutObjectAcl.AccessControlPolicy.AccessControlList.Owner <> nil then
              begin
                XmlWriter.WriteStartElement('Owner', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
                if PublicRequest.Operation.S3PutObjectAcl.AccessControlPolicy.AccessControlList.Owner.IsSetDisplayName then
                  XmlWriter.WriteElementString('DisplayName', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.Fromstring(PublicRequest.Operation.S3PutObjectAcl.AccessControlPolicy.AccessControlList.Owner.DisplayName));
                if PublicRequest.Operation.S3PutObjectAcl.AccessControlPolicy.AccessControlList.Owner.IsSetID then
                  XmlWriter.WriteElementString('ID', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.Fromstring(PublicRequest.Operation.S3PutObjectAcl.AccessControlPolicy.AccessControlList.Owner.ID));
                XmlWriter.WriteEndElement;
              end;
              XmlWriter.WriteEndElement;
            end;
            if PublicRequest.Operation.S3PutObjectAcl.AccessControlPolicy.IsSetCannedAccessControlList then
              XmlWriter.WriteElementString('CannedAccessControlList', 'http://awss3control.amazonaws.com/doc/2018-08-20/', PublicRequest.Operation.S3PutObjectAcl.AccessControlPolicy.CannedAccessControlList.Value);
            XmlWriter.WriteEndElement;
          end;
          XmlWriter.WriteEndElement;
        end;
        if PublicRequest.Operation.S3PutObjectCopy <> nil then
        begin
          XmlWriter.WriteStartElement('S3PutObjectCopy', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
          var PublicRequestOperationS3PutObjectCopyAccessControlGrants := PublicRequest.Operation.S3PutObjectCopy.AccessControlGrants;
          if (PublicRequestOperationS3PutObjectCopyAccessControlGrants <> nil) and (PublicRequestOperationS3PutObjectCopyAccessControlGrants.Count > 0) then
          begin
            XmlWriter.WriteStartElement('AccessControlGrants', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
            for var PublicRequestOperationS3PutObjectCopyAccessControlGrantsValue in PublicRequestOperationS3PutObjectCopyAccessControlGrants do
              if PublicRequestOperationS3PutObjectCopyAccessControlGrantsValue <> nil then
              begin
                XmlWriter.WriteStartElement('member', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
                if PublicRequestOperationS3PutObjectCopyAccessControlGrantsValue.Grantee <> nil then
                begin
                  XmlWriter.WriteStartElement('Grantee', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
                  if PublicRequestOperationS3PutObjectCopyAccessControlGrantsValue.Grantee.IsSetDisplayName then
                    XmlWriter.WriteElementString('DisplayName', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.Fromstring(PublicRequestOperationS3PutObjectCopyAccessControlGrantsValue.Grantee.DisplayName));
                  if PublicRequestOperationS3PutObjectCopyAccessControlGrantsValue.Grantee.IsSetIdentifier then
                    XmlWriter.WriteElementString('Identifier', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.Fromstring(PublicRequestOperationS3PutObjectCopyAccessControlGrantsValue.Grantee.Identifier));
                  if PublicRequestOperationS3PutObjectCopyAccessControlGrantsValue.Grantee.IsSetTypeIdentifier then
                    XmlWriter.WriteElementString('TypeIdentifier', 'http://awss3control.amazonaws.com/doc/2018-08-20/', PublicRequestOperationS3PutObjectCopyAccessControlGrantsValue.Grantee.TypeIdentifier.Value);
                  XmlWriter.WriteEndElement;
                end;
                if PublicRequestOperationS3PutObjectCopyAccessControlGrantsValue.IsSetPermission then
                  XmlWriter.WriteElementString('Permission', 'http://awss3control.amazonaws.com/doc/2018-08-20/', PublicRequestOperationS3PutObjectCopyAccessControlGrantsValue.Permission.Value);
                XmlWriter.WriteEndElement;
              end;
            XmlWriter.WriteEndElement;
          end;
          if PublicRequest.Operation.S3PutObjectCopy.IsSetBucketKeyEnabled then
            XmlWriter.WriteElementString('BucketKeyEnabled', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.FromBoolean(PublicRequest.Operation.S3PutObjectCopy.BucketKeyEnabled));
          if PublicRequest.Operation.S3PutObjectCopy.IsSetCannedAccessControlList then
            XmlWriter.WriteElementString('CannedAccessControlList', 'http://awss3control.amazonaws.com/doc/2018-08-20/', PublicRequest.Operation.S3PutObjectCopy.CannedAccessControlList.Value);
          if PublicRequest.Operation.S3PutObjectCopy.IsSetMetadataDirective then
            XmlWriter.WriteElementString('MetadataDirective', 'http://awss3control.amazonaws.com/doc/2018-08-20/', PublicRequest.Operation.S3PutObjectCopy.MetadataDirective.Value);
          if PublicRequest.Operation.S3PutObjectCopy.IsSetModifiedSinceConstraint then
            XmlWriter.WriteElementString('ModifiedSinceConstraint', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.FromDateTimeToISO8601(PublicRequest.Operation.S3PutObjectCopy.ModifiedSinceConstraint));
          if PublicRequest.Operation.S3PutObjectCopy.NewObjectMetadata <> nil then
          begin
            XmlWriter.WriteStartElement('NewObjectMetadata', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
            if PublicRequest.Operation.S3PutObjectCopy.NewObjectMetadata.IsSetCacheControl then
              XmlWriter.WriteElementString('CacheControl', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.Fromstring(PublicRequest.Operation.S3PutObjectCopy.NewObjectMetadata.CacheControl));
            if PublicRequest.Operation.S3PutObjectCopy.NewObjectMetadata.IsSetContentDisposition then
              XmlWriter.WriteElementString('ContentDisposition', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.Fromstring(PublicRequest.Operation.S3PutObjectCopy.NewObjectMetadata.ContentDisposition));
            if PublicRequest.Operation.S3PutObjectCopy.NewObjectMetadata.IsSetContentEncoding then
              XmlWriter.WriteElementString('ContentEncoding', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.Fromstring(PublicRequest.Operation.S3PutObjectCopy.NewObjectMetadata.ContentEncoding));
            if PublicRequest.Operation.S3PutObjectCopy.NewObjectMetadata.IsSetContentLanguage then
              XmlWriter.WriteElementString('ContentLanguage', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.Fromstring(PublicRequest.Operation.S3PutObjectCopy.NewObjectMetadata.ContentLanguage));
            if PublicRequest.Operation.S3PutObjectCopy.NewObjectMetadata.IsSetContentLength then
              XmlWriter.WriteElementString('ContentLength', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.FromInt64(PublicRequest.Operation.S3PutObjectCopy.NewObjectMetadata.ContentLength));
            if PublicRequest.Operation.S3PutObjectCopy.NewObjectMetadata.IsSetContentMD5 then
              XmlWriter.WriteElementString('ContentMD5', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.Fromstring(PublicRequest.Operation.S3PutObjectCopy.NewObjectMetadata.ContentMD5));
            if PublicRequest.Operation.S3PutObjectCopy.NewObjectMetadata.IsSetContentType then
              XmlWriter.WriteElementString('ContentType', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.Fromstring(PublicRequest.Operation.S3PutObjectCopy.NewObjectMetadata.ContentType));
            if PublicRequest.Operation.S3PutObjectCopy.NewObjectMetadata.IsSetHttpExpiresDate then
              XmlWriter.WriteElementString('HttpExpiresDate', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.FromDateTimeToISO8601(PublicRequest.Operation.S3PutObjectCopy.NewObjectMetadata.HttpExpiresDate));
            if PublicRequest.Operation.S3PutObjectCopy.NewObjectMetadata.IsSetRequesterCharged then
              XmlWriter.WriteElementString('RequesterCharged', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.FromBoolean(PublicRequest.Operation.S3PutObjectCopy.NewObjectMetadata.RequesterCharged));
            if PublicRequest.Operation.S3PutObjectCopy.NewObjectMetadata.IsSetSSEAlgorithm then
              XmlWriter.WriteElementString('SSEAlgorithm', 'http://awss3control.amazonaws.com/doc/2018-08-20/', PublicRequest.Operation.S3PutObjectCopy.NewObjectMetadata.SSEAlgorithm.Value);
            XmlWriter.WriteStartElement('UserMetadata', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
            for var kvp in PublicRequest.Operation.S3PutObjectCopy.NewObjectMetadata.UserMetadata do
            begin
              XmlWriter.WriteStartElement('entry', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
              XmlWriter.WriteElementString('key', 'http://awss3control.amazonaws.com/doc/2018-08-20/', kvp.Key);
              XmlWriter.WriteElementString('value', 'xmlNamespace', kvp.Value);
              XmlWriter.WriteEndElement;
            end;
            XmlWriter.WriteEndElement;
            XmlWriter.WriteEndElement;
          end;
          var PublicRequestOperationS3PutObjectCopyNewObjectTagging := PublicRequest.Operation.S3PutObjectCopy.NewObjectTagging;
          if (PublicRequestOperationS3PutObjectCopyNewObjectTagging <> nil) and (PublicRequestOperationS3PutObjectCopyNewObjectTagging.Count > 0) then
          begin
            XmlWriter.WriteStartElement('NewObjectTagging', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
            for var PublicRequestOperationS3PutObjectCopyNewObjectTaggingValue in PublicRequestOperationS3PutObjectCopyNewObjectTagging do
              if PublicRequestOperationS3PutObjectCopyNewObjectTaggingValue <> nil then
              begin
                XmlWriter.WriteStartElement('member', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
                if PublicRequestOperationS3PutObjectCopyNewObjectTaggingValue.IsSetKey then
                  XmlWriter.WriteElementString('Key', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.Fromstring(PublicRequestOperationS3PutObjectCopyNewObjectTaggingValue.Key));
                if PublicRequestOperationS3PutObjectCopyNewObjectTaggingValue.IsSetValue then
                  XmlWriter.WriteElementString('Value', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.Fromstring(PublicRequestOperationS3PutObjectCopyNewObjectTaggingValue.Value));
                XmlWriter.WriteEndElement;
              end;
            XmlWriter.WriteEndElement;
          end;
          if PublicRequest.Operation.S3PutObjectCopy.IsSetObjectLockLegalHoldStatus then
            XmlWriter.WriteElementString('ObjectLockLegalHoldStatus', 'http://awss3control.amazonaws.com/doc/2018-08-20/', PublicRequest.Operation.S3PutObjectCopy.ObjectLockLegalHoldStatus.Value);
          if PublicRequest.Operation.S3PutObjectCopy.IsSetObjectLockMode then
            XmlWriter.WriteElementString('ObjectLockMode', 'http://awss3control.amazonaws.com/doc/2018-08-20/', PublicRequest.Operation.S3PutObjectCopy.ObjectLockMode.Value);
          if PublicRequest.Operation.S3PutObjectCopy.IsSetObjectLockRetainUntilDate then
            XmlWriter.WriteElementString('ObjectLockRetainUntilDate', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.FromDateTimeToISO8601(PublicRequest.Operation.S3PutObjectCopy.ObjectLockRetainUntilDate));
          if PublicRequest.Operation.S3PutObjectCopy.IsSetRedirectLocation then
            XmlWriter.WriteElementString('RedirectLocation', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.Fromstring(PublicRequest.Operation.S3PutObjectCopy.RedirectLocation));
          if PublicRequest.Operation.S3PutObjectCopy.IsSetRequesterPays then
            XmlWriter.WriteElementString('RequesterPays', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.FromBoolean(PublicRequest.Operation.S3PutObjectCopy.RequesterPays));
          if PublicRequest.Operation.S3PutObjectCopy.IsSetSSEAwsKmsKeyId then
            XmlWriter.WriteElementString('SSEAwsKmsKeyId', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.Fromstring(PublicRequest.Operation.S3PutObjectCopy.SSEAwsKmsKeyId));
          if PublicRequest.Operation.S3PutObjectCopy.IsSetStorageClass then
            XmlWriter.WriteElementString('StorageClass', 'http://awss3control.amazonaws.com/doc/2018-08-20/', PublicRequest.Operation.S3PutObjectCopy.StorageClass.Value);
          if PublicRequest.Operation.S3PutObjectCopy.IsSetTargetKeyPrefix then
            XmlWriter.WriteElementString('TargetKeyPrefix', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.Fromstring(PublicRequest.Operation.S3PutObjectCopy.TargetKeyPrefix));
          if PublicRequest.Operation.S3PutObjectCopy.IsSetTargetResource then
            XmlWriter.WriteElementString('TargetResource', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.Fromstring(PublicRequest.Operation.S3PutObjectCopy.TargetResource));
          if PublicRequest.Operation.S3PutObjectCopy.IsSetUnModifiedSinceConstraint then
            XmlWriter.WriteElementString('UnModifiedSinceConstraint', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.FromDateTimeToISO8601(PublicRequest.Operation.S3PutObjectCopy.UnModifiedSinceConstraint));
          XmlWriter.WriteEndElement;
        end;
        if PublicRequest.Operation.S3PutObjectLegalHold <> nil then
        begin
          XmlWriter.WriteStartElement('S3PutObjectLegalHold', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
          if PublicRequest.Operation.S3PutObjectLegalHold.LegalHold <> nil then
          begin
            XmlWriter.WriteStartElement('LegalHold', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
            if PublicRequest.Operation.S3PutObjectLegalHold.LegalHold.IsSetStatus then
              XmlWriter.WriteElementString('Status', 'http://awss3control.amazonaws.com/doc/2018-08-20/', PublicRequest.Operation.S3PutObjectLegalHold.LegalHold.Status.Value);
            XmlWriter.WriteEndElement;
          end;
          XmlWriter.WriteEndElement;
        end;
        if PublicRequest.Operation.S3PutObjectRetention <> nil then
        begin
          XmlWriter.WriteStartElement('S3PutObjectRetention', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
          if PublicRequest.Operation.S3PutObjectRetention.IsSetBypassGovernanceRetention then
            XmlWriter.WriteElementString('BypassGovernanceRetention', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.FromBoolean(PublicRequest.Operation.S3PutObjectRetention.BypassGovernanceRetention));
          if PublicRequest.Operation.S3PutObjectRetention.Retention <> nil then
          begin
            XmlWriter.WriteStartElement('Retention', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
            if PublicRequest.Operation.S3PutObjectRetention.Retention.IsSetMode then
              XmlWriter.WriteElementString('Mode', 'http://awss3control.amazonaws.com/doc/2018-08-20/', PublicRequest.Operation.S3PutObjectRetention.Retention.Mode.Value);
            if PublicRequest.Operation.S3PutObjectRetention.Retention.IsSetRetainUntilDate then
              XmlWriter.WriteElementString('RetainUntilDate', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.FromDateTimeToISO8601(PublicRequest.Operation.S3PutObjectRetention.Retention.RetainUntilDate));
            XmlWriter.WriteEndElement;
          end;
          XmlWriter.WriteEndElement;
        end;
        if PublicRequest.Operation.S3PutObjectTagging <> nil then
        begin
          XmlWriter.WriteStartElement('S3PutObjectTagging', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
          var PublicRequestOperationS3PutObjectTaggingTagSet := PublicRequest.Operation.S3PutObjectTagging.TagSet;
          if (PublicRequestOperationS3PutObjectTaggingTagSet <> nil) and (PublicRequestOperationS3PutObjectTaggingTagSet.Count > 0) then
          begin
            XmlWriter.WriteStartElement('TagSet', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
            for var PublicRequestOperationS3PutObjectTaggingTagSetValue in PublicRequestOperationS3PutObjectTaggingTagSet do
              if PublicRequestOperationS3PutObjectTaggingTagSetValue <> nil then
              begin
                XmlWriter.WriteStartElement('member', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
                if PublicRequestOperationS3PutObjectTaggingTagSetValue.IsSetKey then
                  XmlWriter.WriteElementString('Key', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.Fromstring(PublicRequestOperationS3PutObjectTaggingTagSetValue.Key));
                if PublicRequestOperationS3PutObjectTaggingTagSetValue.IsSetValue then
                  XmlWriter.WriteElementString('Value', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.Fromstring(PublicRequestOperationS3PutObjectTaggingTagSetValue.Value));
                XmlWriter.WriteEndElement;
              end;
            XmlWriter.WriteEndElement;
          end;
          XmlWriter.WriteEndElement;
        end;
        XmlWriter.WriteEndElement;
      end;
      if PublicRequest.Report <> nil then
      begin
        XmlWriter.WriteStartElement('Report', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
        if PublicRequest.Report.IsSetBucket then
          XmlWriter.WriteElementString('Bucket', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.Fromstring(PublicRequest.Report.Bucket));
        if PublicRequest.Report.IsSetEnabled then
          XmlWriter.WriteElementString('Enabled', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.FromBoolean(PublicRequest.Report.Enabled));
        if PublicRequest.Report.IsSetFormat then
          XmlWriter.WriteElementString('Format', 'http://awss3control.amazonaws.com/doc/2018-08-20/', PublicRequest.Report.Format.Value);
        if PublicRequest.Report.IsSetPrefix then
          XmlWriter.WriteElementString('Prefix', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.Fromstring(PublicRequest.Report.Prefix));
        if PublicRequest.Report.IsSetReportScope then
          XmlWriter.WriteElementString('ReportScope', 'http://awss3control.amazonaws.com/doc/2018-08-20/', PublicRequest.Report.ReportScope.Value);
        XmlWriter.WriteEndElement;
      end;
      var PublicRequestTags := PublicRequest.Tags;
      if (PublicRequestTags <> nil) and (PublicRequestTags.Count > 0) then
      begin
        XmlWriter.WriteStartElement('Tags', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
        for var PublicRequestTagsValue in PublicRequestTags do
          if PublicRequestTagsValue <> nil then
          begin
            XmlWriter.WriteStartElement('member', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
            if PublicRequestTagsValue.IsSetKey then
              XmlWriter.WriteElementString('Key', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.Fromstring(PublicRequestTagsValue.Key));
            if PublicRequestTagsValue.IsSetValue then
              XmlWriter.WriteElementString('Value', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.Fromstring(PublicRequestTagsValue.Value));
            XmlWriter.WriteEndElement;
          end;
        XmlWriter.WriteEndElement;
      end;
      XmlWriter.WriteEndElement;
    finally
      XmlWriter.Free;
    end;
    Request.Content := Copy(XmlStream.Bytes, 0, XmlStream.Size);
    Request.Headers.AddOrSetValue('Content-Type', 'application/xml');
    var content := TEncoding.UTF8.GetString(Request.Content);
    Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2018-08-20');
  finally
    XmlStream.Free;
  end;
  var hostPrefixLabels_AccountId := TStringUtils.Fromstring(PublicRequest.AccountId);
  if not THostPrefixUtils.IsValidLabelValue(hostPrefixLabels_AccountId) then
    raise EAmazonS3ControlException.Create('AccountId can only contain alphanumeric characters and dashes and must be between 1 and 63 characters long.');
  Request.HostPrefix := 'AccountId.';
  Result := Request;
end;

class constructor TCreateJobRequestMarshaller.Create;
begin
  FInstance := TCreateJobRequestMarshaller.Create;
end;

class function TCreateJobRequestMarshaller.Instance: ICreateJobRequestMarshaller;
begin
  Result := FInstance;
end;

end.
