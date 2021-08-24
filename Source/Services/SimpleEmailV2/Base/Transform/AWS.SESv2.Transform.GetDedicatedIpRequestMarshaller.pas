unit AWS.SESv2.Transform.GetDedicatedIpRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.GetDedicatedIpRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Exception, 
  AWS.Internal.StringUtils;

type
  IGetDedicatedIpRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetDedicatedIpRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetDedicatedIpRequest>, IGetDedicatedIpRequestMarshaller)
  strict private
    class var FInstance: IGetDedicatedIpRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetDedicatedIpRequest): IRequest; overload;
    class function Instance: IGetDedicatedIpRequestMarshaller; static;
  end;
  
implementation

{ TGetDedicatedIpRequestMarshaller }

function TGetDedicatedIpRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetDedicatedIpRequest(AInput));
end;

function TGetDedicatedIpRequestMarshaller.Marshall(PublicRequest: TGetDedicatedIpRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'GET';
  if not PublicRequest.IsSetIp then
    raise EAmazonSimpleEmailServiceV2Exception.Create('Request object does not have required field Ip set');
  Request.AddPathResource('{IP}', TStringUtils.Fromstring(PublicRequest.Ip));
  Request.ResourcePath := '/v2/email/dedicated-ips/{IP}';
  Result := Request;
end;

class constructor TGetDedicatedIpRequestMarshaller.Create;
begin
  FInstance := TGetDedicatedIpRequestMarshaller.Create;
end;

class function TGetDedicatedIpRequestMarshaller.Instance: IGetDedicatedIpRequestMarshaller;
begin
  Result := FInstance;
end;

end.
