unit AWS.SESv2.Transform.ListCustomVerificationEmailTemplatesRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.ListCustomVerificationEmailTemplatesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Internal.StringUtils;

type
  IListCustomVerificationEmailTemplatesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListCustomVerificationEmailTemplatesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListCustomVerificationEmailTemplatesRequest>, IListCustomVerificationEmailTemplatesRequestMarshaller)
  strict private
    class var FInstance: IListCustomVerificationEmailTemplatesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListCustomVerificationEmailTemplatesRequest): IRequest; overload;
    class function Instance: IListCustomVerificationEmailTemplatesRequestMarshaller; static;
  end;
  
implementation

{ TListCustomVerificationEmailTemplatesRequestMarshaller }

function TListCustomVerificationEmailTemplatesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListCustomVerificationEmailTemplatesRequest(AInput));
end;

function TListCustomVerificationEmailTemplatesRequestMarshaller.Marshall(PublicRequest: TListCustomVerificationEmailTemplatesRequest): IRequest;
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
  Request.ResourcePath := '/v2/email/custom-verification-email-templates';
  Request.UseQueryString := True;
  Result := Request;
end;

class constructor TListCustomVerificationEmailTemplatesRequestMarshaller.Create;
begin
  FInstance := TListCustomVerificationEmailTemplatesRequestMarshaller.Create;
end;

class function TListCustomVerificationEmailTemplatesRequestMarshaller.Instance: IListCustomVerificationEmailTemplatesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
