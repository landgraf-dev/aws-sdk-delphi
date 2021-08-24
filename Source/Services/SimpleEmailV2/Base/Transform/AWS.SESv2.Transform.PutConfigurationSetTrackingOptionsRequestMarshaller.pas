unit AWS.SESv2.Transform.PutConfigurationSetTrackingOptionsRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.PutConfigurationSetTrackingOptionsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Exception, 
  AWS.Internal.StringUtils;

type
  IPutConfigurationSetTrackingOptionsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPutConfigurationSetTrackingOptionsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPutConfigurationSetTrackingOptionsRequest>, IPutConfigurationSetTrackingOptionsRequestMarshaller)
  strict private
    class var FInstance: IPutConfigurationSetTrackingOptionsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutConfigurationSetTrackingOptionsRequest): IRequest; overload;
    class function Instance: IPutConfigurationSetTrackingOptionsRequestMarshaller; static;
  end;
  
implementation

{ TPutConfigurationSetTrackingOptionsRequestMarshaller }

function TPutConfigurationSetTrackingOptionsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPutConfigurationSetTrackingOptionsRequest(AInput));
end;

function TPutConfigurationSetTrackingOptionsRequestMarshaller.Marshall(PublicRequest: TPutConfigurationSetTrackingOptionsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue('Content-Type', 'application/json');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'PUT';
  if not PublicRequest.IsSetConfigurationSetName then
    raise EAmazonSimpleEmailServiceV2Exception.Create('Request object does not have required field ConfigurationSetName set');
  Request.AddPathResource('{ConfigurationSetName}', TStringUtils.Fromstring(PublicRequest.ConfigurationSetName));
  Request.ResourcePath := '/v2/email/configuration-sets/{ConfigurationSetName}/tracking-options';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetCustomRedirectDomain then
        begin
          Context.Writer.WriteName('CustomRedirectDomain');
          Context.Writer.WriteString(PublicRequest.CustomRedirectDomain);
        end;
        Writer.WriteEndObject;
        Writer.Flush;
        var Snippet: string := Stream.DataString;
        Request.Content := TEncoding.UTF8.GetBytes(Snippet);
      finally
        Context.Free;
      end;
    finally
      Writer.Free;
    end;
  finally
    Stream.Free;
  end;
  Result := Request;
end;

class constructor TPutConfigurationSetTrackingOptionsRequestMarshaller.Create;
begin
  FInstance := TPutConfigurationSetTrackingOptionsRequestMarshaller.Create;
end;

class function TPutConfigurationSetTrackingOptionsRequestMarshaller.Instance: IPutConfigurationSetTrackingOptionsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
