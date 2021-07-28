unit AWS.SES.Transform.GetIdentityPoliciesRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.GetIdentityPoliciesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IGetIdentityPoliciesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetIdentityPoliciesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetIdentityPoliciesRequest>, IGetIdentityPoliciesRequestMarshaller)
  strict private
    class var FInstance: IGetIdentityPoliciesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetIdentityPoliciesRequest): IRequest; overload;
    class function Instance: IGetIdentityPoliciesRequestMarshaller; static;
  end;
  
implementation

{ TGetIdentityPoliciesRequestMarshaller }

function TGetIdentityPoliciesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetIdentityPoliciesRequest(AInput));
end;

function TGetIdentityPoliciesRequestMarshaller.Marshall(PublicRequest: TGetIdentityPoliciesRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'GetIdentityPolicies');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetIdentity then
      Request.Parameters.Add('Identity', TStringUtils.Fromstring(PublicRequest.Identity));
    if PublicRequest.IsSetPolicyNames then
    begin
      var PublicRequestlistValueIndex: Integer := 1;
      for var PublicRequestlistValue in PublicRequest.PolicyNames do
      begin
        Request.Parameters.Add('PolicyNames' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueIndex), TStringUtils.Fromstring(PublicRequestlistValue));
        Inc(PublicRequestlistValueIndex);
      end;
    end;
  end;
  Result := Request;
end;

class constructor TGetIdentityPoliciesRequestMarshaller.Create;
begin
  FInstance := TGetIdentityPoliciesRequestMarshaller.Create;
end;

class function TGetIdentityPoliciesRequestMarshaller.Instance: IGetIdentityPoliciesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
