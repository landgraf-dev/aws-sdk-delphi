unit AWS.S3Control.Transform.PutAccessPointPolicyRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.PutAccessPointPolicyRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Arn, 
  AWS.S3Control.Exception, 
  AWS.Internal.StringUtils, 
  System.Classes, 
  Bcl.Xml.Writer;

type
  IPutAccessPointPolicyRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPutAccessPointPolicyRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPutAccessPointPolicyRequest>, IPutAccessPointPolicyRequestMarshaller)
  strict private
    class var FInstance: IPutAccessPointPolicyRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutAccessPointPolicyRequest): IRequest; overload;
    class function Instance: IPutAccessPointPolicyRequestMarshaller; static;
  end;
  
implementation

{ TPutAccessPointPolicyRequestMarshaller }

function TPutAccessPointPolicyRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPutAccessPointPolicyRequest(AInput));
end;

function TPutAccessPointPolicyRequestMarshaller.Marshall(PublicRequest: TPutAccessPointPolicyRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3Control');
  Request.HttpMethod := 'PUT';
  if TArn.IsArn(PublicRequest.Name) then
    PublicRequest.AccountId := TS3ArnUtils.GetAccountidBaseOnArn(PublicRequest.AccountId, TArn.Parse(PublicRequest.Name).AccountId);
  if PublicRequest.IsSetAccountId then
    Request.Headers.Add('x-amz-account-id', PublicRequest.AccountId);
  if not PublicRequest.IsSetName then
    raise EAmazonS3ControlException.Create('Request object does not have required field Name set');
  Request.AddPathResource('{name}', TStringUtils.Fromstring(PublicRequest.Name));
  Request.ResourcePath := '/v20180820/accesspoint/{name}/policy';
  var XmlStream := TBytesStream.Create;
  try
    var XmlWriter := TXmlWriter.Create(XmlStream, False, TEncoding.UTF8);
    try
      XmlWriter.WriteStartElement('PutAccessPointPolicyRequest', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
      XmlWriter.WriteEndElement;
    finally
      XmlWriter.Free;
    end;
    Request.Content := Copy(XmlStream.Bytes, 0, XmlStream.Size);
    Request.Headers['Content-Type'] := 'application/xml';
    var content := TEncoding.UTF8.GetString(Request.Content);
    Request.Headers[Amazon.Util.HeaderKeys.XAmzApiVersion] := '2018-08-20';
  finally
    XmlStream.Free;
  end;
  var hostPrefixLabels_AccountId := TStringUtils.Fromstring(PublicRequest.AccountId);
  if not THostPrefixUtils.IsValidLabelValue(hostPrefixLabels_AccountId) then
    raise AmazonS3ControlException.CreateFmt('AccountId can only contain alphanumeric characters and dashes and must be between 1 and 63 characters long.');
  Request.HostPrefix := 'AccountId.';
  Result := Request;
end;

class constructor TPutAccessPointPolicyRequestMarshaller.Create;
begin
  FInstance := TPutAccessPointPolicyRequestMarshaller.Create;
end;

class function TPutAccessPointPolicyRequestMarshaller.Instance: IPutAccessPointPolicyRequestMarshaller;
begin
  Result := FInstance;
end;

end.
