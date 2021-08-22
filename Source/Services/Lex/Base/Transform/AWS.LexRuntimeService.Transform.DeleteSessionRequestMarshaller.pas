unit AWS.LexRuntimeService.Transform.DeleteSessionRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.LexRuntimeService.Model.DeleteSessionRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.LexRuntimeService.Exception, 
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
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Lex');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2016-11-28');
  Request.HttpMethod := 'DELETE';
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
