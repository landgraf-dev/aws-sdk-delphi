unit AWS.SESv2.Transform.GetDedicatedIpsRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.GetDedicatedIpsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Internal.StringUtils;

type
  IGetDedicatedIpsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetDedicatedIpsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetDedicatedIpsRequest>, IGetDedicatedIpsRequestMarshaller)
  strict private
    class var FInstance: IGetDedicatedIpsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetDedicatedIpsRequest): IRequest; overload;
    class function Instance: IGetDedicatedIpsRequestMarshaller; static;
  end;
  
implementation

{ TGetDedicatedIpsRequestMarshaller }

function TGetDedicatedIpsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetDedicatedIpsRequest(AInput));
end;

function TGetDedicatedIpsRequestMarshaller.Marshall(PublicRequest: TGetDedicatedIpsRequest): IRequest;
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
  if PublicRequest.IsSetPoolName then
    Request.Parameters.Add('PoolName', TStringUtils.Fromstring(PublicRequest.PoolName));
  Request.ResourcePath := '/v2/email/dedicated-ips';
  Request.UseQueryString := True;
  Result := Request;
end;

class constructor TGetDedicatedIpsRequestMarshaller.Create;
begin
  FInstance := TGetDedicatedIpsRequestMarshaller.Create;
end;

class function TGetDedicatedIpsRequestMarshaller.Instance: IGetDedicatedIpsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
