unit AWS.SES.Transform.GetIdentityVerificationAttributesRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.GetIdentityVerificationAttributesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IGetIdentityVerificationAttributesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetIdentityVerificationAttributesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetIdentityVerificationAttributesRequest>, IGetIdentityVerificationAttributesRequestMarshaller)
  strict private
    class var FInstance: IGetIdentityVerificationAttributesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetIdentityVerificationAttributesRequest): IRequest; overload;
    class function Instance: IGetIdentityVerificationAttributesRequestMarshaller; static;
  end;
  
implementation

{ TGetIdentityVerificationAttributesRequestMarshaller }

function TGetIdentityVerificationAttributesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetIdentityVerificationAttributesRequest(AInput));
end;

function TGetIdentityVerificationAttributesRequestMarshaller.Marshall(PublicRequest: TGetIdentityVerificationAttributesRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'GetIdentityVerificationAttributes');
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

class constructor TGetIdentityVerificationAttributesRequestMarshaller.Create;
begin
  FInstance := TGetIdentityVerificationAttributesRequestMarshaller.Create;
end;

class function TGetIdentityVerificationAttributesRequestMarshaller.Instance: IGetIdentityVerificationAttributesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
