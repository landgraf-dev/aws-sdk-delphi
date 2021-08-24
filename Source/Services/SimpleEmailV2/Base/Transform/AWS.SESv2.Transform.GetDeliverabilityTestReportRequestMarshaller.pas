unit AWS.SESv2.Transform.GetDeliverabilityTestReportRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.GetDeliverabilityTestReportRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Exception, 
  AWS.Internal.StringUtils;

type
  IGetDeliverabilityTestReportRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetDeliverabilityTestReportRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetDeliverabilityTestReportRequest>, IGetDeliverabilityTestReportRequestMarshaller)
  strict private
    class var FInstance: IGetDeliverabilityTestReportRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetDeliverabilityTestReportRequest): IRequest; overload;
    class function Instance: IGetDeliverabilityTestReportRequestMarshaller; static;
  end;
  
implementation

{ TGetDeliverabilityTestReportRequestMarshaller }

function TGetDeliverabilityTestReportRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetDeliverabilityTestReportRequest(AInput));
end;

function TGetDeliverabilityTestReportRequestMarshaller.Marshall(PublicRequest: TGetDeliverabilityTestReportRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'GET';
  if not PublicRequest.IsSetReportId then
    raise EAmazonSimpleEmailServiceV2Exception.Create('Request object does not have required field ReportId set');
  Request.AddPathResource('{ReportId}', TStringUtils.Fromstring(PublicRequest.ReportId));
  Request.ResourcePath := '/v2/email/deliverability-dashboard/test-reports/{ReportId}';
  Result := Request;
end;

class constructor TGetDeliverabilityTestReportRequestMarshaller.Create;
begin
  FInstance := TGetDeliverabilityTestReportRequestMarshaller.Create;
end;

class function TGetDeliverabilityTestReportRequestMarshaller.Instance: IGetDeliverabilityTestReportRequestMarshaller;
begin
  Result := FInstance;
end;

end.
