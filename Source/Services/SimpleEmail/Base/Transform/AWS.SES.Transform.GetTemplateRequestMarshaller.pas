unit AWS.SES.Transform.GetTemplateRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.GetTemplateRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IGetTemplateRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetTemplateRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetTemplateRequest>, IGetTemplateRequestMarshaller)
  strict private
    class var FInstance: IGetTemplateRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetTemplateRequest): IRequest; overload;
    class function Instance: IGetTemplateRequestMarshaller; static;
  end;
  
implementation

{ TGetTemplateRequestMarshaller }

function TGetTemplateRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetTemplateRequest(AInput));
end;

function TGetTemplateRequestMarshaller.Marshall(PublicRequest: TGetTemplateRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'GetTemplate');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
    if PublicRequest.IsSetTemplateName then
      Request.Parameters.Add('TemplateName', TStringUtils.Fromstring(PublicRequest.TemplateName));
  Result := Request;
end;

class constructor TGetTemplateRequestMarshaller.Create;
begin
  FInstance := TGetTemplateRequestMarshaller.Create;
end;

class function TGetTemplateRequestMarshaller.Instance: IGetTemplateRequestMarshaller;
begin
  Result := FInstance;
end;

end.
