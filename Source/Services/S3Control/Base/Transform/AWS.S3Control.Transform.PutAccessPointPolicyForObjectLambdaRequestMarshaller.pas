unit AWS.S3Control.Transform.PutAccessPointPolicyForObjectLambdaRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.PutAccessPointPolicyForObjectLambdaRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3Control.Exception, 
  AWS.Internal.StringUtils, 
  System.Classes, 
  AWS.Xml.Writer, 
  System.SysUtils, 
  AWS.SDKUtils, 
  AWS.Internal.Util.HostPrefixUtils;

type
  IPutAccessPointPolicyForObjectLambdaRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPutAccessPointPolicyForObjectLambdaRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPutAccessPointPolicyForObjectLambdaRequest>, IPutAccessPointPolicyForObjectLambdaRequestMarshaller)
  strict private
    class var FInstance: IPutAccessPointPolicyForObjectLambdaRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutAccessPointPolicyForObjectLambdaRequest): IRequest; overload;
    class function Instance: IPutAccessPointPolicyForObjectLambdaRequestMarshaller; static;
  end;
  
implementation

{ TPutAccessPointPolicyForObjectLambdaRequestMarshaller }

function TPutAccessPointPolicyForObjectLambdaRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPutAccessPointPolicyForObjectLambdaRequest(AInput));
end;

function TPutAccessPointPolicyForObjectLambdaRequestMarshaller.Marshall(PublicRequest: TPutAccessPointPolicyForObjectLambdaRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3Control');
  Request.HttpMethod := 'PUT';
  if PublicRequest.IsSetAccountId then
    Request.Headers.Add('x-amz-account-id', PublicRequest.AccountId);
  if not PublicRequest.IsSetName then
    raise EAmazonS3ControlException.Create('Request object does not have required field Name set');
  Request.AddPathResource('{name}', TStringUtils.Fromstring(PublicRequest.Name));
  Request.ResourcePath := '/v20180820/accesspointforobjectlambda/{name}/policy';
  var XmlStream := TBytesStream.Create;
  try
    var XmlWriter := TXmlWriter.Create(XmlStream, False, TEncoding.UTF8);
    try
      XmlWriter.WriteStartElement('PutAccessPointPolicyForObjectLambdaRequest', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
      XmlWriter.WriteEndElement;
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

class constructor TPutAccessPointPolicyForObjectLambdaRequestMarshaller.Create;
begin
  FInstance := TPutAccessPointPolicyForObjectLambdaRequestMarshaller.Create;
end;

class function TPutAccessPointPolicyForObjectLambdaRequestMarshaller.Instance: IPutAccessPointPolicyForObjectLambdaRequestMarshaller;
begin
  Result := FInstance;
end;

end.
