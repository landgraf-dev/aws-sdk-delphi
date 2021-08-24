unit AWS.SESv2.Transform.ListEmailTemplatesRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.ListEmailTemplatesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Internal.StringUtils;

type
  IListEmailTemplatesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListEmailTemplatesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListEmailTemplatesRequest>, IListEmailTemplatesRequestMarshaller)
  strict private
    class var FInstance: IListEmailTemplatesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListEmailTemplatesRequest): IRequest; overload;
    class function Instance: IListEmailTemplatesRequestMarshaller; static;
  end;
  
implementation

{ TListEmailTemplatesRequestMarshaller }

function TListEmailTemplatesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListEmailTemplatesRequest(AInput));
end;

function TListEmailTemplatesRequestMarshaller.Marshall(PublicRequest: TListEmailTemplatesRequest): IRequest;
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
  Request.ResourcePath := '/v2/email/templates';
  Request.UseQueryString := True;
  Result := Request;
end;

class constructor TListEmailTemplatesRequestMarshaller.Create;
begin
  FInstance := TListEmailTemplatesRequestMarshaller.Create;
end;

class function TListEmailTemplatesRequestMarshaller.Instance: IListEmailTemplatesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
