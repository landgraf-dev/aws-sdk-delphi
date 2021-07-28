unit AWS.SES.Transform.GetIdentityMailFromDomainAttributesRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.GetIdentityMailFromDomainAttributesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IGetIdentityMailFromDomainAttributesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetIdentityMailFromDomainAttributesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetIdentityMailFromDomainAttributesRequest>, IGetIdentityMailFromDomainAttributesRequestMarshaller)
  strict private
    class var FInstance: IGetIdentityMailFromDomainAttributesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetIdentityMailFromDomainAttributesRequest): IRequest; overload;
    class function Instance: IGetIdentityMailFromDomainAttributesRequestMarshaller; static;
  end;
  
implementation

{ TGetIdentityMailFromDomainAttributesRequestMarshaller }

function TGetIdentityMailFromDomainAttributesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetIdentityMailFromDomainAttributesRequest(AInput));
end;

function TGetIdentityMailFromDomainAttributesRequestMarshaller.Marshall(PublicRequest: TGetIdentityMailFromDomainAttributesRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'GetIdentityMailFromDomainAttributes');
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

class constructor TGetIdentityMailFromDomainAttributesRequestMarshaller.Create;
begin
  FInstance := TGetIdentityMailFromDomainAttributesRequestMarshaller.Create;
end;

class function TGetIdentityMailFromDomainAttributesRequestMarshaller.Instance: IGetIdentityMailFromDomainAttributesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
