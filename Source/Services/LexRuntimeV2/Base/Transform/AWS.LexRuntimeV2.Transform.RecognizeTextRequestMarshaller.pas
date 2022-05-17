unit AWS.LexRuntimeV2.Transform.RecognizeTextRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.LexRuntimeV2.Model.RecognizeTextRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.LexRuntimeV2.Exception, 
  AWS.Internal.StringUtils, 
  AWS.LexRuntimeV2.Transform.SessionStateMarshaller;

type
  IRecognizeTextRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TRecognizeTextRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TRecognizeTextRequest>, IRecognizeTextRequestMarshaller)
  strict private
    class var FInstance: IRecognizeTextRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TRecognizeTextRequest): IRequest; overload;
    class function Instance: IRecognizeTextRequestMarshaller; static;
  end;
  
implementation

{ TRecognizeTextRequestMarshaller }

function TRecognizeTextRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TRecognizeTextRequest(AInput));
end;

function TRecognizeTextRequestMarshaller.Marshall(PublicRequest: TRecognizeTextRequest): IRequest;
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
  Request.ResourcePath := '/bots/{botId}/botAliases/{botAliasId}/botLocales/{localeId}/sessions/{sessionId}/text';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
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
        if PublicRequest.IsSetText then
        begin
          Context.Writer.WriteName('text');
          Context.Writer.WriteString(PublicRequest.Text);
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
  Result := Request;
end;

class constructor TRecognizeTextRequestMarshaller.Create;
begin
  FInstance := TRecognizeTextRequestMarshaller.Create;
end;

class function TRecognizeTextRequestMarshaller.Instance: IRecognizeTextRequestMarshaller;
begin
  Result := FInstance;
end;

end.
