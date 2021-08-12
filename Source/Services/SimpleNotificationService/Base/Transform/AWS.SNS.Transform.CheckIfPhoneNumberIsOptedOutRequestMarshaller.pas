unit AWS.SNS.Transform.CheckIfPhoneNumberIsOptedOutRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SNS.Model.CheckIfPhoneNumberIsOptedOutRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  ICheckIfPhoneNumberIsOptedOutRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCheckIfPhoneNumberIsOptedOutRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCheckIfPhoneNumberIsOptedOutRequest>, ICheckIfPhoneNumberIsOptedOutRequestMarshaller)
  strict private
    class var FInstance: ICheckIfPhoneNumberIsOptedOutRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCheckIfPhoneNumberIsOptedOutRequest): IRequest; overload;
    class function Instance: ICheckIfPhoneNumberIsOptedOutRequestMarshaller; static;
  end;
  
implementation

{ TCheckIfPhoneNumberIsOptedOutRequestMarshaller }

function TCheckIfPhoneNumberIsOptedOutRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCheckIfPhoneNumberIsOptedOutRequest(AInput));
end;

function TCheckIfPhoneNumberIsOptedOutRequestMarshaller.Marshall(PublicRequest: TCheckIfPhoneNumberIsOptedOutRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleNotificationService');
  Request.Parameters.Add('Action', 'CheckIfPhoneNumberIsOptedOut');
  Request.Parameters.Add('Version', '2010-03-31');
  if PublicRequest <> nil then
    if PublicRequest.IsSetPhoneNumber then
      Request.Parameters.Add('phoneNumber', TStringUtils.Fromstring(PublicRequest.PhoneNumber));
  Result := Request;
end;

class constructor TCheckIfPhoneNumberIsOptedOutRequestMarshaller.Create;
begin
  FInstance := TCheckIfPhoneNumberIsOptedOutRequestMarshaller.Create;
end;

class function TCheckIfPhoneNumberIsOptedOutRequestMarshaller.Instance: ICheckIfPhoneNumberIsOptedOutRequestMarshaller;
begin
  Result := FInstance;
end;

end.
