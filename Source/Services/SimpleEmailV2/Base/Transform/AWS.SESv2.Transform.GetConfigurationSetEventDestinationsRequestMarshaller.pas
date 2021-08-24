unit AWS.SESv2.Transform.GetConfigurationSetEventDestinationsRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.GetConfigurationSetEventDestinationsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Exception, 
  AWS.Internal.StringUtils;

type
  IGetConfigurationSetEventDestinationsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetConfigurationSetEventDestinationsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetConfigurationSetEventDestinationsRequest>, IGetConfigurationSetEventDestinationsRequestMarshaller)
  strict private
    class var FInstance: IGetConfigurationSetEventDestinationsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetConfigurationSetEventDestinationsRequest): IRequest; overload;
    class function Instance: IGetConfigurationSetEventDestinationsRequestMarshaller; static;
  end;
  
implementation

{ TGetConfigurationSetEventDestinationsRequestMarshaller }

function TGetConfigurationSetEventDestinationsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetConfigurationSetEventDestinationsRequest(AInput));
end;

function TGetConfigurationSetEventDestinationsRequestMarshaller.Marshall(PublicRequest: TGetConfigurationSetEventDestinationsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'GET';
  if not PublicRequest.IsSetConfigurationSetName then
    raise EAmazonSimpleEmailServiceV2Exception.Create('Request object does not have required field ConfigurationSetName set');
  Request.AddPathResource('{ConfigurationSetName}', TStringUtils.Fromstring(PublicRequest.ConfigurationSetName));
  Request.ResourcePath := '/v2/email/configuration-sets/{ConfigurationSetName}/event-destinations';
  Result := Request;
end;

class constructor TGetConfigurationSetEventDestinationsRequestMarshaller.Create;
begin
  FInstance := TGetConfigurationSetEventDestinationsRequestMarshaller.Create;
end;

class function TGetConfigurationSetEventDestinationsRequestMarshaller.Instance: IGetConfigurationSetEventDestinationsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
