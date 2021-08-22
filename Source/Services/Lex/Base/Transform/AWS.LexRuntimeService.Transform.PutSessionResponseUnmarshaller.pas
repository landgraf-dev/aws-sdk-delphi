unit AWS.LexRuntimeService.Transform.PutSessionResponseUnmarshaller;

interface

uses
  Bcl.Utils, 
  System.SysUtils, 
  AWS.LexRuntimeService.Model.PutSessionResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Runtime.Exceptions, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.LexRuntimeService.Transform.BadGatewayExceptionUnmarshaller, 
  AWS.LexRuntimeService.Transform.BadRequestExceptionUnmarshaller, 
  AWS.LexRuntimeService.Transform.ConflictExceptionUnmarshaller, 
  AWS.LexRuntimeService.Transform.DependencyFailedExceptionUnmarshaller, 
  AWS.LexRuntimeService.Transform.InternalFailureExceptionUnmarshaller, 
  AWS.LexRuntimeService.Transform.LimitExceededExceptionUnmarshaller, 
  AWS.LexRuntimeService.Transform.NotAcceptableExceptionUnmarshaller, 
  AWS.LexRuntimeService.Transform.NotFoundExceptionUnmarshaller, 
  AWS.LexRuntimeService.Exception;

type
  IPutSessionResponseUnmarshaller = IResponseUnmarshaller;
  
  TPutSessionResponseUnmarshaller = class(TJsonResponseUnmarshaller, IPutSessionResponseUnmarshaller)
  strict private
    class var FInstance: IPutSessionResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IPutSessionResponseUnmarshaller; static;
  end;
  
implementation

{ TPutSessionResponseUnmarshaller }

function TPutSessionResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TPutSessionResponse;
begin
  Response := TPutSessionResponse.Create;
  try
    Response.AudioStream := AContext.ExtractStream;
    Response.KeepAudioStream := True;
    if AContext.ResponseData.IsHeaderPresent('x-amz-lex-active-contexts') then
    begin
      var HeaderBytes := TBclUtils.DecodeBase64(AContext.ResponseData.GetHeaderValue('x-amz-lex-active-contexts'));
      Response.ActiveContexts := TEncoding.UTF8.GetString(HeaderBytes);
    end;
    if AContext.ResponseData.IsHeaderPresent('Content-Type') then
      Response.ContentType := AContext.ResponseData.GetHeaderValue('Content-Type');
    if AContext.ResponseData.IsHeaderPresent('x-amz-lex-dialog-state') then
      Response.DialogState := AContext.ResponseData.GetHeaderValue('x-amz-lex-dialog-state');
    if AContext.ResponseData.IsHeaderPresent('x-amz-lex-encoded-message') then
      Response.EncodedMessage := AContext.ResponseData.GetHeaderValue('x-amz-lex-encoded-message');
    if AContext.ResponseData.IsHeaderPresent('x-amz-lex-intent-name') then
      Response.IntentName := AContext.ResponseData.GetHeaderValue('x-amz-lex-intent-name');
    if AContext.ResponseData.IsHeaderPresent('x-amz-lex-message') then
      Response.Message := AContext.ResponseData.GetHeaderValue('x-amz-lex-message');
    if AContext.ResponseData.IsHeaderPresent('x-amz-lex-message-format') then
      Response.MessageFormat := AContext.ResponseData.GetHeaderValue('x-amz-lex-message-format');
    if AContext.ResponseData.IsHeaderPresent('x-amz-lex-session-attributes') then
    begin
      var HeaderBytes := TBclUtils.DecodeBase64(AContext.ResponseData.GetHeaderValue('x-amz-lex-session-attributes'));
      Response.SessionAttributes := TEncoding.UTF8.GetString(HeaderBytes);
    end;
    if AContext.ResponseData.IsHeaderPresent('x-amz-lex-session-id') then
      Response.SessionId := AContext.ResponseData.GetHeaderValue('x-amz-lex-session-id');
    if AContext.ResponseData.IsHeaderPresent('x-amz-lex-slot-to-elicit') then
      Response.SlotToElicit := AContext.ResponseData.GetHeaderValue('x-amz-lex-slot-to-elicit');
    if AContext.ResponseData.IsHeaderPresent('x-amz-lex-slots') then
    begin
      var HeaderBytes := TBclUtils.DecodeBase64(AContext.ResponseData.GetHeaderValue('x-amz-lex-slots'));
      Response.Slots := TEncoding.UTF8.GetString(HeaderBytes);
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TPutSessionResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
var
  ErrorResponse: TErrorResponse;
  StreamCopy: TStream;
  ContextCopy: TJsonUnmarshallerContext;
begin
  ErrorResponse := TJsonErrorResponseUnmarshaller.Instance.Unmarshall(AContext);
  try
    ErrorResponse.InnerException := AInnerException;
    ErrorResponse.StatusCode := AStatusCode;
    StreamCopy := TBytesStream.Create(AContext.GetResponseBodyBytes);
    try
      ContextCopy := TJsonUnmarshallerContext.Create(StreamCopy, False, nil);
      try
        if ErrorResponse.Code = 'BadGatewayException' then
          Exit(TBadGatewayExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'BadRequestException' then
          Exit(TBadRequestExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ConflictException' then
          Exit(TConflictExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'DependencyFailedException' then
          Exit(TDependencyFailedExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InternalFailureException' then
          Exit(TInternalFailureExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'LimitExceededException' then
          Exit(TLimitExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'NotAcceptableException' then
          Exit(TNotAcceptableExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'NotFoundException' then
          Exit(TNotFoundExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
      finally
        ContextCopy.Free;
      end;
    finally
      StreamCopy.Free;
    end;
    Exit(EAmazonLexException.Create(ErrorResponse.Message, AInnerException, ErrorResponse.ErrorType, ErrorResponse.Code, ErrorResponse.RequestId, AStatusCode));
  finally
    ErrorResponse.Free;
  end;
end;

class constructor TPutSessionResponseUnmarshaller.Create;
begin
  FInstance := TPutSessionResponseUnmarshaller.Create;
end;

class function TPutSessionResponseUnmarshaller.Instance: IPutSessionResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
