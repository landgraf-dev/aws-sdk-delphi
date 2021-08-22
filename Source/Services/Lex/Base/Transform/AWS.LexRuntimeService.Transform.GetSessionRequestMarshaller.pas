unit AWS.LexRuntimeService.Transform.GetSessionRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.LexRuntimeService.Model.GetSessionRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.LexRuntimeService.Exception, 
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
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Lex');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2016-11-28');
  Request.HttpMethod := 'GET';
  if not PublicRequest.IsSetBotAlias then
    raise EAmazonLexException.Create('Request object does not have required field BotAlias set');
  Request.AddPathResource('{botAlias}', TStringUtils.Fromstring(PublicRequest.BotAlias));
  if not PublicRequest.IsSetBotName then
    raise EAmazonLexException.Create('Request object does not have required field BotName set');
  Request.AddPathResource('{botName}', TStringUtils.Fromstring(PublicRequest.BotName));
  if not PublicRequest.IsSetUserId then
    raise EAmazonLexException.Create('Request object does not have required field UserId set');
  Request.AddPathResource('{userId}', TStringUtils.Fromstring(PublicRequest.UserId));
  if PublicRequest.IsSetCheckpointLabelFilter then
    Request.Parameters.Add('checkpointLabelFilter', TStringUtils.Fromstring(PublicRequest.CheckpointLabelFilter));
  Request.ResourcePath := '/bot/{botName}/alias/{botAlias}/user/{userId}/session/';
  Request.UseQueryString := True;
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
