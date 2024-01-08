unit AWS.S3.Transform.DeleteBucketRequestMarshaller;

interface

uses
  System.SysUtils,
  AWS.Internal.Request,
  AWS.RegionEndpoint,
  AWS.RegionEndpoints,
  AWS.Transform.RequestMarshaller,
  AWS.Runtime.Model,
  AWS.S3.Model.DeleteBucketRequest,
  AWS.Internal.DefaultRequest,
  AWS.S3.Exception,
  AWS.S3.Util.S3Constants,
  AWS.S3.Internal.S3Transforms,
  AWS.Internal.StringUtils;

type
  IDeleteBucketRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteBucketRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteBucketRequest>, IDeleteBucketRequestMarshaller)
  strict private
    class var FInstance: IDeleteBucketRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteBucketRequest): IRequest; overload;
    class function Instance: IDeleteBucketRequestMarshaller; static;
  end;
  
implementation

{ TDeleteBucketRequestMarshaller }

function TDeleteBucketRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteBucketRequest(AInput));
end;

function TDeleteBucketRequestMarshaller.Marshall(PublicRequest: TDeleteBucketRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');

  Request.HttpMethod := 'DELETE';

  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add(TS3Constants.AmzHeaderExpectedBucketOwner, TS3Transforms.ToStringValue(PublicRequest.ExpectedBucketOwner));

  if string.IsNullOrEmpty(PublicRequest.BucketName) then
    raise EArgumentException.Create('BucketName is a required property and must be set before making this call');

	Request.ResourcePath := '/' + TS3Transforms.ToStringValue(PublicRequest.BucketName);

//  if PublicRequest.BucketRegion != null then
//  begin
//    var regionEndpoint: IRegionEndpointEx;
//    if PublicRequest.BucketRegion = TS3Region.US then
//      regionEndpoint := TRegionEndpoints.USEast1;
//    else
//    if PublicRequest.BucketRegion = TS3Region.EU then
//      regionEndpoint := TRegionEndpoints.EUWest1
//    else
//      regionEndpoint := RegionEndpoint.GetBySystemName(PublicRequest.BucketRegion.Value);
//    Request.AlternateEndpoint = regionEndpoint;
//  end;

  if PublicRequest.BucketRegionName <> '' then
  begin
    var regionEndpoint: IRegionEndpointEx;
    regionEndpoint := TRegionEndpoint.GetBySystemName(PublicRequest.BucketRegionName);
    Request.AlternateEndpoint := regionEndpoint;
  end;

  Request.UseQueryString := True;
  Result := Request;
end;

class constructor TDeleteBucketRequestMarshaller.Create;
begin
  FInstance := TDeleteBucketRequestMarshaller.Create;
end;

class function TDeleteBucketRequestMarshaller.Instance: IDeleteBucketRequestMarshaller;
begin
  Result := FInstance;
end;

end.
