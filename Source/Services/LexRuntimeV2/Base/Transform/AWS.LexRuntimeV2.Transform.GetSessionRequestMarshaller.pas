unit AWS.LexRuntimeV2.Transform.GetSessionRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.LexRuntimeV2.Model.GetSessionRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.LexRuntimeV2.Exception, 
  AWS.Internal.StringUtils;

type
  IGetSessionRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetSessionRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetSessionRequest>, IGetSessionRequestMarshaller)
  strict private
    class var FInstance: IGetSessionRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetSessionRequest): IRequest; overload;
    class function Instance: IGetSessionRequestMarshaller; static;
  end;
  
implementation

{ TGetSessionRequestMarshaller }

function TGetSessionRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetSessionRequest(AInput));
end;

function TGetSessionRequestMarshaller.Marshall(PublicRequest: TGetSessionRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.LexRuntimeV2');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2020-08-07');
  Request.HttpMethod := 'GET';
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

class constructor TGetSessionRequestMarshaller.Create;
begin
  FInstance := TGetSessionRequestMarshaller.Create;
end;

class function TGetSessionRequestMarshaller.Instance: IGetSessionRequestMarshaller;
begin
  Result := FInstance;
end;

end.
