unit AWS.SNS.Transform.GetSMSSandboxAccountStatusRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SNS.Model.GetSMSSandboxAccountStatusRequest, 
  AWS.Internal.DefaultRequest;

type
  IGetSMSSandboxAccountStatusRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetSMSSandboxAccountStatusRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetSMSSandboxAccountStatusRequest>, IGetSMSSandboxAccountStatusRequestMarshaller)
  strict private
    class var FInstance: IGetSMSSandboxAccountStatusRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetSMSSandboxAccountStatusRequest): IRequest; overload;
    class function Instance: IGetSMSSandboxAccountStatusRequestMarshaller; static;
  end;
  
implementation

{ TGetSMSSandboxAccountStatusRequestMarshaller }

function TGetSMSSandboxAccountStatusRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetSMSSandboxAccountStatusRequest(AInput));
end;

function TGetSMSSandboxAccountStatusRequestMarshaller.Marshall(PublicRequest: TGetSMSSandboxAccountStatusRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleNotificationService');
  Request.Parameters.Add('Action', 'GetSMSSandboxAccountStatus');
  Request.Parameters.Add('Version', '2010-03-31');
  if PublicRequest <> nil then
  begin
  end;
  Result := Request;
end;

class constructor TGetSMSSandboxAccountStatusRequestMarshaller.Create;
begin
  FInstance := TGetSMSSandboxAccountStatusRequestMarshaller.Create;
end;

class function TGetSMSSandboxAccountStatusRequestMarshaller.Instance: IGetSMSSandboxAccountStatusRequestMarshaller;
begin
  Result := FInstance;
end;

end.
