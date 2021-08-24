unit AWS.SESv2.Transform.GetDomainDeliverabilityCampaignRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.GetDomainDeliverabilityCampaignRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Exception, 
  AWS.Internal.StringUtils;

type
  IGetDomainDeliverabilityCampaignRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetDomainDeliverabilityCampaignRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetDomainDeliverabilityCampaignRequest>, IGetDomainDeliverabilityCampaignRequestMarshaller)
  strict private
    class var FInstance: IGetDomainDeliverabilityCampaignRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetDomainDeliverabilityCampaignRequest): IRequest; overload;
    class function Instance: IGetDomainDeliverabilityCampaignRequestMarshaller; static;
  end;
  
implementation

{ TGetDomainDeliverabilityCampaignRequestMarshaller }

function TGetDomainDeliverabilityCampaignRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetDomainDeliverabilityCampaignRequest(AInput));
end;

function TGetDomainDeliverabilityCampaignRequestMarshaller.Marshall(PublicRequest: TGetDomainDeliverabilityCampaignRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'GET';
  if not PublicRequest.IsSetCampaignId then
    raise EAmazonSimpleEmailServiceV2Exception.Create('Request object does not have required field CampaignId set');
  Request.AddPathResource('{CampaignId}', TStringUtils.Fromstring(PublicRequest.CampaignId));
  Request.ResourcePath := '/v2/email/deliverability-dashboard/campaigns/{CampaignId}';
  Result := Request;
end;

class constructor TGetDomainDeliverabilityCampaignRequestMarshaller.Create;
begin
  FInstance := TGetDomainDeliverabilityCampaignRequestMarshaller.Create;
end;

class function TGetDomainDeliverabilityCampaignRequestMarshaller.Instance: IGetDomainDeliverabilityCampaignRequestMarshaller;
begin
  Result := FInstance;
end;

end.
