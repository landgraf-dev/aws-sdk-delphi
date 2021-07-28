unit AWS.SES.Transform.DeleteIdentityRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.DeleteIdentityRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IDeleteIdentityRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteIdentityRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteIdentityRequest>, IDeleteIdentityRequestMarshaller)
  strict private
    class var FInstance: IDeleteIdentityRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteIdentityRequest): IRequest; overload;
    class function Instance: IDeleteIdentityRequestMarshaller; static;
  end;
  
implementation

{ TDeleteIdentityRequestMarshaller }

function TDeleteIdentityRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteIdentityRequest(AInput));
end;

function TDeleteIdentityRequestMarshaller.Marshall(PublicRequest: TDeleteIdentityRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'DeleteIdentity');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
    if PublicRequest.IsSetIdentity then
      Request.Parameters.Add('Identity', TStringUtils.Fromstring(PublicRequest.Identity));
  Result := Request;
end;

class constructor TDeleteIdentityRequestMarshaller.Create;
begin
  FInstance := TDeleteIdentityRequestMarshaller.Create;
end;

class function TDeleteIdentityRequestMarshaller.Instance: IDeleteIdentityRequestMarshaller;
begin
  Result := FInstance;
end;

end.
