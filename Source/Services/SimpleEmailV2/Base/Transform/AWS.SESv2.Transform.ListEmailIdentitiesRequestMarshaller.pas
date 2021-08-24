unit AWS.SESv2.Transform.ListEmailIdentitiesRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.ListEmailIdentitiesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Internal.StringUtils;

type
  IListEmailIdentitiesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListEmailIdentitiesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListEmailIdentitiesRequest>, IListEmailIdentitiesRequestMarshaller)
  strict private
    class var FInstance: IListEmailIdentitiesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListEmailIdentitiesRequest): IRequest; overload;
    class function Instance: IListEmailIdentitiesRequestMarshaller; static;
  end;
  
implementation

{ TListEmailIdentitiesRequestMarshaller }

function TListEmailIdentitiesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListEmailIdentitiesRequest(AInput));
end;

function TListEmailIdentitiesRequestMarshaller.Marshall(PublicRequest: TListEmailIdentitiesRequest): IRequest;
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
  Request.ResourcePath := '/v2/email/identities';
  Request.UseQueryString := True;
  Result := Request;
end;

class constructor TListEmailIdentitiesRequestMarshaller.Create;
begin
  FInstance := TListEmailIdentitiesRequestMarshaller.Create;
end;

class function TListEmailIdentitiesRequestMarshaller.Instance: IListEmailIdentitiesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
