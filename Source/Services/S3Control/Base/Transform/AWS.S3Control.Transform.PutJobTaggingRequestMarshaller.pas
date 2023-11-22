unit AWS.S3Control.Transform.PutJobTaggingRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.PutJobTaggingRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3Control.Exception, 
  AWS.Internal.StringUtils, 
  System.Classes, 
  Bcl.Xml.Writer, 
  System.SysUtils, 
  AWS.SDKUtils, 
  AWS.Internal.Util.HostPrefixUtils;

type
  IPutJobTaggingRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPutJobTaggingRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPutJobTaggingRequest>, IPutJobTaggingRequestMarshaller)
  strict private
    class var FInstance: IPutJobTaggingRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutJobTaggingRequest): IRequest; overload;
    class function Instance: IPutJobTaggingRequestMarshaller; static;
  end;
  
implementation

{ TPutJobTaggingRequestMarshaller }

function TPutJobTaggingRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPutJobTaggingRequest(AInput));
end;

function TPutJobTaggingRequestMarshaller.Marshall(PublicRequest: TPutJobTaggingRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3Control');
  Request.HttpMethod := 'PUT';
  if PublicRequest.IsSetAccountId then
    Request.Headers.Add('x-amz-account-id', PublicRequest.AccountId);
  if not PublicRequest.IsSetJobId then
    raise EAmazonS3ControlException.Create('Request object does not have required field JobId set');
  Request.AddPathResource('{id}', TStringUtils.Fromstring(PublicRequest.JobId));
  Request.ResourcePath := '/v20180820/jobs/{id}/tagging';
  var XmlStream := TBytesStream.Create;
  try
    var XmlWriter := TXmlWriter.Create(XmlStream, False, TEncoding.UTF8);
    try
      XmlWriter.WriteStartElement('PutJobTaggingRequest', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
      var PublicRequestTags := PublicRequest.Tags;
      if (PublicRequestTags <> nil) and (PublicRequestTags.Count > 0) then
      begin
        XmlWriter.WriteStartElement('Tags', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
        for var PublicRequestTagsValue in PublicRequestTags do
          if PublicRequestTagsValue <> nil then
          begin
            XmlWriter.WriteStartElement('member', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
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
    Request.Headers[THeaderKeys.XAmzApiVersion] := '2018-08-20';
  finally
    XmlStream.Free;
  end;
  var hostPrefixLabels_AccountId := TStringUtils.Fromstring(PublicRequest.AccountId);
  if not THostPrefixUtils.IsValidLabelValue(hostPrefixLabels_AccountId) then
    raise EAmazonS3ControlException.Create('AccountId can only contain alphanumeric characters and dashes and must be between 1 and 63 characters long.');
  Request.HostPrefix := 'AccountId.';
  Result := Request;
end;

class constructor TPutJobTaggingRequestMarshaller.Create;
begin
  FInstance := TPutJobTaggingRequestMarshaller.Create;
end;

class function TPutJobTaggingRequestMarshaller.Instance: IPutJobTaggingRequestMarshaller;
begin
  Result := FInstance;
end;

end.
