unit AWS.SNS.Transform.DeleteSMSSandboxPhoneNumberRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SNS.Model.DeleteSMSSandboxPhoneNumberRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IDeleteSMSSandboxPhoneNumberRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteSMSSandboxPhoneNumberRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteSMSSandboxPhoneNumberRequest>, IDeleteSMSSandboxPhoneNumberRequestMarshaller)
  strict private
    class var FInstance: IDeleteSMSSandboxPhoneNumberRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteSMSSandboxPhoneNumberRequest): IRequest; overload;
    class function Instance: IDeleteSMSSandboxPhoneNumberRequestMarshaller; static;
  end;
  
implementation

{ TDeleteSMSSandboxPhoneNumberRequestMarshaller }

function TDeleteSMSSandboxPhoneNumberRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteSMSSandboxPhoneNumberRequest(AInput));
end;

function TDeleteSMSSandboxPhoneNumberRequestMarshaller.Marshall(PublicRequest: TDeleteSMSSandboxPhoneNumberRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleNotificationService');
  Request.Parameters.Add('Action', 'DeleteSMSSandboxPhoneNumber');
  Request.Parameters.Add('Version', '2010-03-31');
  if PublicRequest <> nil then
    if PublicRequest.IsSetPhoneNumber then
      Request.Parameters.Add('PhoneNumber', TStringUtils.Fromstring(PublicRequest.PhoneNumber));
  Result := Request;
end;

class constructor TDeleteSMSSandboxPhoneNumberRequestMarshaller.Create;
begin
  FInstance := TDeleteSMSSandboxPhoneNumberRequestMarshaller.Create;
end;

class function TDeleteSMSSandboxPhoneNumberRequestMarshaller.Instance: IDeleteSMSSandboxPhoneNumberRequestMarshaller;
begin
  Result := FInstance;
end;

end.
