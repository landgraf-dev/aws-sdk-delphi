unit AWS.SESv2.Transform.ListDedicatedIpPoolsRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.ListDedicatedIpPoolsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Internal.StringUtils;

type
  IListDedicatedIpPoolsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListDedicatedIpPoolsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListDedicatedIpPoolsRequest>, IListDedicatedIpPoolsRequestMarshaller)
  strict private
    class var FInstance: IListDedicatedIpPoolsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListDedicatedIpPoolsRequest): IRequest; overload;
    class function Instance: IListDedicatedIpPoolsRequestMarshaller; static;
  end;
  
implementation

{ TListDedicatedIpPoolsRequestMarshaller }

function TListDedicatedIpPoolsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListDedicatedIpPoolsRequest(AInput));
end;

function TListDedicatedIpPoolsRequestMarshaller.Marshall(PublicRequest: TListDedicatedIpPoolsRequest): IRequest;
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
  Request.ResourcePath := '/v2/email/dedicated-ip-pools';
  Request.UseQueryString := True;
  Result := Request;
end;

class constructor TListDedicatedIpPoolsRequestMarshaller.Create;
begin
  FInstance := TListDedicatedIpPoolsRequestMarshaller.Create;
end;

class function TListDedicatedIpPoolsRequestMarshaller.Instance: IListDedicatedIpPoolsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
