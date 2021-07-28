unit AWS.SES.Transform.GetSendQuotaRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.GetSendQuotaRequest, 
  AWS.Internal.DefaultRequest;

type
  IGetSendQuotaRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetSendQuotaRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetSendQuotaRequest>, IGetSendQuotaRequestMarshaller)
  strict private
    class var FInstance: IGetSendQuotaRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetSendQuotaRequest): IRequest; overload;
    class function Instance: IGetSendQuotaRequestMarshaller; static;
  end;
  
implementation

{ TGetSendQuotaRequestMarshaller }

function TGetSendQuotaRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetSendQuotaRequest(AInput));
end;

function TGetSendQuotaRequestMarshaller.Marshall(PublicRequest: TGetSendQuotaRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'GetSendQuota');
  Request.Parameters.Add('Version', '2010-12-01');
  Result := Request;
end;

class constructor TGetSendQuotaRequestMarshaller.Create;
begin
  FInstance := TGetSendQuotaRequestMarshaller.Create;
end;

class function TGetSendQuotaRequestMarshaller.Instance: IGetSendQuotaRequestMarshaller;
begin
  Result := FInstance;
end;

end.
