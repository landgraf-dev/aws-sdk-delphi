unit AWS.S3Control.Transform.PutBucketTaggingRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.PutBucketTaggingRequest, 
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
  IPutBucketTaggingRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPutBucketTaggingRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPutBucketTaggingRequest>, IPutBucketTaggingRequestMarshaller)
  strict private
    class var FInstance: IPutBucketTaggingRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutBucketTaggingRequest): IRequest; overload;
    class function Instance: IPutBucketTaggingRequestMarshaller; static;
  end;
  
implementation

{ TPutBucketTaggingRequestMarshaller }

function TPutBucketTaggingRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPutBucketTaggingRequest(AInput));
end;

function TPutBucketTaggingRequestMarshaller.Marshall(PublicRequest: TPutBucketTaggingRequest): IRequest;
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
  Request.ResourcePath := '/v20180820/bucket/{name}/tagging';
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

class constructor TPutBucketTaggingRequestMarshaller.Create;
begin
  FInstance := TPutBucketTaggingRequestMarshaller.Create;
end;

class function TPutBucketTaggingRequestMarshaller.Instance: IPutBucketTaggingRequestMarshaller;
begin
  Result := FInstance;
end;

end.
