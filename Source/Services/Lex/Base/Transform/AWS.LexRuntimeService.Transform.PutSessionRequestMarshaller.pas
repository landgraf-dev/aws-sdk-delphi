unit AWS.LexRuntimeService.Transform.PutSessionRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.LexRuntimeService.Model.PutSessionRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.LexRuntimeService.Exception, 
  AWS.Internal.StringUtils;

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
  Request.ResourcePath := '/bot/{botName}/alias/{botAlias}/user/{userId}/session';
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
            TActiveContextRequestMarshaller.Instance.Marshall(PublicRequestActiveContextsListValue, Context);
            Context.Writer.WriteEndObject;
          end;
          Context.Writer.WriteEndArray;
        end;
        if PublicRequest.IsSetDialogAction then
        begin
          Context.Writer.WriteName('dialogAction');
          Context.Writer.WriteBeginObject;
          TDialogActionRequestMarshaller.Instance.Marshall(PublicRequest.DialogAction, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetRecentIntentSummaryView then
        begin
          Context.Writer.WriteName('recentIntentSummaryView');
          Context.Writer.WriteBeginArray;
          for var PublicRequestRecentIntentSummaryViewListValue in PublicRequest.RecentIntentSummaryView do
          begin
            Context.Writer.WriteBeginObject;
            TIntentSummaryRequestMarshaller.Instance.Marshall(PublicRequestRecentIntentSummaryViewListValue, Context);
            Context.Writer.WriteEndObject;
          end;
          Context.Writer.WriteEndArray;
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
  if PublicRequest.IsSetAccept then
    Request.Headers.Add('Accept', PublicRequest.Accept);
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
