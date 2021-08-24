unit AWS.SESv2.Transform.GetDeliverabilityDashboardOptionsRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.GetDeliverabilityDashboardOptionsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils;

type
  IGetDeliverabilityDashboardOptionsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetDeliverabilityDashboardOptionsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetDeliverabilityDashboardOptionsRequest>, IGetDeliverabilityDashboardOptionsRequestMarshaller)
  strict private
    class var FInstance: IGetDeliverabilityDashboardOptionsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetDeliverabilityDashboardOptionsRequest): IRequest; overload;
    class function Instance: IGetDeliverabilityDashboardOptionsRequestMarshaller; static;
  end;
  
implementation

{ TGetDeliverabilityDashboardOptionsRequestMarshaller }

function TGetDeliverabilityDashboardOptionsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetDeliverabilityDashboardOptionsRequest(AInput));
end;

function TGetDeliverabilityDashboardOptionsRequestMarshaller.Marshall(PublicRequest: TGetDeliverabilityDashboardOptionsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'GET';
  Request.ResourcePath := '/v2/email/deliverability-dashboard';
  Result := Request;
end;

class constructor TGetDeliverabilityDashboardOptionsRequestMarshaller.Create;
begin
  FInstance := TGetDeliverabilityDashboardOptionsRequestMarshaller.Create;
end;

class function TGetDeliverabilityDashboardOptionsRequestMarshaller.Instance: IGetDeliverabilityDashboardOptionsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
