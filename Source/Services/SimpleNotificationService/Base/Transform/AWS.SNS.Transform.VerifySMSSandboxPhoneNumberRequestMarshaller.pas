unit AWS.SNS.Transform.VerifySMSSandboxPhoneNumberRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SNS.Model.VerifySMSSandboxPhoneNumberRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IVerifySMSSandboxPhoneNumberRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TVerifySMSSandboxPhoneNumberRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TVerifySMSSandboxPhoneNumberRequest>, IVerifySMSSandboxPhoneNumberRequestMarshaller)
  strict private
    class var FInstance: IVerifySMSSandboxPhoneNumberRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TVerifySMSSandboxPhoneNumberRequest): IRequest; overload;
    class function Instance: IVerifySMSSandboxPhoneNumberRequestMarshaller; static;
  end;
  
implementation

{ TVerifySMSSandboxPhoneNumberRequestMarshaller }

function TVerifySMSSandboxPhoneNumberRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TVerifySMSSandboxPhoneNumberRequest(AInput));
end;

function TVerifySMSSandboxPhoneNumberRequestMarshaller.Marshall(PublicRequest: TVerifySMSSandboxPhoneNumberRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleNotificationService');
  Request.Parameters.Add('Action', 'VerifySMSSandboxPhoneNumber');
  Request.Parameters.Add('Version', '2010-03-31');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetOneTimePassword then
      Request.Parameters.Add('OneTimePassword', TStringUtils.Fromstring(PublicRequest.OneTimePassword));
    if PublicRequest.IsSetPhoneNumber then
      Request.Parameters.Add('PhoneNumber', TStringUtils.Fromstring(PublicRequest.PhoneNumber));
  end;
  Result := Request;
end;

class constructor TVerifySMSSandboxPhoneNumberRequestMarshaller.Create;
begin
  FInstance := TVerifySMSSandboxPhoneNumberRequestMarshaller.Create;
end;

class function TVerifySMSSandboxPhoneNumberRequestMarshaller.Instance: IVerifySMSSandboxPhoneNumberRequestMarshaller;
begin
  Result := FInstance;
end;

end.
