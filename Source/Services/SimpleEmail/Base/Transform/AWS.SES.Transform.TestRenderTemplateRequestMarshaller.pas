unit AWS.SES.Transform.TestRenderTemplateRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.TestRenderTemplateRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  ITestRenderTemplateRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TTestRenderTemplateRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TTestRenderTemplateRequest>, ITestRenderTemplateRequestMarshaller)
  strict private
    class var FInstance: ITestRenderTemplateRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TTestRenderTemplateRequest): IRequest; overload;
    class function Instance: ITestRenderTemplateRequestMarshaller; static;
  end;
  
implementation

{ TTestRenderTemplateRequestMarshaller }

function TTestRenderTemplateRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TTestRenderTemplateRequest(AInput));
end;

function TTestRenderTemplateRequestMarshaller.Marshall(PublicRequest: TTestRenderTemplateRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'TestRenderTemplate');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetTemplateData then
      Request.Parameters.Add('TemplateData', TStringUtils.Fromstring(PublicRequest.TemplateData));
    if PublicRequest.IsSetTemplateName then
      Request.Parameters.Add('TemplateName', TStringUtils.Fromstring(PublicRequest.TemplateName));
  end;
  Result := Request;
end;

class constructor TTestRenderTemplateRequestMarshaller.Create;
begin
  FInstance := TTestRenderTemplateRequestMarshaller.Create;
end;

class function TTestRenderTemplateRequestMarshaller.Instance: ITestRenderTemplateRequestMarshaller;
begin
  Result := FInstance;
end;

end.
