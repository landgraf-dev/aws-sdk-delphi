unit AWS.S3Control.Transform.CreateAccessPointRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.CreateAccessPointRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Arn, 
  AWS.S3Control.Exception, 
  AWS.Internal.StringUtils, 
  System.Classes, 
  Bcl.Xml.Writer;

type
  ICreateAccessPointRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCreateAccessPointRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCreateAccessPointRequest>, ICreateAccessPointRequestMarshaller)
  strict private
    class var FInstance: ICreateAccessPointRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCreateAccessPointRequest): IRequest; overload;
    class function Instance: ICreateAccessPointRequestMarshaller; static;
  end;
  
implementation

{ TCreateAccessPointRequestMarshaller }

function TCreateAccessPointRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCreateAccessPointRequest(AInput));
end;

function TCreateAccessPointRequestMarshaller.Marshall(PublicRequest: TCreateAccessPointRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3Control');
  Request.HttpMethod := 'PUT';
  if TArn.IsArn(PublicRequest.Bucket) then
    PublicRequest.AccountId := TS3ArnUtils.GetAccountidBaseOnArn(PublicRequest.AccountId, TArn.Parse(PublicRequest.Bucket).AccountId);
  if PublicRequest.IsSetAccountId then
    Request.Headers.Add('x-amz-account-id', PublicRequest.AccountId);
  if not PublicRequest.IsSetName then
    raise EAmazonS3ControlException.Create('Request object does not have required field Name set');
  Request.AddPathResource('{name}', TStringUtils.Fromstring(PublicRequest.Name));
  Request.ResourcePath := '/v20180820/accesspoint/{name}';
  var XmlStream := TBytesStream.Create;
  try
    var XmlWriter := TXmlWriter.Create(XmlStream, False, TEncoding.UTF8);
    try
      XmlWriter.WriteStartElement('CreateAccessPointRequest', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
      if PublicRequest.PublicAccessBlockConfiguration <> nil then
      begin
        XmlWriter.WriteStartElement('PublicAccessBlockConfiguration', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
        if PublicRequest.PublicAccessBlockConfiguration.IsSetBlockPublicAcls then
          XmlWriter.WriteElementString('BlockPublicAcls', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.FromBoolean(PublicRequest.PublicAccessBlockConfiguration.BlockPublicAcls));
        if PublicRequest.PublicAccessBlockConfiguration.IsSetBlockPublicPolicy then
          XmlWriter.WriteElementString('BlockPublicPolicy', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.FromBoolean(PublicRequest.PublicAccessBlockConfiguration.BlockPublicPolicy));
        if PublicRequest.PublicAccessBlockConfiguration.IsSetIgnorePublicAcls then
          XmlWriter.WriteElementString('IgnorePublicAcls', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.FromBoolean(PublicRequest.PublicAccessBlockConfiguration.IgnorePublicAcls));
        if PublicRequest.PublicAccessBlockConfiguration.IsSetRestrictPublicBuckets then
          XmlWriter.WriteElementString('RestrictPublicBuckets', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.FromBoolean(PublicRequest.PublicAccessBlockConfiguration.RestrictPublicBuckets));
        XmlWriter.WriteEndElement;
      end;
      if PublicRequest.VpcConfiguration <> nil then
      begin
        XmlWriter.WriteStartElement('VpcConfiguration', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
        if PublicRequest.VpcConfiguration.IsSetVpcId then
          XmlWriter.WriteElementString('VpcId', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.Fromstring(PublicRequest.VpcConfiguration.VpcId));
        XmlWriter.WriteEndElement;
      end;
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

class constructor TCreateAccessPointRequestMarshaller.Create;
begin
  FInstance := TCreateAccessPointRequestMarshaller.Create;
end;

class function TCreateAccessPointRequestMarshaller.Instance: ICreateAccessPointRequestMarshaller;
begin
  Result := FInstance;
end;

end.
