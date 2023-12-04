unit AWS.SESv2.Transform.CreateConfigurationSetEventDestinationRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.CreateConfigurationSetEventDestinationRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Exception, 
  AWS.Internal.StringUtils, 
  AWS.Json.Writer, 
  AWS.SESv2.Transform.EventDestinationDefinitionMarshaller;

type
  ICreateConfigurationSetEventDestinationRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCreateConfigurationSetEventDestinationRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCreateConfigurationSetEventDestinationRequest>, ICreateConfigurationSetEventDestinationRequestMarshaller)
  strict private
    class var FInstance: ICreateConfigurationSetEventDestinationRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCreateConfigurationSetEventDestinationRequest): IRequest; overload;
    class function Instance: ICreateConfigurationSetEventDestinationRequestMarshaller; static;
  end;
  
implementation

{ TCreateConfigurationSetEventDestinationRequestMarshaller }

function TCreateConfigurationSetEventDestinationRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCreateConfigurationSetEventDestinationRequest(AInput));
end;

function TCreateConfigurationSetEventDestinationRequestMarshaller.Marshall(PublicRequest: TCreateConfigurationSetEventDestinationRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue('Content-Type', 'application/json');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'POST';
  if not PublicRequest.IsSetConfigurationSetName then
    raise EAmazonSimpleEmailServiceV2Exception.Create('Request object does not have required field ConfigurationSetName set');
  Request.AddPathResource('{ConfigurationSetName}', TStringUtils.Fromstring(PublicRequest.ConfigurationSetName));
  Request.ResourcePath := '/v2/email/configuration-sets/{ConfigurationSetName}/event-destinations';
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
        if PublicRequest.IsSetEventDestinationName then
        begin
          Context.Writer.WriteName('EventDestinationName');
          Context.Writer.WriteString(PublicRequest.EventDestinationName);
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

class constructor TCreateConfigurationSetEventDestinationRequestMarshaller.Create;
begin
  FInstance := TCreateConfigurationSetEventDestinationRequestMarshaller.Create;
end;

class function TCreateConfigurationSetEventDestinationRequestMarshaller.Instance: ICreateConfigurationSetEventDestinationRequestMarshaller;
begin
  Result := FInstance;
end;

end.
