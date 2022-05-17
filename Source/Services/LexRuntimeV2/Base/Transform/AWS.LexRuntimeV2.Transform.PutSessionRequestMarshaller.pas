unit AWS.LexRuntimeV2.Transform.PutSessionRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.LexRuntimeV2.Model.PutSessionRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.LexRuntimeV2.Exception, 
  AWS.Internal.StringUtils, 
  AWS.LexRuntimeV2.Transform.MessageMarshaller, 
  AWS.LexRuntimeV2.Transform.SessionStateMarshaller;

type
  IPutSessionRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPutSessionRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPutSessionRequest>, IPutSessionRequestMarshaller)
  strict private
    class var FInstance: IPutSessionRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutSessionRequest): IRequest; overload;
    class function Instance: IPutSessionRequestMarshaller; static;
  end;
  
implementation

{ TPutSessionRequestMarshaller }

function TPutSessionRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPutSessionRequest(AInput));
end;

function TPutSessionRequestMarshaller.Marshall(PublicRequest: TPutSessionRequest): IRequest;
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
  Request.ResourcePath := '/bots/{botId}/botAliases/{botAliasId}/botLocales/{localeId}/sessions/{sessionId}';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetMessages then
        begin
          Context.Writer.WriteName('messages');
          Context.Writer.WriteBeginArray;
          for var PublicRequestMessagesListValue in PublicRequest.Messages do
          begin
            Context.Writer.WriteBeginObject;
            TMessageMarshaller.Instance.Marshall(PublicRequestMessagesListValue, Context);
            Context.Writer.WriteEndObject;
          end;
          Context.Writer.WriteEndArray;
        end;
        if PublicRequest.IsSetRequestAttributes then
        begin
          Context.Writer.WriteName('requestAttributes');
          Context.Writer.WriteBeginObject;
          for var PublicRequestRequestAttributesKvp in PublicRequest.RequestAttributes do
          begin
            Context.Writer.WriteName(PublicRequestRequestAttributesKvp.Key);
            var PublicRequestRequestAttributesValue := PublicRequestRequestAttributesKvp.Value;
            Context.Writer.WriteString(PublicRequestRequestAttributesValue);
          end;
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetSessionStateValue then
        begin
          Context.Writer.WriteName('sessionState');
          Context.Writer.WriteBeginObject;
          TSessionStateMarshaller.Instance.Marshall(PublicRequest.SessionStateValue, Context);
          Context.Writer.WriteEndObject;
        end;
        Writer.WriteEndObject;
        Writer.Flush;
        var Snippet: string := Stream.DataString;
        Request.Content := TEncoding.UTF8.GetBytes(Snippet);
      finally
        Context.Free;
      end;
    finally
      Writer.Free;
    end;
  finally
    Stream.Free;
  end;
  if PublicRequest.IsSetResponseContentType then
    Request.Headers.Add('ResponseContentType', PublicRequest.ResponseContentType);
  Result := Request;
end;

class constructor TPutSessionRequestMarshaller.Create;
begin
  FInstance := TPutSessionRequestMarshaller.Create;
end;

class function TPutSessionRequestMarshaller.Instance: IPutSessionRequestMarshaller;
begin
  Result := FInstance;
end;

end.
