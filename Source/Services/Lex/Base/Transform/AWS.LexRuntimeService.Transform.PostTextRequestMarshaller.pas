unit AWS.LexRuntimeService.Transform.PostTextRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.LexRuntimeService.Model.PostTextRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.LexRuntimeService.Exception, 
  AWS.Internal.StringUtils, 
  AWS.LexRuntimeService.Transform.ActiveContextMarshaller;

type
  IPostTextRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPostTextRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPostTextRequest>, IPostTextRequestMarshaller)
  strict private
    class var FInstance: IPostTextRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPostTextRequest): IRequest; overload;
    class function Instance: IPostTextRequestMarshaller; static;
  end;
  
implementation

{ TPostTextRequestMarshaller }

function TPostTextRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPostTextRequest(AInput));
end;

function TPostTextRequestMarshaller.Marshall(PublicRequest: TPostTextRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Lex');
  Request.Headers.AddOrSetValue('Content-Type', 'application/json');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2016-11-28');
  Request.HttpMethod := 'POST';
  if not PublicRequest.IsSetBotAlias then
    raise EAmazonLexException.Create('Request object does not have required field BotAlias set');
  Request.AddPathResource('{botAlias}', TStringUtils.Fromstring(PublicRequest.BotAlias));
  if not PublicRequest.IsSetBotName then
    raise EAmazonLexException.Create('Request object does not have required field BotName set');
  Request.AddPathResource('{botName}', TStringUtils.Fromstring(PublicRequest.BotName));
  if not PublicRequest.IsSetUserId then
    raise EAmazonLexException.Create('Request object does not have required field UserId set');
  Request.AddPathResource('{userId}', TStringUtils.Fromstring(PublicRequest.UserId));
  Request.ResourcePath := '/bot/{botName}/alias/{botAlias}/user/{userId}/text';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetActiveContexts then
        begin
          Context.Writer.WriteName('activeContexts');
          Context.Writer.WriteBeginArray;
          for var PublicRequestActiveContextsListValue in PublicRequest.ActiveContexts do
          begin
            Context.Writer.WriteBeginObject;
            TActiveContextMarshaller.Instance.Marshall(PublicRequestActiveContextsListValue, Context);
            Context.Writer.WriteEndObject;
          end;
          Context.Writer.WriteEndArray;
        end;
        if PublicRequest.IsSetInputText then
        begin
          Context.Writer.WriteName('inputText');
          Context.Writer.WriteString(PublicRequest.InputText);
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
        if PublicRequest.IsSetSessionAttributes then
        begin
          Context.Writer.WriteName('sessionAttributes');
          Context.Writer.WriteBeginObject;
          for var PublicRequestSessionAttributesKvp in PublicRequest.SessionAttributes do
          begin
            Context.Writer.WriteName(PublicRequestSessionAttributesKvp.Key);
            var PublicRequestSessionAttributesValue := PublicRequestSessionAttributesKvp.Value;
            Context.Writer.WriteString(PublicRequestSessionAttributesValue);
          end;
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
  Result := Request;
end;

class constructor TPostTextRequestMarshaller.Create;
begin
  FInstance := TPostTextRequestMarshaller.Create;
end;

class function TPostTextRequestMarshaller.Instance: IPostTextRequestMarshaller;
begin
  Result := FInstance;
end;

end.
