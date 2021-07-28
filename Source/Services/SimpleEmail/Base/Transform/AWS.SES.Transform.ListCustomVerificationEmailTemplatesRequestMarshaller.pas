unit AWS.SES.Transform.ListCustomVerificationEmailTemplatesRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.ListCustomVerificationEmailTemplatesRequest, 
  AWS.Internal.DefaultRequest, 
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
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'ListCustomVerificationEmailTemplates');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetMaxResults then
      Request.Parameters.Add('MaxResults', TStringUtils.FromInteger(PublicRequest.MaxResults));
    if PublicRequest.IsSetNextToken then
      Request.Parameters.Add('NextToken', TStringUtils.Fromstring(PublicRequest.NextToken));
  end;
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
