unit AWS.SESv2.Transform.ListDeliverabilityTestReportsRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.ListDeliverabilityTestReportsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Internal.StringUtils;

type
  IListDeliverabilityTestReportsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListDeliverabilityTestReportsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListDeliverabilityTestReportsRequest>, IListDeliverabilityTestReportsRequestMarshaller)
  strict private
    class var FInstance: IListDeliverabilityTestReportsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListDeliverabilityTestReportsRequest): IRequest; overload;
    class function Instance: IListDeliverabilityTestReportsRequestMarshaller; static;
  end;
  
implementation

{ TListDeliverabilityTestReportsRequestMarshaller }

function TListDeliverabilityTestReportsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListDeliverabilityTestReportsRequest(AInput));
end;

function TListDeliverabilityTestReportsRequestMarshaller.Marshall(PublicRequest: TListDeliverabilityTestReportsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'GET';
  if PublicRequest.IsSetNextToken then
    Request.Parameters.Add('NextToken', TStringUtils.Fromstring(PublicRequest.NextToken));
  if PublicRequest.IsSetPageSize then
    Request.Parameters.Add('PageSize', TStringUtils.FromInteger(PublicRequest.PageSize));
  Request.ResourcePath := '/v2/email/deliverability-dashboard/test-reports';
  Request.UseQueryString := True;
  Result := Request;
end;

class constructor TListDeliverabilityTestReportsRequestMarshaller.Create;
begin
  FInstance := TListDeliverabilityTestReportsRequestMarshaller.Create;
end;

class function TListDeliverabilityTestReportsRequestMarshaller.Instance: IListDeliverabilityTestReportsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
