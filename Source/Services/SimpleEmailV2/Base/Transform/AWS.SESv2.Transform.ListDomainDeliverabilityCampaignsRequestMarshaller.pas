unit AWS.SESv2.Transform.ListDomainDeliverabilityCampaignsRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.ListDomainDeliverabilityCampaignsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Exception, 
  AWS.Internal.StringUtils;

type
  IListDomainDeliverabilityCampaignsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListDomainDeliverabilityCampaignsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListDomainDeliverabilityCampaignsRequest>, IListDomainDeliverabilityCampaignsRequestMarshaller)
  strict private
    class var FInstance: IListDomainDeliverabilityCampaignsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListDomainDeliverabilityCampaignsRequest): IRequest; overload;
    class function Instance: IListDomainDeliverabilityCampaignsRequestMarshaller; static;
  end;
  
implementation

{ TListDomainDeliverabilityCampaignsRequestMarshaller }

function TListDomainDeliverabilityCampaignsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListDomainDeliverabilityCampaignsRequest(AInput));
end;

function TListDomainDeliverabilityCampaignsRequestMarshaller.Marshall(PublicRequest: TListDomainDeliverabilityCampaignsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'GET';
  if not PublicRequest.IsSetSubscribedDomain then
    raise EAmazonSimpleEmailServiceV2Exception.Create('Request object does not have required field SubscribedDomain set');
  Request.AddPathResource('{SubscribedDomain}', TStringUtils.Fromstring(PublicRequest.SubscribedDomain));
  if PublicRequest.IsSetEndDate then
    Request.Parameters.Add('EndDate', TStringUtils.FromDateTimeToISO8601(PublicRequest.EndDate));
  if PublicRequest.IsSetNextToken then
    Request.Parameters.Add('NextToken', TStringUtils.Fromstring(PublicRequest.NextToken));
  if PublicRequest.IsSetPageSize then
    Request.Parameters.Add('PageSize', TStringUtils.FromInteger(PublicRequest.PageSize));
  if PublicRequest.IsSetStartDate then
    Request.Parameters.Add('StartDate', TStringUtils.FromDateTimeToISO8601(PublicRequest.StartDate));
  Request.ResourcePath := '/v2/email/deliverability-dashboard/domains/{SubscribedDomain}/campaigns';
  Request.UseQueryString := True;
  Result := Request;
end;

class constructor TListDomainDeliverabilityCampaignsRequestMarshaller.Create;
begin
  FInstance := TListDomainDeliverabilityCampaignsRequestMarshaller.Create;
end;

class function TListDomainDeliverabilityCampaignsRequestMarshaller.Instance: IListDomainDeliverabilityCampaignsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
