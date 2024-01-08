unit AWS.S3.Transform.GetACLRequestMarshaller;

interface

uses
  System.SysUtils,
  AWS.Internal.Request,
  AWS.Transform.RequestMarshaller,
  AWS.Runtime.Model,
  AWS.S3.Model.GetACLRequest,
  AWS.S3.Util.S3Constants,
  AWS.S3.Internal.S3Transforms,
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

  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add(TS3Constants.AmzHeaderExpectedBucketOwner, PublicRequest.ExpectedBucketOwner);

  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add(TS3Constants.AmzHeaderExpectedBucketOwner, TS3Transforms.ToStringValue(PublicRequest.ExpectedBucketOwner));

  if string.IsNullOrEmpty(PublicRequest.BucketName) then
    raise EArgumentException.Create('BucketName is a required property and must be set before making this call');

  //Not checking if Key is null or empty because GetAcl allows to query for both a Bucket or an Object. TODO: deprecate GetACL and create two separate operations
//  Request.ResourcePath := Format('/%s/%s', [
//    TS3Transforms.ToStringValue(PublicRequest.BucketName),
//    TS3Transforms.ToStringValue(PublicRequest.Key)]);
  Request.ResourcePath := Format('/%s/%s', [
    TS3Transforms.ToStringValue(PublicRequest.BucketName),
    TS3Transforms.ToStringValue('')]);

  Request.AddSubResource('acl');
//  if PublicRequest.IsSetVersionId then
//    Request.AddSubResource('versionId', TS3Transforms.ToStringValue(PublicRequest.VersionId));
  Request.UseQueryString := True;
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
