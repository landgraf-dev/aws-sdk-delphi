unit AWS.S3Control.Transform.PutPublicAccessBlockRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.PutPublicAccessBlockRequest, 
  AWS.Internal.DefaultRequest, 
  System.Classes, 
  Bcl.Xml.Writer, 
  System.SysUtils, 
  AWS.Internal.StringUtils, 
  AWS.SDKUtils, 
  AWS.S3Control.Exception, 
  AWS.Internal.Util.HostPrefixUtils;

type
  IPutPublicAccessBlockRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPutPublicAccessBlockRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPutPublicAccessBlockRequest>, IPutPublicAccessBlockRequestMarshaller)
  strict private
    class var FInstance: IPutPublicAccessBlockRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutPublicAccessBlockRequest): IRequest; overload;
    class function Instance: IPutPublicAccessBlockRequestMarshaller; static;
  end;
  
implementation

{ TPutPublicAccessBlockRequestMarshaller }

function TPutPublicAccessBlockRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPutPublicAccessBlockRequest(AInput));
end;

function TPutPublicAccessBlockRequestMarshaller.Marshall(PublicRequest: TPutPublicAccessBlockRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3Control');
  Request.HttpMethod := 'PUT';
  if PublicRequest.IsSetAccountId then
    Request.Headers.Add('x-amz-account-id', PublicRequest.AccountId);
  Request.ResourcePath := '/v20180820/configuration/publicAccessBlock';
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
    Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2018-08-20');
  finally
    XmlStream.Free;
  end;
  var hostPrefixLabels_AccountId := TStringUtils.Fromstring(PublicRequest.AccountId);
  if not THostPrefixUtils.IsValidLabelValue(hostPrefixLabels_AccountId) then
    raise EAmazonS3ControlException.Create('AccountId can only contain alphanumeric characters and dashes and must be between 1 and 63 characters long.');
  Request.HostPrefix := 'AccountId.';
  Result := Request;
end;

class constructor TPutPublicAccessBlockRequestMarshaller.Create;
begin
  FInstance := TPutPublicAccessBlockRequestMarshaller.Create;
end;

class function TPutPublicAccessBlockRequestMarshaller.Instance: IPutPublicAccessBlockRequestMarshaller;
begin
  Result := FInstance;
end;

end.
