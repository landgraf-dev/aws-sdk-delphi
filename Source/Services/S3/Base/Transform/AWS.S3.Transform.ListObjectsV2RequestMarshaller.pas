unit AWS.S3.Transform.ListObjectsV2RequestMarshaller;

interface

uses
  System.SysUtils,
  AWS.Internal.Request,
  AWS.Transform.RequestMarshaller,
  AWS.Runtime.Model,
  AWS.S3.Model.ListObjectsV2Request,
  AWS.Internal.DefaultRequest,
  AWS.Internal.StringUtils,
  AWS.S3.Util.S3Constants,
  AWS.S3.Internal.S3Transforms,
  AWS.S3.Exception,
  AWS.SDKUtils;

type
  IListObjectsV2RequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListObjectsV2RequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListObjectsV2Request>, IListObjectsV2RequestMarshaller)
  strict private
    class var FInstance: IListObjectsV2RequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListObjectsV2Request): IRequest; overload;
    class function Instance: IListObjectsV2RequestMarshaller; static;
  end;
  
implementation

{ TListObjectsV2RequestMarshaller }

function TListObjectsV2RequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListObjectsV2Request(AInput));
end;

function TListObjectsV2RequestMarshaller.Marshall(PublicRequest: TListObjectsV2Request): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');

  if PublicRequest.IsSetRequestPayer then
    Request.Headers.Add(TS3Constants.AmzHeaderRequestPayer, TS3Transforms.ToStringValue(PublicRequest.RequestPayer.Value));

  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add(TS3Constants.AmzHeaderExpectedBucketOwner, TS3Transforms.ToStringValue(PublicRequest.ExpectedBucketOwner));

  Request.HttpMethod := 'GET';

  if string.IsNullOrEmpty(PublicRequest.BucketName) then
    raise EArgumentException.Create('BucketName is a required property and must be set before making this call.');

  Request.ResourcePath := '/' + TS3Transforms.ToStringValue(PublicRequest.BucketName);

  if PublicRequest.IsSetDelimiter then
    Request.Parameters.Add('delimiter', TS3Transforms.ToStringValue(PublicRequest.Delimiter));
  if PublicRequest.IsSetEncodingType then
    Request.Parameters.Add('encoding-type', TS3Transforms.ToStringValue(PublicRequest.EncodingType.Value));
  if PublicRequest.IsSetMaxKeys then
    Request.Parameters.Add('max-keys', TS3Transforms.ToStringValue(PublicRequest.MaxKeys));
  if PublicRequest.IsSetPrefix then
    Request.Parameters.Add('prefix', TS3Transforms.ToStringValue(PublicRequest.Prefix));
  if PublicRequest.IsSetContinuationToken then
    Request.Parameters.Add('continuation-token', TS3Transforms.ToStringValue(PublicRequest.ContinuationToken));
  if PublicRequest.IsSetFetchOwner then
    Request.Parameters.Add('fetch-owner', TS3Transforms.ToStringValue(PublicRequest.FetchOwner));
  if PublicRequest.IsSetStartAfter then
    Request.Parameters.Add('start-after', TS3Transforms.ToStringValue(PublicRequest.StartAfter));

  Request.Parameters.Add('list-type', '2');

  Request.UseQueryString := True;

  Result := Request;
end;

class constructor TListObjectsV2RequestMarshaller.Create;
begin
  FInstance := TListObjectsV2RequestMarshaller.Create;
end;

class function TListObjectsV2RequestMarshaller.Instance: IListObjectsV2RequestMarshaller;
begin
  Result := FInstance;
end;

end.
