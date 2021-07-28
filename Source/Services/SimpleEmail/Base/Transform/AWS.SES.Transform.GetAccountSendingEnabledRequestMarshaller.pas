unit AWS.SES.Transform.GetAccountSendingEnabledRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.GetAccountSendingEnabledRequest, 
  AWS.Internal.DefaultRequest;

type
  IGetAccountSendingEnabledRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetAccountSendingEnabledRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetAccountSendingEnabledRequest>, IGetAccountSendingEnabledRequestMarshaller)
  strict private
    class var FInstance: IGetAccountSendingEnabledRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetAccountSendingEnabledRequest): IRequest; overload;
    class function Instance: IGetAccountSendingEnabledRequestMarshaller; static;
  end;
  
implementation

{ TGetAccountSendingEnabledRequestMarshaller }

function TGetAccountSendingEnabledRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetAccountSendingEnabledRequest(AInput));
end;

function TGetAccountSendingEnabledRequestMarshaller.Marshall(PublicRequest: TGetAccountSendingEnabledRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'GetAccountSendingEnabled');
  Request.Parameters.Add('Version', '2010-12-01');
  Result := Request;
end;

class constructor TGetAccountSendingEnabledRequestMarshaller.Create;
begin
  FInstance := TGetAccountSendingEnabledRequestMarshaller.Create;
end;

class function TGetAccountSendingEnabledRequestMarshaller.Instance: IGetAccountSendingEnabledRequestMarshaller;
begin
  Result := FInstance;
end;

end.
