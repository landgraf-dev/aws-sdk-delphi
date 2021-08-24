unit AWS.SESv2.Transform.GetConfigurationSetRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.GetConfigurationSetRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Exception, 
  AWS.Internal.StringUtils;

type
  IGetConfigurationSetRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetConfigurationSetRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetConfigurationSetRequest>, IGetConfigurationSetRequestMarshaller)
  strict private
    class var FInstance: IGetConfigurationSetRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetConfigurationSetRequest): IRequest; overload;
    class function Instance: IGetConfigurationSetRequestMarshaller; static;
  end;
  
implementation

{ TGetConfigurationSetRequestMarshaller }

function TGetConfigurationSetRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetConfigurationSetRequest(AInput));
end;

function TGetConfigurationSetRequestMarshaller.Marshall(PublicRequest: TGetConfigurationSetRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'GET';
  if not PublicRequest.IsSetConfigurationSetName then
    raise EAmazonSimpleEmailServiceV2Exception.Create('Request object does not have required field ConfigurationSetName set');
  Request.AddPathResource('{ConfigurationSetName}', TStringUtils.Fromstring(PublicRequest.ConfigurationSetName));
  Request.ResourcePath := '/v2/email/configuration-sets/{ConfigurationSetName}';
  Result := Request;
end;

class constructor TGetConfigurationSetRequestMarshaller.Create;
begin
  FInstance := TGetConfigurationSetRequestMarshaller.Create;
end;

class function TGetConfigurationSetRequestMarshaller.Instance: IGetConfigurationSetRequestMarshaller;
begin
  Result := FInstance;
end;

end.
