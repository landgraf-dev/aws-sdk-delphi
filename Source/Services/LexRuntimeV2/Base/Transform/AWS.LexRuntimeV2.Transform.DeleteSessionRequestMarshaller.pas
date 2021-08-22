unit AWS.LexRuntimeV2.Transform.DeleteSessionRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.LexRuntimeV2.Model.DeleteSessionRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.LexRuntimeV2.Exception, 
  AWS.Internal.StringUtils;

type
  IDeleteSessionRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteSessionRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteSessionRequest>, IDeleteSessionRequestMarshaller)
  strict private
    class var FInstance: IDeleteSessionRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteSessionRequest): IRequest; overload;
    class function Instance: IDeleteSessionRequestMarshaller; static;
  end;
  
implementation

{ TDeleteSessionRequestMarshaller }

function TDeleteSessionRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteSessionRequest(AInput));
end;

function TDeleteSessionRequestMarshaller.Marshall(PublicRequest: TDeleteSessionRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.LexRuntimeV2');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2020-08-07');
  Request.HttpMethod := 'DELETE';
  if not PublicRequest.IsSetBotAliasId then
    raise EAmazonLexRuntimeV2Exception.Create('Request object does not have required field BotAliasId set');
  Request.AddPathResource('{botAliasId}', TStringUtils.Fromstring(PublicRequest.BotAliasId));
  if not PublicRequest.IsSetBotId then
    raise EAmazonLexRuntimeV2Exception.Create('Request object does not have required field BotId set');
  Request.AddPathResource('{botId}', TStringUtils.Fromstring(PublicRequest.BotId));
  if not PublicRequest.IsSetLocaleId then
    raise EAmazonLexRuntimeV2Exception.Create('Request object does not have required field LocaleId set');
  Request.AddPathResource('{localeId}', TStringUtils.Fromstring(PublicRequest.LocaleId));
  if not PublicRequest.IsSetSessionId then
    raise EAmazonLexRuntimeV2Exception.Create('Request object does not have required field SessionId set');
  Request.AddPathResource('{sessionId}', TStringUtils.Fromstring(PublicRequest.SessionId));
  Request.ResourcePath := '/bots/{botId}/botAliases/{botAliasId}/botLocales/{localeId}/sessions/{sessionId}';
  Result := Request;
end;

class constructor TDeleteSessionRequestMarshaller.Create;
begin
  FInstance := TDeleteSessionRequestMarshaller.Create;
end;

class function TDeleteSessionRequestMarshaller.Instance: IDeleteSessionRequestMarshaller;
begin
  Result := FInstance;
end;

end.
