unit AWS.S3Control.Transform.PutStorageLensConfigurationTaggingRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.PutStorageLensConfigurationTaggingRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3Control.Exception, 
  AWS.Internal.StringUtils, 
  System.Classes, 
  Bcl.Xml.Writer;

type
  IPutStorageLensConfigurationTaggingRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPutStorageLensConfigurationTaggingRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPutStorageLensConfigurationTaggingRequest>, IPutStorageLensConfigurationTaggingRequestMarshaller)
  strict private
    class var FInstance: IPutStorageLensConfigurationTaggingRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutStorageLensConfigurationTaggingRequest): IRequest; overload;
    class function Instance: IPutStorageLensConfigurationTaggingRequestMarshaller; static;
  end;
  
implementation

{ TPutStorageLensConfigurationTaggingRequestMarshaller }

function TPutStorageLensConfigurationTaggingRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPutStorageLensConfigurationTaggingRequest(AInput));
end;

function TPutStorageLensConfigurationTaggingRequestMarshaller.Marshall(PublicRequest: TPutStorageLensConfigurationTaggingRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3Control');
  Request.HttpMethod := 'PUT';
  if PublicRequest.IsSetAccountId then
    Request.Headers.Add('x-amz-account-id', PublicRequest.AccountId);
  if not PublicRequest.IsSetConfigId then
    raise EAmazonS3ControlException.Create('Request object does not have required field ConfigId set');
  Request.AddPathResource('{storagelensid}', TStringUtils.Fromstring(PublicRequest.ConfigId));
  Request.ResourcePath := '/v20180820/storagelens/{storagelensid}/tagging';
  var XmlStream := TBytesStream.Create;
  try
    var XmlWriter := TXmlWriter.Create(XmlStream, False, TEncoding.UTF8);
    try
      XmlWriter.WriteStartElement('PutStorageLensConfigurationTaggingRequest', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
      var PublicRequestTags := PublicRequest.Tags;
      if (PublicRequestTags <> nil) and (PublicRequestTags.Count > 0) then
      begin
        XmlWriter.WriteStartElement('Tags', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
        for var PublicRequestTagsValue in PublicRequestTags do
          if PublicRequestTagsValue <> nil then
          begin
            XmlWriter.WriteStartElement('Tag', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
            if PublicRequestTagsValue.IsSetKey then
              XmlWriter.WriteElementString('Key', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.Fromstring(PublicRequestTagsValue.Key));
            if PublicRequestTagsValue.IsSetValue then
              XmlWriter.WriteElementString('Value', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.Fromstring(PublicRequestTagsValue.Value));
            XmlWriter.WriteEndElement;
          end;
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

class constructor TPutStorageLensConfigurationTaggingRequestMarshaller.Create;
begin
  FInstance := TPutStorageLensConfigurationTaggingRequestMarshaller.Create;
end;

class function TPutStorageLensConfigurationTaggingRequestMarshaller.Instance: IPutStorageLensConfigurationTaggingRequestMarshaller;
begin
  Result := FInstance;
end;

end.
