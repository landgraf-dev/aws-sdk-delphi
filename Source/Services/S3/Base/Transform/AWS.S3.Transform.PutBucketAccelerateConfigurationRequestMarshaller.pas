unit AWS.S3.Transform.PutBucketAccelerateConfigurationRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.PutBucketAccelerateConfigurationRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils, 
  System.Classes, 
  Bcl.Xml.Writer, 
  System.SysUtils, 
  AWS.SDKUtils;

type
  IPutBucketAccelerateConfigurationRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPutBucketAccelerateConfigurationRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPutBucketAccelerateConfigurationRequest>, IPutBucketAccelerateConfigurationRequestMarshaller)
  strict private
    class var FInstance: IPutBucketAccelerateConfigurationRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutBucketAccelerateConfigurationRequest): IRequest; overload;
    class function Instance: IPutBucketAccelerateConfigurationRequestMarshaller; static;
  end;
  
implementation

{ TPutBucketAccelerateConfigurationRequestMarshaller }

function TPutBucketAccelerateConfigurationRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPutBucketAccelerateConfigurationRequest(AInput));
end;

function TPutBucketAccelerateConfigurationRequestMarshaller.Marshall(PublicRequest: TPutBucketAccelerateConfigurationRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'PUT';
  Request.AddSubResource('accelerate');
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);
  if not PublicRequest.IsSetBucketName then
    raise EAmazonS3Exception.Create('Request object does not have required field BucketName set');
  Request.AddPathResource('{Bucket}', TStringUtils.Fromstring(PublicRequest.BucketName));
  Request.ResourcePath := '/{Bucket}';
  var XmlStream := TBytesStream.Create;
  try
    var XmlWriter := TXmlWriter.Create(XmlStream, False, TEncoding.UTF8);
    try
    finally
      XmlWriter.Free;
    end;
    Request.Content := Copy(XmlStream.Bytes, 0, XmlStream.Size);
    Request.Headers.AddOrSetValue('Content-Type', 'application/xml');
    var content := TEncoding.UTF8.GetString(Request.Content);
    Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2006-03-01');
  finally
    XmlStream.Free;
  end;
  Result := Request;
end;

class constructor TPutBucketAccelerateConfigurationRequestMarshaller.Create;
begin
  FInstance := TPutBucketAccelerateConfigurationRequestMarshaller.Create;
end;

class function TPutBucketAccelerateConfigurationRequestMarshaller.Instance: IPutBucketAccelerateConfigurationRequestMarshaller;
begin
  Result := FInstance;
end;

end.
