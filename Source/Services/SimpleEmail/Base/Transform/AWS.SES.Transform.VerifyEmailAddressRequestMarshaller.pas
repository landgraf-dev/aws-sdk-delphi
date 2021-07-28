unit AWS.SES.Transform.VerifyEmailAddressRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.VerifyEmailAddressRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IVerifyEmailAddressRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TVerifyEmailAddressRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TVerifyEmailAddressRequest>, IVerifyEmailAddressRequestMarshaller)
  strict private
    class var FInstance: IVerifyEmailAddressRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TVerifyEmailAddressRequest): IRequest; overload;
    class function Instance: IVerifyEmailAddressRequestMarshaller; static;
  end;
  
implementation

{ TVerifyEmailAddressRequestMarshaller }

function TVerifyEmailAddressRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TVerifyEmailAddressRequest(AInput));
end;

function TVerifyEmailAddressRequestMarshaller.Marshall(PublicRequest: TVerifyEmailAddressRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'VerifyEmailAddress');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
    if PublicRequest.IsSetEmailAddress then
      Request.Parameters.Add('EmailAddress', TStringUtils.Fromstring(PublicRequest.EmailAddress));
  Result := Request;
end;

class constructor TVerifyEmailAddressRequestMarshaller.Create;
begin
  FInstance := TVerifyEmailAddressRequestMarshaller.Create;
end;

class function TVerifyEmailAddressRequestMarshaller.Instance: IVerifyEmailAddressRequestMarshaller;
begin
  Result := FInstance;
end;

end.
