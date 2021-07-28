unit AWS.SES.Transform.ListIdentityPoliciesRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.ListIdentityPoliciesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IListIdentityPoliciesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListIdentityPoliciesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListIdentityPoliciesRequest>, IListIdentityPoliciesRequestMarshaller)
  strict private
    class var FInstance: IListIdentityPoliciesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListIdentityPoliciesRequest): IRequest; overload;
    class function Instance: IListIdentityPoliciesRequestMarshaller; static;
  end;
  
implementation

{ TListIdentityPoliciesRequestMarshaller }

function TListIdentityPoliciesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListIdentityPoliciesRequest(AInput));
end;

function TListIdentityPoliciesRequestMarshaller.Marshall(PublicRequest: TListIdentityPoliciesRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'ListIdentityPolicies');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
    if PublicRequest.IsSetIdentity then
      Request.Parameters.Add('Identity', TStringUtils.Fromstring(PublicRequest.Identity));
  Result := Request;
end;

class constructor TListIdentityPoliciesRequestMarshaller.Create;
begin
  FInstance := TListIdentityPoliciesRequestMarshaller.Create;
end;

class function TListIdentityPoliciesRequestMarshaller.Instance: IListIdentityPoliciesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
