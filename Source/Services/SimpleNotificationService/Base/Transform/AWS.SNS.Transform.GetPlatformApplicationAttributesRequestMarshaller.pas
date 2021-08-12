unit AWS.SNS.Transform.GetPlatformApplicationAttributesRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SNS.Model.GetPlatformApplicationAttributesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IGetPlatformApplicationAttributesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetPlatformApplicationAttributesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetPlatformApplicationAttributesRequest>, IGetPlatformApplicationAttributesRequestMarshaller)
  strict private
    class var FInstance: IGetPlatformApplicationAttributesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetPlatformApplicationAttributesRequest): IRequest; overload;
    class function Instance: IGetPlatformApplicationAttributesRequestMarshaller; static;
  end;
  
implementation

{ TGetPlatformApplicationAttributesRequestMarshaller }

function TGetPlatformApplicationAttributesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetPlatformApplicationAttributesRequest(AInput));
end;

function TGetPlatformApplicationAttributesRequestMarshaller.Marshall(PublicRequest: TGetPlatformApplicationAttributesRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleNotificationService');
  Request.Parameters.Add('Action', 'GetPlatformApplicationAttributes');
  Request.Parameters.Add('Version', '2010-03-31');
  if PublicRequest <> nil then
    if PublicRequest.IsSetPlatformApplicationArn then
      Request.Parameters.Add('PlatformApplicationArn', TStringUtils.Fromstring(PublicRequest.PlatformApplicationArn));
  Result := Request;
end;

class constructor TGetPlatformApplicationAttributesRequestMarshaller.Create;
begin
  FInstance := TGetPlatformApplicationAttributesRequestMarshaller.Create;
end;

class function TGetPlatformApplicationAttributesRequestMarshaller.Instance: IGetPlatformApplicationAttributesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
