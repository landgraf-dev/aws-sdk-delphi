unit AWS.SESv2.Transform.PutConfigurationSetDeliveryOptionsRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.PutConfigurationSetDeliveryOptionsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Exception, 
  AWS.Internal.StringUtils, 
  AWS.Json.Writer;

type
  IPutConfigurationSetDeliveryOptionsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPutConfigurationSetDeliveryOptionsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPutConfigurationSetDeliveryOptionsRequest>, IPutConfigurationSetDeliveryOptionsRequestMarshaller)
  strict private
    class var FInstance: IPutConfigurationSetDeliveryOptionsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutConfigurationSetDeliveryOptionsRequest): IRequest; overload;
    class function Instance: IPutConfigurationSetDeliveryOptionsRequestMarshaller; static;
  end;
  
implementation

{ TPutConfigurationSetDeliveryOptionsRequestMarshaller }

function TPutConfigurationSetDeliveryOptionsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPutConfigurationSetDeliveryOptionsRequest(AInput));
end;

function TPutConfigurationSetDeliveryOptionsRequestMarshaller.Marshall(PublicRequest: TPutConfigurationSetDeliveryOptionsRequest): IRequest;
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
  Request.ResourcePath := '/v2/email/configuration-sets/{ConfigurationSetName}/delivery-options';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetSendingPoolName then
        begin
          Context.Writer.WriteName('SendingPoolName');
          Context.Writer.WriteString(PublicRequest.SendingPoolName);
        end;
        if PublicRequest.IsSetTlsPolicy then
        begin
          Context.Writer.WriteName('TlsPolicy');
          Context.Writer.WriteString(PublicRequest.TlsPolicy.Value);
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

class constructor TPutConfigurationSetDeliveryOptionsRequestMarshaller.Create;
begin
  FInstance := TPutConfigurationSetDeliveryOptionsRequestMarshaller.Create;
end;

class function TPutConfigurationSetDeliveryOptionsRequestMarshaller.Instance: IPutConfigurationSetDeliveryOptionsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
