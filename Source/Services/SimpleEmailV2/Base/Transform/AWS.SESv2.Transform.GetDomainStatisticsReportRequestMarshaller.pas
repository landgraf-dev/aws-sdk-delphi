unit AWS.SESv2.Transform.GetDomainStatisticsReportRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.GetDomainStatisticsReportRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Exception, 
  AWS.Internal.StringUtils;

type
  IGetDomainStatisticsReportRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetDomainStatisticsReportRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetDomainStatisticsReportRequest>, IGetDomainStatisticsReportRequestMarshaller)
  strict private
    class var FInstance: IGetDomainStatisticsReportRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetDomainStatisticsReportRequest): IRequest; overload;
    class function Instance: IGetDomainStatisticsReportRequestMarshaller; static;
  end;
  
implementation

{ TGetDomainStatisticsReportRequestMarshaller }

function TGetDomainStatisticsReportRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetDomainStatisticsReportRequest(AInput));
end;

function TGetDomainStatisticsReportRequestMarshaller.Marshall(PublicRequest: TGetDomainStatisticsReportRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'GET';
  if not PublicRequest.IsSetDomain then
    raise EAmazonSimpleEmailServiceV2Exception.Create('Request object does not have required field Domain set');
  Request.AddPathResource('{Domain}', TStringUtils.Fromstring(PublicRequest.Domain));
  if PublicRequest.IsSetEndDate then
    Request.Parameters.Add('EndDate', TStringUtils.FromDateTimeToISO8601(PublicRequest.EndDate));
  if PublicRequest.IsSetStartDate then
    Request.Parameters.Add('StartDate', TStringUtils.FromDateTimeToISO8601(PublicRequest.StartDate));
  Request.ResourcePath := '/v2/email/deliverability-dashboard/statistics-report/{Domain}';
  Request.UseQueryString := True;
  Result := Request;
end;

class constructor TGetDomainStatisticsReportRequestMarshaller.Create;
begin
  FInstance := TGetDomainStatisticsReportRequestMarshaller.Create;
end;

class function TGetDomainStatisticsReportRequestMarshaller.Instance: IGetDomainStatisticsReportRequestMarshaller;
begin
  Result := FInstance;
end;

end.
