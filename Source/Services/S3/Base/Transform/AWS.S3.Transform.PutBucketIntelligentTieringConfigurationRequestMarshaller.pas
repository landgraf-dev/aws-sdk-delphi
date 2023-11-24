unit AWS.S3.Transform.PutBucketIntelligentTieringConfigurationRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.PutBucketIntelligentTieringConfigurationRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils, 
  System.Classes, 
  Bcl.Xml.Writer, 
  System.SysUtils, 
  AWS.SDKUtils;

type
  IPutBucketIntelligentTieringConfigurationRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPutBucketIntelligentTieringConfigurationRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPutBucketIntelligentTieringConfigurationRequest>, IPutBucketIntelligentTieringConfigurationRequestMarshaller)
  strict private
    class var FInstance: IPutBucketIntelligentTieringConfigurationRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutBucketIntelligentTieringConfigurationRequest): IRequest; overload;
    class function Instance: IPutBucketIntelligentTieringConfigurationRequestMarshaller; static;
  end;
  
implementation

{ TPutBucketIntelligentTieringConfigurationRequestMarshaller }

function TPutBucketIntelligentTieringConfigurationRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPutBucketIntelligentTieringConfigurationRequest(AInput));
end;

function TPutBucketIntelligentTieringConfigurationRequestMarshaller.Marshall(PublicRequest: TPutBucketIntelligentTieringConfigurationRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'PUT';
  Request.AddSubResource('intelligent-tiering');
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

class constructor TPutBucketIntelligentTieringConfigurationRequestMarshaller.Create;
begin
  FInstance := TPutBucketIntelligentTieringConfigurationRequestMarshaller.Create;
end;

class function TPutBucketIntelligentTieringConfigurationRequestMarshaller.Instance: IPutBucketIntelligentTieringConfigurationRequestMarshaller;
begin
  Result := FInstance;
end;

end.
