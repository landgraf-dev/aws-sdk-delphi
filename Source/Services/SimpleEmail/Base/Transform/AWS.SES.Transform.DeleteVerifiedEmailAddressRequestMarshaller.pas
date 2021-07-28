unit AWS.SES.Transform.DeleteVerifiedEmailAddressRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.DeleteVerifiedEmailAddressRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IDeleteVerifiedEmailAddressRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteVerifiedEmailAddressRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteVerifiedEmailAddressRequest>, IDeleteVerifiedEmailAddressRequestMarshaller)
  strict private
    class var FInstance: IDeleteVerifiedEmailAddressRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteVerifiedEmailAddressRequest): IRequest; overload;
    class function Instance: IDeleteVerifiedEmailAddressRequestMarshaller; static;
  end;
  
implementation

{ TDeleteVerifiedEmailAddressRequestMarshaller }

function TDeleteVerifiedEmailAddressRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteVerifiedEmailAddressRequest(AInput));
end;

function TDeleteVerifiedEmailAddressRequestMarshaller.Marshall(PublicRequest: TDeleteVerifiedEmailAddressRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'DeleteVerifiedEmailAddress');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
    if PublicRequest.IsSetEmailAddress then
      Request.Parameters.Add('EmailAddress', TStringUtils.Fromstring(PublicRequest.EmailAddress));
  Result := Request;
end;

class constructor TDeleteVerifiedEmailAddressRequestMarshaller.Create;
begin
  FInstance := TDeleteVerifiedEmailAddressRequestMarshaller.Create;
end;

class function TDeleteVerifiedEmailAddressRequestMarshaller.Instance: IDeleteVerifiedEmailAddressRequestMarshaller;
begin
  Result := FInstance;
end;

end.
