unit AWS.SES.Transform.UpdateAccountSendingEnabledRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.UpdateAccountSendingEnabledRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IUpdateAccountSendingEnabledRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TUpdateAccountSendingEnabledRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TUpdateAccountSendingEnabledRequest>, IUpdateAccountSendingEnabledRequestMarshaller)
  strict private
    class var FInstance: IUpdateAccountSendingEnabledRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TUpdateAccountSendingEnabledRequest): IRequest; overload;
    class function Instance: IUpdateAccountSendingEnabledRequestMarshaller; static;
  end;
  
implementation

{ TUpdateAccountSendingEnabledRequestMarshaller }

function TUpdateAccountSendingEnabledRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TUpdateAccountSendingEnabledRequest(AInput));
end;

function TUpdateAccountSendingEnabledRequestMarshaller.Marshall(PublicRequest: TUpdateAccountSendingEnabledRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'UpdateAccountSendingEnabled');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
    if PublicRequest.IsSetEnabled then
      Request.Parameters.Add('Enabled', TStringUtils.FromBoolean(PublicRequest.Enabled));
  Result := Request;
end;

class constructor TUpdateAccountSendingEnabledRequestMarshaller.Create;
begin
  FInstance := TUpdateAccountSendingEnabledRequestMarshaller.Create;
end;

class function TUpdateAccountSendingEnabledRequestMarshaller.Instance: IUpdateAccountSendingEnabledRequestMarshaller;
begin
  Result := FInstance;
end;

end.
