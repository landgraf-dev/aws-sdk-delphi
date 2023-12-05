unit AWS.S3.Transform.GetACLRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.GetACLRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils;

type
  IGetACLRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetACLRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetACLRequest>, IGetACLRequestMarshaller)
  strict private
    class var FInstance: IGetACLRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetACLRequest): IRequest; overload;
    class function Instance: IGetACLRequestMarshaller; static;
  end;
  
implementation

{ TGetACLRequestMarshaller }

function TGetACLRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetACLRequest(AInput));
end;

function TGetACLRequestMarshaller.Marshall(PublicRequest: TGetACLRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'GET';
  Request.AddSubResource('acl');
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);
  if not PublicRequest.IsSetBucketName then
    raise EAmazonS3Exception.Create('Request object does not have required field BucketName set');
  Request.AddPathResource('{Bucket}', TStringUtils.Fromstring(PublicRequest.BucketName));
  Request.ResourcePath := '/{Bucket}';
  Result := Request;
end;

class constructor TGetACLRequestMarshaller.Create;
begin
  FInstance := TGetACLRequestMarshaller.Create;
end;

class function TGetACLRequestMarshaller.Instance: IGetACLRequestMarshaller;
begin
  Result := FInstance;
end;

end.
