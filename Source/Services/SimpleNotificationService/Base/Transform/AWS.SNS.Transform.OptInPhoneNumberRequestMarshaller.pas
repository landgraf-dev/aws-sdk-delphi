unit AWS.SNS.Transform.OptInPhoneNumberRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SNS.Model.OptInPhoneNumberRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IOptInPhoneNumberRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TOptInPhoneNumberRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TOptInPhoneNumberRequest>, IOptInPhoneNumberRequestMarshaller)
  strict private
    class var FInstance: IOptInPhoneNumberRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TOptInPhoneNumberRequest): IRequest; overload;
    class function Instance: IOptInPhoneNumberRequestMarshaller; static;
  end;
  
implementation

{ TOptInPhoneNumberRequestMarshaller }

function TOptInPhoneNumberRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TOptInPhoneNumberRequest(AInput));
end;

function TOptInPhoneNumberRequestMarshaller.Marshall(PublicRequest: TOptInPhoneNumberRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleNotificationService');
  Request.Parameters.Add('Action', 'OptInPhoneNumber');
  Request.Parameters.Add('Version', '2010-03-31');
  if PublicRequest <> nil then
    if PublicRequest.IsSetPhoneNumber then
      Request.Parameters.Add('phoneNumber', TStringUtils.Fromstring(PublicRequest.PhoneNumber));
  Result := Request;
end;

class constructor TOptInPhoneNumberRequestMarshaller.Create;
begin
  FInstance := TOptInPhoneNumberRequestMarshaller.Create;
end;

class function TOptInPhoneNumberRequestMarshaller.Instance: IOptInPhoneNumberRequestMarshaller;
begin
  Result := FInstance;
end;

end.
