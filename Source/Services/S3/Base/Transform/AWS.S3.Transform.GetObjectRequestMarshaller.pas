unit AWS.S3.Transform.GetObjectRequestMarshaller;

interface

uses
  System.SysUtils,
  AWS.Internal.Request,
  AWS.Transform.RequestMarshaller,
  AWS.Runtime.Model,
  AWS.S3.Model.GetObjectRequest,
  AWS.S3.Util.S3Constants,
  AWS.S3.Internal.S3Transforms,
  AWS.Internal.DefaultRequest,
  AWS.Internal.StringUtils,
  AWS.S3.Exception,
  AWS.SDKUtils;

type
  IGetObjectRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;

  TGetObjectRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetObjectRequest>, IGetObjectRequestMarshaller)
  strict private
    class var FInstance: IGetObjectRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetObjectRequest): IRequest; overload;
    class function Instance: IGetObjectRequestMarshaller; static;
  end;
  
implementation

{ TGetObjectRequestMarshaller }

function TGetObjectRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetObjectRequest(AInput));
end;

function TGetObjectRequestMarshaller.Marshall(PublicRequest: TGetObjectRequest): IRequest;
var
  Request: IRequest;
begin
  if string.IsNullOrEmpty(PublicRequest.Key) then
    raise EArgumentException.Create('Key is a required property and must be set before making this call');

  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');

  Request.HttpMethod := 'GET';

  if PublicRequest.IsSetIfMatch then
    Request.Headers.Add(THeaderKeys.IfMatchHeader, TS3Transforms.ToStringValue(PublicRequest.IfMatch));

  if PublicRequest.IsSetIfModifiedSince then
    Request.Headers.Add(THeaderKeys.IfModifiedSinceHeader, TS3Transforms.ToStringValue(PublicRequest.IfModifiedSince));

  if PublicRequest.IsSetEtagToNotMatch then
    Request.Headers.Add(THeaderKeys.IfNoneMatchHeader, TS3Transforms.ToStringValue(PublicRequest.EtagToNotMatch));

  if PublicRequest.IsSetIfUnmodifiedSince then
    Request.Headers.Add(THeaderKeys.IfUnmodifiedSinceHeader, TS3Transforms.ToStringValue(PublicRequest.IfUnmodifiedSince));

  if PublicRequest.ByteRange <> nil then
    Request.Headers.Add(THeaderKeys.RangeHeader, PublicRequest.ByteRange.FormattedByteRange);

//  if PublicRequest.IsSetSSECustomerAlgorithm then
//    Request.Headers.Add(THeaderKeys.XAmzSSECustomerAlgorithmHeader, PublicRequest.SSECustomerAlgorithm);
//  if PublicRequest.IsSetSSECustomerKey then
//  begin
//    Request.Headers.Add(THeaderKeys.XAmzSSECustomerKeyHeader, PublicRequest.SSECustomerKey);
//    if PublicRequest.IsSetSSECustomerKeyMD5 then
//      Request.Headers.Add(THeaderKeys.XAmzSSECustomerKeyMD5Header, PublicRequest.SSECustomerKeyMD5)
//    else
//      Request.Headers.Add(THeaderKeys.XAmzSSECustomerKeyMD5Header, TAmazonS3Util.ComputeEncodedMD5FromEncodedString(PublicRequest.SSECustomerKey));
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

  if PublicRequest.IsSetResponseCacheControl then
    Request.Parameters.Add('response-cache-control', TStringUtils.Fromstring(PublicRequest.ResponseCacheControl));
  if PublicRequest.IsSetResponseContentDisposition then
    Request.Parameters.Add('response-content-disposition', TStringUtils.Fromstring(PublicRequest.ResponseContentDisposition));
  if PublicRequest.IsSetResponseContentEncoding then
    Request.Parameters.Add('response-content-encoding', TStringUtils.Fromstring(PublicRequest.ResponseContentEncoding));
  if PublicRequest.IsSetResponseContentLanguage then
    Request.Parameters.Add('response-content-language', TStringUtils.Fromstring(PublicRequest.ResponseContentLanguage));
  if PublicRequest.IsSetResponseContentType then
    Request.Parameters.Add('response-content-type', TStringUtils.Fromstring(PublicRequest.ResponseContentType));
  if PublicRequest.IsSetResponseExpires then
    Request.Parameters.Add('response-expires', TStringUtils.FromDateTimeToRFC822(PublicRequest.ResponseExpires));
  if PublicRequest.IsSetVersionId then
    Request.AddSubResource('versionId', TStringUtils.Fromstring(PublicRequest.VersionId));
  if PublicRequest.IsSetPartNumber then
    Request.AddSubResource('partNumber', TStringUtils.FromInteger(PublicRequest.PartNumber));

  Request.UseQueryString := True;

  Result := Request;

  // Extras
  if PublicRequest.IsSetRange then
    Request.Headers.Add('Range', PublicRequest.Range);
end;

class constructor TGetObjectRequestMarshaller.Create;
begin
  FInstance := TGetObjectRequestMarshaller.Create;
end;

class function TGetObjectRequestMarshaller.Instance: IGetObjectRequestMarshaller;
begin
  Result := FInstance;
end;

end.
