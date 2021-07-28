unit AWS.SES.Transform.GetIdentityDkimAttributesRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.GetIdentityDkimAttributesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IGetIdentityDkimAttributesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetIdentityDkimAttributesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetIdentityDkimAttributesRequest>, IGetIdentityDkimAttributesRequestMarshaller)
  strict private
    class var FInstance: IGetIdentityDkimAttributesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetIdentityDkimAttributesRequest): IRequest; overload;
    class function Instance: IGetIdentityDkimAttributesRequestMarshaller; static;
  end;
  
implementation

{ TGetIdentityDkimAttributesRequestMarshaller }

function TGetIdentityDkimAttributesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetIdentityDkimAttributesRequest(AInput));
end;

function TGetIdentityDkimAttributesRequestMarshaller.Marshall(PublicRequest: TGetIdentityDkimAttributesRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'GetIdentityDkimAttributes');
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

class constructor TGetIdentityDkimAttributesRequestMarshaller.Create;
begin
  FInstance := TGetIdentityDkimAttributesRequestMarshaller.Create;
end;

class function TGetIdentityDkimAttributesRequestMarshaller.Instance: IGetIdentityDkimAttributesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
