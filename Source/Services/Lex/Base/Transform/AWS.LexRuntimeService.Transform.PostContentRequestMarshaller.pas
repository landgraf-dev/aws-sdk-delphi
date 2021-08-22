unit AWS.LexRuntimeService.Transform.PostContentRequestMarshaller;

interface

uses
  Bcl.Utils, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.LexRuntimeService.Model.PostContentRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.LexRuntimeService.Exception, 
  AWS.Internal.StringUtils;

type
  IPostContentRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPostContentRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPostContentRequest>, IPostContentRequestMarshaller)
  strict private
    class var FInstance: IPostContentRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPostContentRequest): IRequest; overload;
    class function Instance: IPostContentRequestMarshaller; static;
  end;
  
implementation

{ TPostContentRequestMarshaller }

function TPostContentRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPostContentRequest(AInput));
end;

function TPostContentRequestMarshaller.Marshall(PublicRequest: TPostContentRequest): IRequest;
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
  Request.ResourcePath := '/bot/{botName}/alias/{botAlias}/user/{userId}/content';
  if PublicRequest.IsSetAccept then
    Request.Headers.Add('Accept', PublicRequest.Accept);
  if PublicRequest.IsSetActiveContexts then
    Request.Headers.Add('x-amz-lex-active-contexts', TBclUtils.EncodeBase64(TEncoding.UTF8.GetBytes(PublicRequest.ActiveContexts)));
  if PublicRequest.IsSetContentType then
    Request.Headers.Add('Content-Type', PublicRequest.ContentType);
  if PublicRequest.IsSetRequestAttributes then
    Request.Headers.Add('x-amz-lex-request-attributes', TBclUtils.EncodeBase64(TEncoding.UTF8.GetBytes(PublicRequest.RequestAttributes)));
  if PublicRequest.IsSetSessionAttributes then
    Request.Headers.Add('x-amz-lex-session-attributes', TBclUtils.EncodeBase64(TEncoding.UTF8.GetBytes(PublicRequest.SessionAttributes)));
  Result := Request;
end;

class constructor TPostContentRequestMarshaller.Create;
begin
  FInstance := TPostContentRequestMarshaller.Create;
end;

class function TPostContentRequestMarshaller.Instance: IPostContentRequestMarshaller;
begin
  Result := FInstance;
end;

end.
