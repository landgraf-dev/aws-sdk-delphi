unit AWS.SNS.Transform.GetEndpointAttributesRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SNS.Model.GetEndpointAttributesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IGetEndpointAttributesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetEndpointAttributesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetEndpointAttributesRequest>, IGetEndpointAttributesRequestMarshaller)
  strict private
    class var FInstance: IGetEndpointAttributesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetEndpointAttributesRequest): IRequest; overload;
    class function Instance: IGetEndpointAttributesRequestMarshaller; static;
  end;
  
implementation

{ TGetEndpointAttributesRequestMarshaller }

function TGetEndpointAttributesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetEndpointAttributesRequest(AInput));
end;

function TGetEndpointAttributesRequestMarshaller.Marshall(PublicRequest: TGetEndpointAttributesRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleNotificationService');
  Request.Parameters.Add('Action', 'GetEndpointAttributes');
  Request.Parameters.Add('Version', '2010-03-31');
  if PublicRequest <> nil then
    if PublicRequest.IsSetEndpointArn then
      Request.Parameters.Add('EndpointArn', TStringUtils.Fromstring(PublicRequest.EndpointArn));
  Result := Request;
end;

class constructor TGetEndpointAttributesRequestMarshaller.Create;
begin
  FInstance := TGetEndpointAttributesRequestMarshaller.Create;
end;

class function TGetEndpointAttributesRequestMarshaller.Instance: IGetEndpointAttributesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
