unit AWS.S3Control.Transform.PutBucketLifecycleConfigurationRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.PutBucketLifecycleConfigurationRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Arn, 
  AWS.S3Control.Internal.S3ArnUtils, 
  AWS.S3Control.Exception, 
  AWS.Internal.StringUtils, 
  System.Classes, 
  Bcl.Xml.Writer, 
  System.SysUtils, 
  AWS.SDKUtils, 
  AWS.Internal.Util.HostPrefixUtils;

type
  IPutBucketLifecycleConfigurationRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPutBucketLifecycleConfigurationRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPutBucketLifecycleConfigurationRequest>, IPutBucketLifecycleConfigurationRequestMarshaller)
  strict private
    class var FInstance: IPutBucketLifecycleConfigurationRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutBucketLifecycleConfigurationRequest): IRequest; overload;
    class function Instance: IPutBucketLifecycleConfigurationRequestMarshaller; static;
  end;
  
implementation

{ TPutBucketLifecycleConfigurationRequestMarshaller }

function TPutBucketLifecycleConfigurationRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPutBucketLifecycleConfigurationRequest(AInput));
end;

function TPutBucketLifecycleConfigurationRequestMarshaller.Marshall(PublicRequest: TPutBucketLifecycleConfigurationRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3Control');
  Request.HttpMethod := 'PUT';
  if TArn.IsArn(PublicRequest.Bucket) then
    PublicRequest.AccountId := TS3ArnUtils.GetAccountidBasedOnArn(PublicRequest.AccountId, TArn.Parse(PublicRequest.Bucket).AccountId);
  if PublicRequest.IsSetAccountId then
    Request.Headers.Add('x-amz-account-id', PublicRequest.AccountId);
  if not PublicRequest.IsSetBucket then
    raise EAmazonS3ControlException.Create('Request object does not have required field Bucket set');
  Request.AddPathResource('{name}', TStringUtils.Fromstring(PublicRequest.Bucket));
  Request.ResourcePath := '/v20180820/bucket/{name}/lifecycleconfiguration';
  var XmlStream := TBytesStream.Create;
  try
    var XmlWriter := TXmlWriter.Create(XmlStream, False, TEncoding.UTF8);
    try
    finally
      XmlWriter.Free;
    end;
    Request.Content := Copy(XmlStream.Bytes, 0, XmlStream.Size);
    Request.Headers['Content-Type'] := 'application/xml';
    var content := TEncoding.UTF8.GetString(Request.Content);
    var checksum := TAWSSDKUtils.GenerateChecksumForContent(content, true);
    ARequest.Headers[THeaderKeys.ContentMD5Header] := checksum;
    Request.Headers[THeaderKeys.XAmzApiVersion] := '2018-08-20';
  finally
    XmlStream.Free;
  end;
  var hostPrefixLabels_AccountId := TStringUtils.Fromstring(PublicRequest.AccountId);
  if not THostPrefixUtils.IsValidLabelValue(hostPrefixLabels_AccountId) then
    raise EAmazonS3ControlException.Create('AccountId can only contain alphanumeric characters and dashes and must be between 1 and 63 characters long.');
  Request.HostPrefix := 'AccountId.';
  Result := Request;
end;

class constructor TPutBucketLifecycleConfigurationRequestMarshaller.Create;
begin
  FInstance := TPutBucketLifecycleConfigurationRequestMarshaller.Create;
end;

class function TPutBucketLifecycleConfigurationRequestMarshaller.Instance: IPutBucketLifecycleConfigurationRequestMarshaller;
begin
  Result := FInstance;
end;

end.
