unit AWS.SES.Transform.VerifyDomainDkimRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.VerifyDomainDkimRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IVerifyDomainDkimRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TVerifyDomainDkimRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TVerifyDomainDkimRequest>, IVerifyDomainDkimRequestMarshaller)
  strict private
    class var FInstance: IVerifyDomainDkimRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TVerifyDomainDkimRequest): IRequest; overload;
    class function Instance: IVerifyDomainDkimRequestMarshaller; static;
  end;
  
implementation

{ TVerifyDomainDkimRequestMarshaller }

function TVerifyDomainDkimRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TVerifyDomainDkimRequest(AInput));
end;

function TVerifyDomainDkimRequestMarshaller.Marshall(PublicRequest: TVerifyDomainDkimRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'VerifyDomainDkim');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
    if PublicRequest.IsSetDomain then
      Request.Parameters.Add('Domain', TStringUtils.Fromstring(PublicRequest.Domain));
  Result := Request;
end;

class constructor TVerifyDomainDkimRequestMarshaller.Create;
begin
  FInstance := TVerifyDomainDkimRequestMarshaller.Create;
end;

class function TVerifyDomainDkimRequestMarshaller.Instance: IVerifyDomainDkimRequestMarshaller;
begin
  Result := FInstance;
end;

end.
