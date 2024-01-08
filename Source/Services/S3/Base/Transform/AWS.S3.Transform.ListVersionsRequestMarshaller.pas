unit AWS.S3.Transform.ListVersionsRequestMarshaller;

interface

uses
  System.SysUtils,
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.ListVersionsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Util.S3Constants,
  AWS.S3.Util.AmazonS3Util,
  AWS.S3.Internal.S3Transforms,
  AWS.S3.Exception,
  AWS.Internal.StringUtils;

type
  IListVersionsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListVersionsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListVersionsRequest>, IListVersionsRequestMarshaller)
  strict private
    class var FInstance: IListVersionsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListVersionsRequest): IRequest; overload;
    class function Instance: IListVersionsRequestMarshaller; static;
  end;
  
implementation

{ TListVersionsRequestMarshaller }

function TListVersionsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListVersionsRequest(AInput));
end;

function TListVersionsRequestMarshaller.Marshall(PublicRequest: TListVersionsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');

  Request.HttpMethod := 'GET';

  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add(TS3Constants.AmzHeaderExpectedBucketOwner, TS3Transforms.ToStringValue(PublicRequest.ExpectedBucketOwner));

  if string.IsNullOrEmpty(PublicRequest.BucketName) then
    raise EArgumentException.Create('BucketName is a required property and must be set before making this call');

  Request.ResourcePath := '/' + TS3Transforms.ToStringValue(PublicRequest.BucketName);

  Request.AddSubResource('versions');

  if PublicRequest.IsSetDelimiter then
    Request.Parameters.Add('delimiter', TS3Transforms.ToStringValue(PublicRequest.Delimiter));
  if PublicRequest.IsSetKeyMarker then
    Request.Parameters.Add('key-marker', TS3Transforms.ToStringValue(PublicRequest.KeyMarker));
  if PublicRequest.IsSetMaxKeys then
    Request.Parameters.Add('max-keys', TS3Transforms.ToStringValue(PublicRequest.MaxKeys));
  if PublicRequest.IsSetPrefix then
    Request.Parameters.Add('prefix', TS3Transforms.ToStringValue(PublicRequest.Prefix));
  if PublicRequest.IsSetVersionIdMarker then
    Request.Parameters.Add('version-id-marker', TS3Transforms.ToStringValue(PublicRequest.VersionIdMarker));
  if PublicRequest.IsSetEncodingType then
    Request.Parameters.Add('encoding-type', TS3Transforms.ToStringValue(PublicRequest.EncodingType.Value));

  Request.UseQueryString := True;

  Result := Request;
end;

class constructor TListVersionsRequestMarshaller.Create;
begin
  FInstance := TListVersionsRequestMarshaller.Create;
end;

class function TListVersionsRequestMarshaller.Instance: IListVersionsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
