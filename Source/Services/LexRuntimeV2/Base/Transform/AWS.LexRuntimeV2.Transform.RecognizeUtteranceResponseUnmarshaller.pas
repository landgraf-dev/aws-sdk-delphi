unit AWS.LexRuntimeV2.Transform.RecognizeUtteranceResponseUnmarshaller;

interface

uses
  AWS.LexRuntimeV2.Model.RecognizeUtteranceResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.LexRuntimeV2.Transform.AccessDeniedExceptionUnmarshaller, 
  AWS.LexRuntimeV2.Transform.BadGatewayExceptionUnmarshaller, 
  AWS.LexRuntimeV2.Transform.ConflictExceptionUnmarshaller, 
  AWS.LexRuntimeV2.Transform.DependencyFailedExceptionUnmarshaller, 
  AWS.LexRuntimeV2.Transform.InternalServerExceptionUnmarshaller, 
  AWS.LexRuntimeV2.Transform.ResourceNotFoundExceptionUnmarshaller, 
  AWS.LexRuntimeV2.Transform.ThrottlingExceptionUnmarshaller, 
  AWS.LexRuntimeV2.Transform.ValidationExceptionUnmarshaller, 
  AWS.LexRuntimeV2.Exception;

type
  IRecognizeUtteranceResponseUnmarshaller = IResponseUnmarshaller;
  
  TRecognizeUtteranceResponseUnmarshaller = class(TJsonResponseUnmarshaller, IRecognizeUtteranceResponseUnmarshaller)
  strict private
    class var FInstance: IRecognizeUtteranceResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IRecognizeUtteranceResponseUnmarshaller; static;
  end;
  
implementation

{ TRecognizeUtteranceResponseUnmarshaller }

function TRecognizeUtteranceResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TRecognizeUtteranceResponse;
begin
  Response := TRecognizeUtteranceResponse.Create;
  try
    Response.AudioStream := AContext.ExtractStream;
    Response.KeepAudioStream := True;
    if AContext.ResponseData.IsHeaderPresent('Content-Type') then
      Response.ContentType := AContext.ResponseData.GetHeaderValue('Content-Type');
    if AContext.ResponseData.IsHeaderPresent('x-amz-lex-input-mode') then
      Response.InputMode := AContext.ResponseData.GetHeaderValue('x-amz-lex-input-mode');
    if AContext.ResponseData.IsHeaderPresent('x-amz-lex-input-transcript') then
      Response.InputTranscript := AContext.ResponseData.GetHeaderValue('x-amz-lex-input-transcript');
    if AContext.ResponseData.IsHeaderPresent('x-amz-lex-interpretations') then
      Response.Interpretations := AContext.ResponseData.GetHeaderValue('x-amz-lex-interpretations');
    if AContext.ResponseData.IsHeaderPresent('x-amz-lex-messages') then
      Response.Messages := AContext.ResponseData.GetHeaderValue('x-amz-lex-messages');
    if AContext.ResponseData.IsHeaderPresent('x-amz-lex-request-attributes') then
      Response.RequestAttributes := AContext.ResponseData.GetHeaderValue('x-amz-lex-request-attributes');
    if AContext.ResponseData.IsHeaderPresent('x-amz-lex-session-id') then
      Response.SessionId := AContext.ResponseData.GetHeaderValue('x-amz-lex-session-id');
    if AContext.ResponseData.IsHeaderPresent('x-amz-lex-session-state') then
      Response.SessionState := AContext.ResponseData.GetHeaderValue('x-amz-lex-session-state');
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TRecognizeUtteranceResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'AccessDeniedException' then
          Exit(TAccessDeniedExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'BadGatewayException' then
          Exit(TBadGatewayExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ConflictException' then
          Exit(TConflictExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'DependencyFailedException' then
          Exit(TDependencyFailedExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InternalServerException' then
          Exit(TInternalServerExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ResourceNotFoundException' then
          Exit(TResourceNotFoundExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ThrottlingException' then
          Exit(TThrottlingExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ValidationException' then
          Exit(TValidationExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
      finally
        ContextCopy.Free;
      end;
    finally
      StreamCopy.Free;
    end;
    Exit(EAmazonLexRuntimeV2Exception.Create(ErrorResponse.Message, AInnerException, ErrorResponse.ErrorType, ErrorResponse.Code, ErrorResponse.RequestId, AStatusCode));
  finally
    ErrorResponse.Free;
  end;
end;

class constructor TRecognizeUtteranceResponseUnmarshaller.Create;
begin
  FInstance := TRecognizeUtteranceResponseUnmarshaller.Create;
end;

class function TRecognizeUtteranceResponseUnmarshaller.Instance: IRecognizeUtteranceResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
