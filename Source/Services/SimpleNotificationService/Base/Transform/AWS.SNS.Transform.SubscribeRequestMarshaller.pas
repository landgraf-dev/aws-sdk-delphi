unit AWS.SNS.Transform.SubscribeRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SNS.Model.SubscribeRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  ISubscribeRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TSubscribeRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TSubscribeRequest>, ISubscribeRequestMarshaller)
  strict private
    class var FInstance: ISubscribeRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TSubscribeRequest): IRequest; overload;
    class function Instance: ISubscribeRequestMarshaller; static;
  end;
  
implementation

{ TSubscribeRequestMarshaller }

function TSubscribeRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TSubscribeRequest(AInput));
end;

function TSubscribeRequestMarshaller.Marshall(PublicRequest: TSubscribeRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleNotificationService');
  Request.Parameters.Add('Action', 'Subscribe');
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
    if PublicRequest.IsSetEndpoint then
      Request.Parameters.Add('Endpoint', TStringUtils.Fromstring(PublicRequest.Endpoint));
    if PublicRequest.IsSetProtocol then
      Request.Parameters.Add('Protocol', TStringUtils.Fromstring(PublicRequest.Protocol));
    if PublicRequest.IsSetReturnSubscriptionArn then
      Request.Parameters.Add('ReturnSubscriptionArn', TStringUtils.FromBoolean(PublicRequest.ReturnSubscriptionArn));
    if PublicRequest.IsSetTopicArn then
      Request.Parameters.Add('TopicArn', TStringUtils.Fromstring(PublicRequest.TopicArn));
  end;
  Result := Request;
end;

class constructor TSubscribeRequestMarshaller.Create;
begin
  FInstance := TSubscribeRequestMarshaller.Create;
end;

class function TSubscribeRequestMarshaller.Instance: ISubscribeRequestMarshaller;
begin
  Result := FInstance;
end;

end.
