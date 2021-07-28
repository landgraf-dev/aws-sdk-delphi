unit AWS.SES.Transform.SetIdentityDkimEnabledRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.SetIdentityDkimEnabledRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  ISetIdentityDkimEnabledRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TSetIdentityDkimEnabledRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TSetIdentityDkimEnabledRequest>, ISetIdentityDkimEnabledRequestMarshaller)
  strict private
    class var FInstance: ISetIdentityDkimEnabledRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TSetIdentityDkimEnabledRequest): IRequest; overload;
    class function Instance: ISetIdentityDkimEnabledRequestMarshaller; static;
  end;
  
implementation

{ TSetIdentityDkimEnabledRequestMarshaller }

function TSetIdentityDkimEnabledRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TSetIdentityDkimEnabledRequest(AInput));
end;

function TSetIdentityDkimEnabledRequestMarshaller.Marshall(PublicRequest: TSetIdentityDkimEnabledRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'SetIdentityDkimEnabled');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetDkimEnabled then
      Request.Parameters.Add('DkimEnabled', TStringUtils.FromBoolean(PublicRequest.DkimEnabled));
    if PublicRequest.IsSetIdentity then
      Request.Parameters.Add('Identity', TStringUtils.Fromstring(PublicRequest.Identity));
  end;
  Result := Request;
end;

class constructor TSetIdentityDkimEnabledRequestMarshaller.Create;
begin
  FInstance := TSetIdentityDkimEnabledRequestMarshaller.Create;
end;

class function TSetIdentityDkimEnabledRequestMarshaller.Instance: ISetIdentityDkimEnabledRequestMarshaller;
begin
  Result := FInstance;
end;

end.
