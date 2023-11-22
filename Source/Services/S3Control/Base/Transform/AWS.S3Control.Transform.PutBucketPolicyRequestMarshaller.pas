unit AWS.S3Control.Transform.PutBucketPolicyRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.PutBucketPolicyRequest, 
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
  IPutBucketPolicyRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPutBucketPolicyRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPutBucketPolicyRequest>, IPutBucketPolicyRequestMarshaller)
  strict private
    class var FInstance: IPutBucketPolicyRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutBucketPolicyRequest): IRequest; overload;
    class function Instance: IPutBucketPolicyRequestMarshaller; static;
  end;
  
implementation

{ TPutBucketPolicyRequestMarshaller }

function TPutBucketPolicyRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPutBucketPolicyRequest(AInput));
end;

function TPutBucketPolicyRequestMarshaller.Marshall(PublicRequest: TPutBucketPolicyRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3Control');
  Request.HttpMethod := 'PUT';
  if TArn.IsArn(PublicRequest.Bucket) then
    PublicRequest.AccountId := TS3ArnUtils.GetAccountidBasedOnArn(PublicRequest.AccountId, TArn.Parse(PublicRequest.Bucket).AccountId);
  if PublicRequest.IsSetAccountId then
    Request.Headers.Add('x-amz-account-id', PublicRequest.AccountId);
  if PublicRequest.IsSetConfirmRemoveSelfBucketAccess then
    Request.Headers.Add('x-amz-confirm-remove-self-bucket-access', TStringUtils.FromBoolean(PublicRequest.ConfirmRemoveSelfBucketAccess));
  if not PublicRequest.IsSetBucket then
    raise EAmazonS3ControlException.Create('Request object does not have required field Bucket set');
  Request.AddPathResource('{name}', TStringUtils.Fromstring(PublicRequest.Bucket));
  Request.ResourcePath := '/v20180820/bucket/{name}/policy';
  var XmlStream := TBytesStream.Create;
  try
    var XmlWriter := TXmlWriter.Create(XmlStream, False, TEncoding.UTF8);
    try
      XmlWriter.WriteStartElement('PutBucketPolicyRequest', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
      XmlWriter.WriteEndElement;
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

class constructor TPutBucketPolicyRequestMarshaller.Create;
begin
  FInstance := TPutBucketPolicyRequestMarshaller.Create;
end;

class function TPutBucketPolicyRequestMarshaller.Instance: IPutBucketPolicyRequestMarshaller;
begin
  Result := FInstance;
end;

end.
