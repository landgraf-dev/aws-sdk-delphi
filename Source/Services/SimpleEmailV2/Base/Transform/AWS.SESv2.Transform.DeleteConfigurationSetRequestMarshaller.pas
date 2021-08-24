unit AWS.SESv2.Transform.DeleteConfigurationSetRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.DeleteConfigurationSetRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Exception, 
  AWS.Internal.StringUtils;

type
  IDeleteConfigurationSetRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteConfigurationSetRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteConfigurationSetRequest>, IDeleteConfigurationSetRequestMarshaller)
  strict private
    class var FInstance: IDeleteConfigurationSetRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteConfigurationSetRequest): IRequest; overload;
    class function Instance: IDeleteConfigurationSetRequestMarshaller; static;
  end;
  
implementation

{ TDeleteConfigurationSetRequestMarshaller }

function TDeleteConfigurationSetRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteConfigurationSetRequest(AInput));
end;

function TDeleteConfigurationSetRequestMarshaller.Marshall(PublicRequest: TDeleteConfigurationSetRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'DELETE';
  if not PublicRequest.IsSetConfigurationSetName then
    raise EAmazonSimpleEmailServiceV2Exception.Create('Request object does not have required field ConfigurationSetName set');
  Request.AddPathResource('{ConfigurationSetName}', TStringUtils.Fromstring(PublicRequest.ConfigurationSetName));
  Request.ResourcePath := '/v2/email/configuration-sets/{ConfigurationSetName}';
  Result := Request;
end;

class constructor TDeleteConfigurationSetRequestMarshaller.Create;
begin
  FInstance := TDeleteConfigurationSetRequestMarshaller.Create;
end;

class function TDeleteConfigurationSetRequestMarshaller.Instance: IDeleteConfigurationSetRequestMarshaller;
begin
  Result := FInstance;
end;

end.
