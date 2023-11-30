unit AWS.S3.Transform.PutBucketMetricsConfigurationRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.PutBucketMetricsConfigurationRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils, 
  System.Classes, 
  Bcl.Xml.Writer, 
  System.SysUtils, 
  AWS.SDKUtils;

type
  IPutBucketMetricsConfigurationRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPutBucketMetricsConfigurationRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPutBucketMetricsConfigurationRequest>, IPutBucketMetricsConfigurationRequestMarshaller)
  strict private
    class var FInstance: IPutBucketMetricsConfigurationRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutBucketMetricsConfigurationRequest): IRequest; overload;
    class function Instance: IPutBucketMetricsConfigurationRequestMarshaller; static;
  end;
  
implementation

{ TPutBucketMetricsConfigurationRequestMarshaller }

function TPutBucketMetricsConfigurationRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPutBucketMetricsConfigurationRequest(AInput));
end;

function TPutBucketMetricsConfigurationRequestMarshaller.Marshall(PublicRequest: TPutBucketMetricsConfigurationRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'PUT';
  Request.AddSubResource('metrics');
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);
  if not PublicRequest.IsSetBucketName then
    raise EAmazonS3Exception.Create('Request object does not have required field BucketName set');
  Request.AddPathResource('{Bucket}', TStringUtils.Fromstring(PublicRequest.BucketName));
  if PublicRequest.IsSetId then
    Request.Parameters.Add('id', TStringUtils.Fromstring(PublicRequest.Id));
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
  Request.UseQueryString := True;
  Result := Request;
end;

class constructor TPutBucketMetricsConfigurationRequestMarshaller.Create;
begin
  FInstance := TPutBucketMetricsConfigurationRequestMarshaller.Create;
end;

class function TPutBucketMetricsConfigurationRequestMarshaller.Instance: IPutBucketMetricsConfigurationRequestMarshaller;
begin
  Result := FInstance;
end;

end.
