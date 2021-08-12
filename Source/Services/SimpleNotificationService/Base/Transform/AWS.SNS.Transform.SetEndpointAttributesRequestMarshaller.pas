unit AWS.SNS.Transform.SetEndpointAttributesRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SNS.Model.SetEndpointAttributesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  ISetEndpointAttributesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TSetEndpointAttributesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TSetEndpointAttributesRequest>, ISetEndpointAttributesRequestMarshaller)
  strict private
    class var FInstance: ISetEndpointAttributesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TSetEndpointAttributesRequest): IRequest; overload;
    class function Instance: ISetEndpointAttributesRequestMarshaller; static;
  end;
  
implementation

{ TSetEndpointAttributesRequestMarshaller }

function TSetEndpointAttributesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TSetEndpointAttributesRequest(AInput));
end;

function TSetEndpointAttributesRequestMarshaller.Marshall(PublicRequest: TSetEndpointAttributesRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleNotificationService');
  Request.Parameters.Add('Action', 'SetEndpointAttributes');
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
    if PublicRequest.IsSetEndpointArn then
      Request.Parameters.Add('EndpointArn', TStringUtils.Fromstring(PublicRequest.EndpointArn));
  end;
  Result := Request;
end;

class constructor TSetEndpointAttributesRequestMarshaller.Create;
begin
  FInstance := TSetEndpointAttributesRequestMarshaller.Create;
end;

class function TSetEndpointAttributesRequestMarshaller.Instance: ISetEndpointAttributesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
