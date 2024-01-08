unit AWS.S3.Transform.ListObjectsRequestMarshaller;

interface

uses
  System.SysUtils,
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.ListObjectsRequest, 
  AWS.S3.Util.S3Constants,
  AWS.S3.Util.AmazonS3Util,
  AWS.S3.Internal.S3Transforms,
  AWS.Internal.DefaultRequest,
  AWS.Internal.StringUtils, 
  AWS.S3.Exception;

type
  IListObjectsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListObjectsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListObjectsRequest>, IListObjectsRequestMarshaller)
  strict private
    class var FInstance: IListObjectsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListObjectsRequest): IRequest; overload;
    class function Instance: IListObjectsRequestMarshaller; static;
  end;
  
implementation

{ TListObjectsRequestMarshaller }

function TListObjectsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListObjectsRequest(AInput));
end;

function TListObjectsRequestMarshaller.Marshall(PublicRequest: TListObjectsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');

  Request.HttpMethod := 'GET';

  if PublicRequest.IsSetRequestPayer then
    Request.Headers.Add(TS3Constants.AmzHeaderRequestPayer, TS3Transforms.ToStringValue(PublicRequest.RequestPayer.Value));

  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add(TS3Constants.AmzHeaderExpectedBucketOwner, TS3Transforms.ToStringValue(PublicRequest.ExpectedBucketOwner));

  if not PublicRequest.IsSetBucketName then
    raise EArgumentException.Create('BucketName is a required property and must be set before making this call');

	Request.ResourcePath := '/' + TS3Transforms.ToStringValue(PublicRequest.BucketName);

  if PublicRequest.IsSetDelimiter then
    Request.Parameters.Add('delimiter', TS3Transforms.ToStringValue(PublicRequest.Delimiter));
  if PublicRequest.IsSetMarker then
    Request.Parameters.Add('marker', TS3Transforms.ToStringValue(PublicRequest.Marker));
  if PublicRequest.IsSetMaxKeys then
    Request.Parameters.Add('max-keys', TS3Transforms.ToStringValue(PublicRequest.MaxKeys));
  if PublicRequest.IsSetPrefix then
    Request.Parameters.Add('prefix', TS3Transforms.ToStringValue(PublicRequest.Prefix));
  if PublicRequest.IsSetEncodingType then
    Request.Parameters.Add('encoding-type', TS3Transforms.ToStringValue(PublicRequest.EncodingType.Value));

  Request.UseQueryString := True;
  Result := Request;
end;

class constructor TListObjectsRequestMarshaller.Create;
begin
  FInstance := TListObjectsRequestMarshaller.Create;
end;

class function TListObjectsRequestMarshaller.Instance: IListObjectsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
