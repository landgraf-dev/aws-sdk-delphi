unit AWS.S3.Transform.GetBucketVersioningRequestMarshaller;

interface

uses
  System.SysUtils,
  AWS.Internal.Request,
  AWS.Transform.RequestMarshaller,
  AWS.Runtime.Model,
  AWS.S3.Model.GetBucketVersioningRequest,
  AWS.Internal.DefaultRequest,
  AWS.S3.Util.S3Constants,
  AWS.S3.Internal.S3Transforms,
  AWS.S3.Exception,
  AWS.Internal.StringUtils;

type
  IGetBucketVersioningRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetBucketVersioningRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetBucketVersioningRequest>, IGetBucketVersioningRequestMarshaller)
  strict private
    class var FInstance: IGetBucketVersioningRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetBucketVersioningRequest): IRequest; overload;
    class function Instance: IGetBucketVersioningRequestMarshaller; static;
  end;
  
implementation

{ TGetBucketVersioningRequestMarshaller }

function TGetBucketVersioningRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetBucketVersioningRequest(AInput));
end;

function TGetBucketVersioningRequestMarshaller.Marshall(PublicRequest: TGetBucketVersioningRequest): IRequest;
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
  Request.AddSubResource('versioning');
  Request.UseQueryString := True;

  Result := Request;
end;

class constructor TGetBucketVersioningRequestMarshaller.Create;
begin
  FInstance := TGetBucketVersioningRequestMarshaller.Create;
end;

class function TGetBucketVersioningRequestMarshaller.Instance: IGetBucketVersioningRequestMarshaller;
begin
  Result := FInstance;
end;

end.
