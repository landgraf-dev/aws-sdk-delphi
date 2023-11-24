unit AWS.S3.Transform.DeleteBucketPolicyRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.DeleteBucketPolicyRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils;

type
  IDeleteBucketPolicyRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteBucketPolicyRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteBucketPolicyRequest>, IDeleteBucketPolicyRequestMarshaller)
  strict private
    class var FInstance: IDeleteBucketPolicyRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteBucketPolicyRequest): IRequest; overload;
    class function Instance: IDeleteBucketPolicyRequestMarshaller; static;
  end;
  
implementation

{ TDeleteBucketPolicyRequestMarshaller }

function TDeleteBucketPolicyRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteBucketPolicyRequest(AInput));
end;

function TDeleteBucketPolicyRequestMarshaller.Marshall(PublicRequest: TDeleteBucketPolicyRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'DELETE';
  Request.AddSubResource('policy');
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);
  if not PublicRequest.IsSetBucketName then
    raise EAmazonS3Exception.Create('Request object does not have required field BucketName set');
  Request.AddPathResource('{Bucket}', TStringUtils.Fromstring(PublicRequest.BucketName));
  Request.ResourcePath := '/{Bucket}';
  Result := Request;
end;

class constructor TDeleteBucketPolicyRequestMarshaller.Create;
begin
  FInstance := TDeleteBucketPolicyRequestMarshaller.Create;
end;

class function TDeleteBucketPolicyRequestMarshaller.Instance: IDeleteBucketPolicyRequestMarshaller;
begin
  Result := FInstance;
end;

end.
