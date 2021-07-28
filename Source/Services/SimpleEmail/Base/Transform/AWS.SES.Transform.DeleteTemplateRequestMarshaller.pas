unit AWS.SES.Transform.DeleteTemplateRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.DeleteTemplateRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IDeleteTemplateRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteTemplateRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteTemplateRequest>, IDeleteTemplateRequestMarshaller)
  strict private
    class var FInstance: IDeleteTemplateRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteTemplateRequest): IRequest; overload;
    class function Instance: IDeleteTemplateRequestMarshaller; static;
  end;
  
implementation

{ TDeleteTemplateRequestMarshaller }

function TDeleteTemplateRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteTemplateRequest(AInput));
end;

function TDeleteTemplateRequestMarshaller.Marshall(PublicRequest: TDeleteTemplateRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'DeleteTemplate');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
    if PublicRequest.IsSetTemplateName then
      Request.Parameters.Add('TemplateName', TStringUtils.Fromstring(PublicRequest.TemplateName));
  Result := Request;
end;

class constructor TDeleteTemplateRequestMarshaller.Create;
begin
  FInstance := TDeleteTemplateRequestMarshaller.Create;
end;

class function TDeleteTemplateRequestMarshaller.Instance: IDeleteTemplateRequestMarshaller;
begin
  Result := FInstance;
end;

end.
