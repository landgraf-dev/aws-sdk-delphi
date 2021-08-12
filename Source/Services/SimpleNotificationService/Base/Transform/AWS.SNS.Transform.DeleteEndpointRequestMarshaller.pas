unit AWS.SNS.Transform.DeleteEndpointRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SNS.Model.DeleteEndpointRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IDeleteEndpointRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteEndpointRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteEndpointRequest>, IDeleteEndpointRequestMarshaller)
  strict private
    class var FInstance: IDeleteEndpointRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteEndpointRequest): IRequest; overload;
    class function Instance: IDeleteEndpointRequestMarshaller; static;
  end;
  
implementation

{ TDeleteEndpointRequestMarshaller }

function TDeleteEndpointRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteEndpointRequest(AInput));
end;

function TDeleteEndpointRequestMarshaller.Marshall(PublicRequest: TDeleteEndpointRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleNotificationService');
  Request.Parameters.Add('Action', 'DeleteEndpoint');
  Request.Parameters.Add('Version', '2010-03-31');
  if PublicRequest <> nil then
    if PublicRequest.IsSetEndpointArn then
      Request.Parameters.Add('EndpointArn', TStringUtils.Fromstring(PublicRequest.EndpointArn));
  Result := Request;
end;

class constructor TDeleteEndpointRequestMarshaller.Create;
begin
  FInstance := TDeleteEndpointRequestMarshaller.Create;
end;

class function TDeleteEndpointRequestMarshaller.Instance: IDeleteEndpointRequestMarshaller;
begin
  Result := FInstance;
end;

end.
