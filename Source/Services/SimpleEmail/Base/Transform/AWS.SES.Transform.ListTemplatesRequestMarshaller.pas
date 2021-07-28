unit AWS.SES.Transform.ListTemplatesRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.ListTemplatesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IListTemplatesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListTemplatesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListTemplatesRequest>, IListTemplatesRequestMarshaller)
  strict private
    class var FInstance: IListTemplatesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListTemplatesRequest): IRequest; overload;
    class function Instance: IListTemplatesRequestMarshaller; static;
  end;
  
implementation

{ TListTemplatesRequestMarshaller }

function TListTemplatesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListTemplatesRequest(AInput));
end;

function TListTemplatesRequestMarshaller.Marshall(PublicRequest: TListTemplatesRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'ListTemplates');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetMaxItems then
      Request.Parameters.Add('MaxItems', TStringUtils.FromInteger(PublicRequest.MaxItems));
    if PublicRequest.IsSetNextToken then
      Request.Parameters.Add('NextToken', TStringUtils.Fromstring(PublicRequest.NextToken));
  end;
  Result := Request;
end;

class constructor TListTemplatesRequestMarshaller.Create;
begin
  FInstance := TListTemplatesRequestMarshaller.Create;
end;

class function TListTemplatesRequestMarshaller.Instance: IListTemplatesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
