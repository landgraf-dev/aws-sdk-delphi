unit AWS.SES.Transform.GetIdentityNotificationAttributesRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.GetIdentityNotificationAttributesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IGetIdentityNotificationAttributesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetIdentityNotificationAttributesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetIdentityNotificationAttributesRequest>, IGetIdentityNotificationAttributesRequestMarshaller)
  strict private
    class var FInstance: IGetIdentityNotificationAttributesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetIdentityNotificationAttributesRequest): IRequest; overload;
    class function Instance: IGetIdentityNotificationAttributesRequestMarshaller; static;
  end;
  
implementation

{ TGetIdentityNotificationAttributesRequestMarshaller }

function TGetIdentityNotificationAttributesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetIdentityNotificationAttributesRequest(AInput));
end;

function TGetIdentityNotificationAttributesRequestMarshaller.Marshall(PublicRequest: TGetIdentityNotificationAttributesRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'GetIdentityNotificationAttributes');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
    if PublicRequest.IsSetIdentities then
    begin
      var PublicRequestlistValueIndex: Integer := 1;
      for var PublicRequestlistValue in PublicRequest.Identities do
      begin
        Request.Parameters.Add('Identities' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueIndex), TStringUtils.Fromstring(PublicRequestlistValue));
        Inc(PublicRequestlistValueIndex);
      end;
    end;
  Result := Request;
end;

class constructor TGetIdentityNotificationAttributesRequestMarshaller.Create;
begin
  FInstance := TGetIdentityNotificationAttributesRequestMarshaller.Create;
end;

class function TGetIdentityNotificationAttributesRequestMarshaller.Instance: IGetIdentityNotificationAttributesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
