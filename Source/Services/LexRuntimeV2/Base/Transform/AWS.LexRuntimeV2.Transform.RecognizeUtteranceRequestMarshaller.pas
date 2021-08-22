unit AWS.LexRuntimeV2.Transform.RecognizeUtteranceRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Util.Streams, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.LexRuntimeV2.Model.RecognizeUtteranceRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.LexRuntimeV2.Exception, 
  AWS.Internal.StringUtils;

type
  IRecognizeUtteranceRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TRecognizeUtteranceRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TRecognizeUtteranceRequest>, IRecognizeUtteranceRequestMarshaller)
  strict private
    class var FInstance: IRecognizeUtteranceRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TRecognizeUtteranceRequest): IRequest; overload;
    class function Instance: IRecognizeUtteranceRequestMarshaller; static;
  end;
  
implementation

{ TRecognizeUtteranceRequestMarshaller }

function TRecognizeUtteranceRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TRecognizeUtteranceRequest(AInput));
end;

function TRecognizeUtteranceRequestMarshaller.Marshall(PublicRequest: TRecognizeUtteranceRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.LexRuntimeV2');
  Request.Headers.AddOrSetValue('Content-Type', 'application/json');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2020-08-07');
  Request.HttpMethod := 'POST';
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
  Request.ResourcePath := '/bots/{botId}/botAliases/{botAliasId}/botLocales/{localeId}/sessions/{sessionId}/utterance';
  if PublicRequest.InputStream <> nil then
  begin
    Request.ContentStream := PublicRequest.InputStream;
    Request.OwnsContentStream := False;
  end
  else
  begin
    Request.ContentStream := TBytesStream.Create;
    Request.OwnsContentStream := True;
  end;
  if CanSeek(Request.ContentStream) then
    Request.Headers.AddOrSetValue(THeaderKeys.ContentLengthHeader, IntToStr(Request.ContentStream.Size))
  else
    Request.Headers.AddOrSetValue(THeaderKeys.TransferEncodingHeader, 'chunked');
  Request.Headers.AddOrSetValue(THeaderKeys.ContentTypeHeader, 'binary/octet-stream');
  if PublicRequest.IsSetRequestAttributes then
    Request.Headers.Add('x-amz-lex-request-attributes', PublicRequest.RequestAttributes);
  if PublicRequest.IsSetRequestContentType then
    Request.Headers.Add('Content-Type', PublicRequest.RequestContentType);
  if PublicRequest.IsSetResponseContentType then
    Request.Headers.Add('Response-Content-Type', PublicRequest.ResponseContentType);
  if PublicRequest.IsSetSessionState then
    Request.Headers.Add('x-amz-lex-session-state', PublicRequest.SessionState);
  Result := Request;
end;

class constructor TRecognizeUtteranceRequestMarshaller.Create;
begin
  FInstance := TRecognizeUtteranceRequestMarshaller.Create;
end;

class function TRecognizeUtteranceRequestMarshaller.Instance: IRecognizeUtteranceRequestMarshaller;
begin
  Result := FInstance;
end;

end.
