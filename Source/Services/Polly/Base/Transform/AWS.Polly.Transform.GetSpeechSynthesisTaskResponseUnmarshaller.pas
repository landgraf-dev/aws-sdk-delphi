unit AWS.Polly.Transform.GetSpeechSynthesisTaskResponseUnmarshaller;

interface

uses
  AWS.Polly.Model.GetSpeechSynthesisTaskResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Polly.Transform.SynthesisTaskUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.Polly.Transform.InvalidTaskIdExceptionUnmarshaller, 
  AWS.Polly.Transform.ServiceFailureExceptionUnmarshaller, 
  AWS.Polly.Transform.SynthesisTaskNotFoundExceptionUnmarshaller, 
  AWS.Polly.Exception;

type
  IGetSpeechSynthesisTaskResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetSpeechSynthesisTaskResponseUnmarshaller = class(TJsonResponseUnmarshaller, IGetSpeechSynthesisTaskResponseUnmarshaller)
  strict private
    class var FInstance: IGetSpeechSynthesisTaskResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetSpeechSynthesisTaskResponseUnmarshaller; static;
  end;
  
implementation

{ TGetSpeechSynthesisTaskResponseUnmarshaller }

function TGetSpeechSynthesisTaskResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetSpeechSynthesisTaskResponse;
begin
  Response := TGetSpeechSynthesisTaskResponse.Create;
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

function TGetSpeechSynthesisTaskResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'InvalidTaskIdException' then
          Exit(TInvalidTaskIdExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ServiceFailureException' then
          Exit(TServiceFailureExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'SynthesisTaskNotFoundException' then
          Exit(TSynthesisTaskNotFoundExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TGetSpeechSynthesisTaskResponseUnmarshaller.Create;
begin
  FInstance := TGetSpeechSynthesisTaskResponseUnmarshaller.Create;
end;

class function TGetSpeechSynthesisTaskResponseUnmarshaller.Instance: IGetSpeechSynthesisTaskResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
