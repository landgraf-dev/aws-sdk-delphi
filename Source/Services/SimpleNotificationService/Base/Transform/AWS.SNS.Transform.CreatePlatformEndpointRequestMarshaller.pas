unit AWS.SNS.Transform.CreatePlatformEndpointRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SNS.Model.CreatePlatformEndpointRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  ICreatePlatformEndpointRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCreatePlatformEndpointRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCreatePlatformEndpointRequest>, ICreatePlatformEndpointRequestMarshaller)
  strict private
    class var FInstance: ICreatePlatformEndpointRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCreatePlatformEndpointRequest): IRequest; overload;
    class function Instance: ICreatePlatformEndpointRequestMarshaller; static;
  end;
  
implementation

{ TCreatePlatformEndpointRequestMarshaller }

function TCreatePlatformEndpointRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCreatePlatformEndpointRequest(AInput));
end;

function TCreatePlatformEndpointRequestMarshaller.Marshall(PublicRequest: TCreatePlatformEndpointRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleNotificationService');
  Request.Parameters.Add('Action', 'CreatePlatformEndpoint');
  Request.Parameters.Add('Version', '2010-03-31');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetAttributes then
    begin
      var mapIndex: Integer := 1;
      for var key in PublicRequest.Attributes.Keys do
      begin
        var value: string;
        var hasValue: Boolean;
        hasValue := PublicRequest.Attributes.TryGetValue(key, value);
        Request.Parameters.Add('Attributes' + '.' + 'entry' + '.' + IntToStr(mapIndex) + '.' + 'key', TStringUtils.Fromstring(key));
        if hasValue then
          Request.Parameters.Add('Attributes' + '.' + 'entry' + '.' + IntToStr(mapIndex) + '.' + 'value', TStringUtils.Fromstring(value));
        Inc(mapIndex);
      end;
    end;
    if PublicRequest.IsSetCustomUserData then
      Request.Parameters.Add('CustomUserData', TStringUtils.Fromstring(PublicRequest.CustomUserData));
    if PublicRequest.IsSetPlatformApplicationArn then
      Request.Parameters.Add('PlatformApplicationArn', TStringUtils.Fromstring(PublicRequest.PlatformApplicationArn));
    if PublicRequest.IsSetToken then
      Request.Parameters.Add('Token', TStringUtils.Fromstring(PublicRequest.Token));
  end;
  Result := Request;
end;

class constructor TCreatePlatformEndpointRequestMarshaller.Create;
begin
  FInstance := TCreatePlatformEndpointRequestMarshaller.Create;
end;

class function TCreatePlatformEndpointRequestMarshaller.Instance: ICreatePlatformEndpointRequestMarshaller;
begin
  Result := FInstance;
end;

end.
