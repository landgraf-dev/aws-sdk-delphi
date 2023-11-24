unit AWS.S3.Transform.PutBucketAnalyticsConfigurationRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.PutBucketAnalyticsConfigurationRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils, 
  System.Classes, 
  Bcl.Xml.Writer, 
  System.SysUtils, 
  AWS.SDKUtils;

type
  IPutBucketAnalyticsConfigurationRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPutBucketAnalyticsConfigurationRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPutBucketAnalyticsConfigurationRequest>, IPutBucketAnalyticsConfigurationRequestMarshaller)
  strict private
    class var FInstance: IPutBucketAnalyticsConfigurationRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutBucketAnalyticsConfigurationRequest): IRequest; overload;
    class function Instance: IPutBucketAnalyticsConfigurationRequestMarshaller; static;
  end;
  
implementation

{ TPutBucketAnalyticsConfigurationRequestMarshaller }

function TPutBucketAnalyticsConfigurationRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPutBucketAnalyticsConfigurationRequest(AInput));
end;

function TPutBucketAnalyticsConfigurationRequestMarshaller.Marshall(PublicRequest: TPutBucketAnalyticsConfigurationRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'PUT';
  Request.AddSubResource('analytics');
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
    Request.Headers['Content-Type'] := 'application/xml';
    var content := TEncoding.UTF8.GetString(Request.Content);
    Request.Headers[THeaderKeys.XAmzApiVersion] := '2006-03-01';
  finally
    XmlStream.Free;
  end;
  Request.UseQueryString := True;
  Result := Request;
end;

class constructor TPutBucketAnalyticsConfigurationRequestMarshaller.Create;
begin
  FInstance := TPutBucketAnalyticsConfigurationRequestMarshaller.Create;
end;

class function TPutBucketAnalyticsConfigurationRequestMarshaller.Instance: IPutBucketAnalyticsConfigurationRequestMarshaller;
begin
  Result := FInstance;
end;

end.
