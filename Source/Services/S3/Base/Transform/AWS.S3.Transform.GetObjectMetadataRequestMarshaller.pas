unit AWS.S3.Transform.GetObjectMetadataRequestMarshaller;

interface

uses
  System.SysUtils,
  AWS.Internal.Request,
  AWS.Transform.RequestMarshaller,
  AWS.Runtime.Model,
  AWS.S3.Model.GetObjectMetadataRequest,
  AWS.S3.Util.S3Constants,
  AWS.S3.Internal.S3Transforms,
  AWS.Internal.DefaultRequest,
  AWS.Internal.StringUtils,
  AWS.S3.Exception,
  AWS.SDKUtils;

type
  IGetObjectMetadataRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetObjectMetadataRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetObjectMetadataRequest>, IGetObjectMetadataRequestMarshaller)
  strict private
    class var FInstance: IGetObjectMetadataRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetObjectMetadataRequest): IRequest; overload;
    class function Instance: IGetObjectMetadataRequestMarshaller; static;
  end;
  
implementation

{ TGetObjectMetadataRequestMarshaller }

function TGetObjectMetadataRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetObjectMetadataRequest(AInput));
end;

function TGetObjectMetadataRequestMarshaller.Marshall(PublicRequest: TGetObjectMetadataRequest): IRequest;
var
  Request: IRequest;
begin
  if string.IsNullOrEmpty(PublicRequest.Key) then
    raise EArgumentException.Create('Key is a required property and must be set before making this call');

  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');

  Request.HttpMethod := 'HEAD';

  if PublicRequest.IsSetIfMatch then
    Request.Headers.Add(THeaderKeys.IfMatchHeader, TS3Transforms.ToStringValue(PublicRequest.IfMatch));

  if PublicRequest.IsSetIfModifiedSince then
    Request.Headers.Add(THeaderKeys.IfModifiedSinceHeader, TS3Transforms.ToStringValue(PublicRequest.IfModifiedSince));

  if PublicRequest.IsSetIfNoneMatch then
    Request.Headers.Add(THeaderKeys.IfNoneMatchHeader, TS3Transforms.ToStringValue(PublicRequest.IfNoneMatch));

  if PublicRequest.IsSetIfUnmodifiedSince then
    Request.Headers.Add(THeaderKeys.IfUnmodifiedSinceHeader, TS3Transforms.ToStringValue(PublicRequest.IfUnmodifiedSince));

//  if PublicRequest.IsSetServerSideEncryptionCustomerMethod then
//    Request.Headers.Add(THeaderKeys.XAmzSSECustomerAlgorithmHeader, PublicRequest.ServerSideEncryptionCustomerMethod);
//  if PublicRequest.IsSetServerSideEncryptionCustomerProvidedKey then
//  begin
//    Request.Headers.Add(THeaderKeys.XAmzSSECustomerKeyHeader, PublicRequest.ServerSideEncryptionCustomerProvidedKey);
//    if PublicRequest.IsSetServerSideEncryptionCustomerProvidedKeyMD5 then
//      Request.Headers.Add(THeaderKeys.XAmzSSECustomerKeyMD5Header, PublicRequest.ServerSideEncryptionCustomerProvidedKeyMD5)
//    else
//      Request.Headers.Add(THeaderKeys.XAmzSSECustomerKeyMD5Header, TAmazonS3Util.ComputeEncodedMD5FromEncodedString(PublicRequest.ServerSideEncryptionCustomerProvidedKey));
//  end;
  if PublicRequest.IsSetRequestPayer then
    Request.Headers.Add(TS3Constants.AmzHeaderRequestPayer, TS3Transforms.ToStringValue(PublicRequest.RequestPayer.Value));

  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add(TS3Constants.AmzHeaderExpectedBucketOwner, TS3Transforms.ToStringValue(PublicRequest.ExpectedBucketOwner));

  if string.IsNullOrEmpty(PublicRequest.BucketName) then
    raise EArgumentException.Create('BucketName is a required property and must be set before making this call');
  if string.IsNullOrEmpty(PublicRequest.Key) then
    raise EArgumentException.Create('Key is a required property and must be set before making this call');

  Request.ResourcePath := Format('/%s/%s', [
    TS3Transforms.ToStringValue(PublicRequest.BucketName),
    TS3Transforms.ToStringValue(PublicRequest.Key)]);

  if PublicRequest.IsSetVersionId then
    Request.AddSubResource('versionId', TS3Transforms.ToStringValue(PublicRequest.VersionId));
  if PublicRequest.IsSetPartNumber then
    Request.AddSubResource('partNumber', TS3Transforms.ToStringValue(PublicRequest.PartNumber));

  Request.UseQueryString := True;

  Result := Request;
end;

class constructor TGetObjectMetadataRequestMarshaller.Create;
begin
  FInstance := TGetObjectMetadataRequestMarshaller.Create;
end;

class function TGetObjectMetadataRequestMarshaller.Instance: IGetObjectMetadataRequestMarshaller;
begin
  Result := FInstance;
end;

end.
