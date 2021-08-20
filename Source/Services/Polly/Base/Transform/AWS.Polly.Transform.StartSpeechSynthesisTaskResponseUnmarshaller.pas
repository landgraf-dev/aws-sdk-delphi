unit AWS.Polly.Transform.StartSpeechSynthesisTaskResponseUnmarshaller;

interface

uses
  AWS.Polly.Model.StartSpeechSynthesisTaskResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Polly.Transform.SynthesisTaskUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.Polly.Transform.EngineNotSupportedExceptionUnmarshaller, 
  AWS.Polly.Transform.InvalidS3BucketExceptionUnmarshaller, 
  AWS.Polly.Transform.InvalidS3KeyExceptionUnmarshaller, 
  AWS.Polly.Transform.InvalidSampleRateExceptionUnmarshaller, 
  AWS.Polly.Transform.InvalidSnsTopicArnExceptionUnmarshaller, 
  AWS.Polly.Transform.InvalidSsmlExceptionUnmarshaller, 
  AWS.Polly.Transform.LanguageNotSupportedExceptionUnmarshaller, 
  AWS.Polly.Transform.LexiconNotFoundExceptionUnmarshaller, 
  AWS.Polly.Transform.MarksNotSupportedForFormatExceptionUnmarshaller, 
  AWS.Polly.Transform.ServiceFailureExceptionUnmarshaller, 
  AWS.Polly.Transform.SsmlMarksNotSupportedForTextTypeExceptionUnmarshaller, 
  AWS.Polly.Transform.TextLengthExceededExceptionUnmarshaller, 
  AWS.Polly.Exception;

type
  IStartSpeechSynthesisTaskResponseUnmarshaller = IResponseUnmarshaller;
  
  TStartSpeechSynthesisTaskResponseUnmarshaller = class(TJsonResponseUnmarshaller, IStartSpeechSynthesisTaskResponseUnmarshaller)
  strict private
    class var FInstance: IStartSpeechSynthesisTaskResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IStartSpeechSynthesisTaskResponseUnmarshaller; static;
  end;
  
implementation

{ TStartSpeechSynthesisTaskResponseUnmarshaller }

function TStartSpeechSynthesisTaskResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TStartSpeechSynthesisTaskResponse;
begin
  Response := TStartSpeechSynthesisTaskResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('SynthesisTask', TargetDepth) then
      begin
        var Unmarshaller := TSynthesisTaskUnmarshaller.JsonInstance;
        Response.SynthesisTask := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TStartSpeechSynthesisTaskResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'InvalidS3BucketException' then
          Exit(TInvalidS3BucketExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidS3KeyException' then
          Exit(TInvalidS3KeyExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidSampleRateException' then
          Exit(TInvalidSampleRateExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidSnsTopicArnException' then
          Exit(TInvalidSnsTopicArnExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TStartSpeechSynthesisTaskResponseUnmarshaller.Create;
begin
  FInstance := TStartSpeechSynthesisTaskResponseUnmarshaller.Create;
end;

class function TStartSpeechSynthesisTaskResponseUnmarshaller.Instance: IStartSpeechSynthesisTaskResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
