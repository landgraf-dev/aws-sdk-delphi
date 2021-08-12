unit AWS.SNS.Transform.CreateSMSSandboxPhoneNumberRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SNS.Model.CreateSMSSandboxPhoneNumberRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  ICreateSMSSandboxPhoneNumberRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCreateSMSSandboxPhoneNumberRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCreateSMSSandboxPhoneNumberRequest>, ICreateSMSSandboxPhoneNumberRequestMarshaller)
  strict private
    class var FInstance: ICreateSMSSandboxPhoneNumberRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCreateSMSSandboxPhoneNumberRequest): IRequest; overload;
    class function Instance: ICreateSMSSandboxPhoneNumberRequestMarshaller; static;
  end;
  
implementation

{ TCreateSMSSandboxPhoneNumberRequestMarshaller }

function TCreateSMSSandboxPhoneNumberRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCreateSMSSandboxPhoneNumberRequest(AInput));
end;

function TCreateSMSSandboxPhoneNumberRequestMarshaller.Marshall(PublicRequest: TCreateSMSSandboxPhoneNumberRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleNotificationService');
  Request.Parameters.Add('Action', 'CreateSMSSandboxPhoneNumber');
  Request.Parameters.Add('Version', '2010-03-31');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetLanguageCode then
      Request.Parameters.Add('LanguageCode', PublicRequest.LanguageCode.Value);
    if PublicRequest.IsSetPhoneNumber then
      Request.Parameters.Add('PhoneNumber', TStringUtils.Fromstring(PublicRequest.PhoneNumber));
  end;
  Result := Request;
end;

class constructor TCreateSMSSandboxPhoneNumberRequestMarshaller.Create;
begin
  FInstance := TCreateSMSSandboxPhoneNumberRequestMarshaller.Create;
end;

class function TCreateSMSSandboxPhoneNumberRequestMarshaller.Instance: ICreateSMSSandboxPhoneNumberRequestMarshaller;
begin
  Result := FInstance;
end;

end.
