unit AWS.SESv2.Transform.DeleteDedicatedIpPoolRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.DeleteDedicatedIpPoolRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Exception, 
  AWS.Internal.StringUtils;

type
  IDeleteDedicatedIpPoolRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteDedicatedIpPoolRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteDedicatedIpPoolRequest>, IDeleteDedicatedIpPoolRequestMarshaller)
  strict private
    class var FInstance: IDeleteDedicatedIpPoolRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteDedicatedIpPoolRequest): IRequest; overload;
    class function Instance: IDeleteDedicatedIpPoolRequestMarshaller; static;
  end;
  
implementation

{ TDeleteDedicatedIpPoolRequestMarshaller }

function TDeleteDedicatedIpPoolRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteDedicatedIpPoolRequest(AInput));
end;

function TDeleteDedicatedIpPoolRequestMarshaller.Marshall(PublicRequest: TDeleteDedicatedIpPoolRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'DELETE';
  if not PublicRequest.IsSetPoolName then
    raise EAmazonSimpleEmailServiceV2Exception.Create('Request object does not have required field PoolName set');
  Request.AddPathResource('{PoolName}', TStringUtils.Fromstring(PublicRequest.PoolName));
  Request.ResourcePath := '/v2/email/dedicated-ip-pools/{PoolName}';
  Result := Request;
end;

class constructor TDeleteDedicatedIpPoolRequestMarshaller.Create;
begin
  FInstance := TDeleteDedicatedIpPoolRequestMarshaller.Create;
end;

class function TDeleteDedicatedIpPoolRequestMarshaller.Instance: IDeleteDedicatedIpPoolRequestMarshaller;
begin
  Result := FInstance;
end;

end.
