unit AWS.Polly.Transform.SynthesizeSpeechResponseUnmarshaller;

interface

uses
  System.SysUtils, 
  AWS.Polly.Model.SynthesizeSpeechResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Runtime.Exceptions, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.Polly.Transform.EngineNotSupportedExceptionUnmarshaller, 
  AWS.Polly.Transform.InvalidSampleRateExceptionUnmarshaller, 
  AWS.Polly.Transform.InvalidSsmlExceptionUnmarshaller, 
  AWS.Polly.Transform.LanguageNotSupportedExceptionUnmarshaller, 
  AWS.Polly.Transform.LexiconNotFoundExceptionUnmarshaller, 
  AWS.Polly.Transform.MarksNotSupportedForFormatExceptionUnmarshaller, 
  AWS.Polly.Transform.ServiceFailureExceptionUnmarshaller, 
  AWS.Polly.Transform.SsmlMarksNotSupportedForTextTypeExceptionUnmarshaller, 
  AWS.Polly.Transform.TextLengthExceededExceptionUnmarshaller, 
  AWS.Polly.Exception;

type
  ISynthesizeSpeechResponseUnmarshaller = IResponseUnmarshaller;
  
  TSynthesizeSpeechResponseUnmarshaller = class(TJsonResponseUnmarshaller, ISynthesizeSpeechResponseUnmarshaller)
  strict private
    class var FInstance: ISynthesizeSpeechResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: ISynthesizeSpeechResponseUnmarshaller; static;
  end;
  
implementation

{ TSynthesizeSpeechResponseUnmarshaller }

function TSynthesizeSpeechResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TSynthesizeSpeechResponse;
begin
  Response := TSynthesizeSpeechResponse.Create;
  try
    Response.AudioStream := AContext.ExtractStream;
    Response.KeepAudioStream := True;
    if AContext.ResponseData.IsHeaderPresent('Content-Type') then
      Response.ContentType := AContext.ResponseData.GetHeaderValue('Content-Type');
    if AContext.ResponseData.IsHeaderPresent('x-amzn-RequestCharacters') then
      Response.RequestCharacters := StrToInt(AContext.ResponseData.GetHeaderValue('x-amzn-RequestCharacters'));
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TSynthesizeSpeechResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'EngineNotSupportedException' then
          Exit(TEngineNotSupportedExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidSampleRateException' then
          Exit(TInvalidSampleRateExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidSsmlException' then
          Exit(TInvalidSsmlExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'LanguageNotSupportedException' then
          Exit(TLanguageNotSupportedExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'LexiconNotFoundException' then
          Exit(TLexiconNotFoundExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'MarksNotSupportedForFormatException' then
          Exit(TMarksNotSupportedForFormatExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ServiceFailureException' then
          Exit(TServiceFailureExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'SsmlMarksNotSupportedForTextTypeException' then
          Exit(TSsmlMarksNotSupportedForTextTypeExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'TextLengthExceededException' then
          Exit(TTextLengthExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
      finally
        ContextCopy.Free;
      end;
    finally
      StreamCopy.Free;
    end;
    Exit(EAmazonPollyException.Create(ErrorResponse.Message, AInnerException, ErrorResponse.ErrorType, ErrorResponse.Code, ErrorResponse.RequestId, AStatusCode));
  finally
    ErrorResponse.Free;
  end;
end;

class constructor TSynthesizeSpeechResponseUnmarshaller.Create;
begin
  FInstance := TSynthesizeSpeechResponseUnmarshaller.Create;
end;

class function TSynthesizeSpeechResponseUnmarshaller.Instance: ISynthesizeSpeechResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
