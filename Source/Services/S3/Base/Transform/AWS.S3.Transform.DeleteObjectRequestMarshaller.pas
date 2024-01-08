unit AWS.S3.Transform.DeleteObjectRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.DeleteObjectRequest, 
  AWS.S3.Util.S3Constants,
  AWS.S3.Internal.S3Transforms,
  AWS.Internal.DefaultRequest,
  AWS.Internal.StringUtils, 
  AWS.S3.Exception,
  AWS.SDKUtils;

type
  IDeleteObjectRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteObjectRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteObjectRequest>, IDeleteObjectRequestMarshaller)
  strict private
    class var FInstance: IDeleteObjectRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteObjectRequest): IRequest; overload;
    class function Instance: IDeleteObjectRequestMarshaller; static;
  end;
  
implementation

{ TDeleteObjectRequestMarshaller }

function TDeleteObjectRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteObjectRequest(AInput));
end;

function TDeleteObjectRequestMarshaller.Marshall(PublicRequest: TDeleteObjectRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');

  Request.HttpMethod := 'DELETE';

  if PublicRequest.IsSetBypassGovernanceRetention then
    Request.Headers.Add('x-amz-bypass-governance-retention', TS3Transforms.ToStringValue(PublicRequest.BypassGovernanceRetention));
  if PublicRequest.IsSetMfa then
    Request.Headers.Add(THeaderKeys.XAmzMfaHeader, PublicRequest.Mfa);

  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add(TS3Constants.AmzHeaderExpectedBucketOwner, TS3Transforms.ToStringValue(PublicRequest.ExpectedBucketOwner));

  if string.IsNullOrEmpty(PublicRequest.BucketName) then
    raise EArgumentException.Create('BucketName is a required property and must be set before making this call');
  if string.IsNullOrEmpty(PublicRequest.Key) then
    raise EArgumentException.Create('Key is a required property and must be set before making this call');

  Request.ResourcePath := Format('/%s/%s',
    [TS3Transforms.ToStringValue(PublicRequest.BucketName),
    TS3Transforms.ToStringValue(PublicRequest.Key)]);

  if PublicRequest.IsSetVersionId then
    Request.AddSubResource('versionId', TS3Transforms.ToStringValue(PublicRequest.VersionId));
  if PublicRequest.IsSetRequestPayer then
    Request.Headers.Add(TS3Constants.AmzHeaderRequestPayer, TS3Transforms.ToStringValue(PublicRequest.RequestPayer.Value));

  Request.UseQueryString := True;
  Result := Request;
end;

class constructor TDeleteObjectRequestMarshaller.Create;
begin
  FInstance := TDeleteObjectRequestMarshaller.Create;
end;

class function TDeleteObjectRequestMarshaller.Instance: IDeleteObjectRequestMarshaller;
begin
  Result := FInstance;
end;

end.
