unit AWS.SESv2.Transform.DeleteConfigurationSetEventDestinationRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.DeleteConfigurationSetEventDestinationRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Exception, 
  AWS.Internal.StringUtils;

type
  IDeleteConfigurationSetEventDestinationRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteConfigurationSetEventDestinationRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteConfigurationSetEventDestinationRequest>, IDeleteConfigurationSetEventDestinationRequestMarshaller)
  strict private
    class var FInstance: IDeleteConfigurationSetEventDestinationRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteConfigurationSetEventDestinationRequest): IRequest; overload;
    class function Instance: IDeleteConfigurationSetEventDestinationRequestMarshaller; static;
  end;
  
implementation

{ TDeleteConfigurationSetEventDestinationRequestMarshaller }

function TDeleteConfigurationSetEventDestinationRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteConfigurationSetEventDestinationRequest(AInput));
end;

function TDeleteConfigurationSetEventDestinationRequestMarshaller.Marshall(PublicRequest: TDeleteConfigurationSetEventDestinationRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'DELETE';
  if not PublicRequest.IsSetConfigurationSetName then
    raise EAmazonSimpleEmailServiceV2Exception.Create('Request object does not have required field ConfigurationSetName set');
  Request.AddPathResource('{ConfigurationSetName}', TStringUtils.Fromstring(PublicRequest.ConfigurationSetName));
  if not PublicRequest.IsSetEventDestinationName then
    raise EAmazonSimpleEmailServiceV2Exception.Create('Request object does not have required field EventDestinationName set');
  Request.AddPathResource('{EventDestinationName}', TStringUtils.Fromstring(PublicRequest.EventDestinationName));
  Request.ResourcePath := '/v2/email/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}';
  Result := Request;
end;

class constructor TDeleteConfigurationSetEventDestinationRequestMarshaller.Create;
begin
  FInstance := TDeleteConfigurationSetEventDestinationRequestMarshaller.Create;
end;

class function TDeleteConfigurationSetEventDestinationRequestMarshaller.Instance: IDeleteConfigurationSetEventDestinationRequestMarshaller;
begin
  Result := FInstance;
end;

end.
