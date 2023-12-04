unit AWS.SESv2.Transform.UpdateConfigurationSetEventDestinationRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.UpdateConfigurationSetEventDestinationRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Exception, 
  AWS.Internal.StringUtils, 
  AWS.Json.Writer, 
  AWS.SESv2.Transform.EventDestinationDefinitionMarshaller;

type
  IUpdateConfigurationSetEventDestinationRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TUpdateConfigurationSetEventDestinationRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TUpdateConfigurationSetEventDestinationRequest>, IUpdateConfigurationSetEventDestinationRequestMarshaller)
  strict private
    class var FInstance: IUpdateConfigurationSetEventDestinationRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TUpdateConfigurationSetEventDestinationRequest): IRequest; overload;
    class function Instance: IUpdateConfigurationSetEventDestinationRequestMarshaller; static;
  end;
  
implementation

{ TUpdateConfigurationSetEventDestinationRequestMarshaller }

function TUpdateConfigurationSetEventDestinationRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TUpdateConfigurationSetEventDestinationRequest(AInput));
end;

function TUpdateConfigurationSetEventDestinationRequestMarshaller.Marshall(PublicRequest: TUpdateConfigurationSetEventDestinationRequest): IRequest;
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
  if not PublicRequest.IsSetEventDestinationName then
    raise EAmazonSimpleEmailServiceV2Exception.Create('Request object does not have required field EventDestinationName set');
  Request.AddPathResource('{EventDestinationName}', TStringUtils.Fromstring(PublicRequest.EventDestinationName));
  Request.ResourcePath := '/v2/email/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetEventDestination then
        begin
          Context.Writer.WriteName('EventDestination');
          Context.Writer.WriteBeginObject;
          TEventDestinationDefinitionMarshaller.Instance.Marshall(PublicRequest.EventDestination, Context);
          Context.Writer.WriteEndObject;
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

class constructor TUpdateConfigurationSetEventDestinationRequestMarshaller.Create;
begin
  FInstance := TUpdateConfigurationSetEventDestinationRequestMarshaller.Create;
end;

class function TUpdateConfigurationSetEventDestinationRequestMarshaller.Instance: IUpdateConfigurationSetEventDestinationRequestMarshaller;
begin
  Result := FInstance;
end;

end.
