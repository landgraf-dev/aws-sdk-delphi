unit AWS.LexRuntimeV2.Transform.RecognizeTextResponseUnmarshaller;

interface

uses
  AWS.LexRuntimeV2.Model.RecognizeTextResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.LexRuntimeV2.Transform.InterpretationUnmarshaller, 
  AWS.LexRuntimeV2.Model.Interpretation, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.LexRuntimeV2.Transform.MessageUnmarshaller, 
  AWS.LexRuntimeV2.Model.Message, 
  AWS.LexRuntimeV2.Transform.SessionStateUnmarshaller, 
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
  IRecognizeTextResponseUnmarshaller = IResponseUnmarshaller;
  
  TRecognizeTextResponseUnmarshaller = class(TJsonResponseUnmarshaller, IRecognizeTextResponseUnmarshaller)
  strict private
    class var FInstance: IRecognizeTextResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IRecognizeTextResponseUnmarshaller; static;
  end;
  
implementation

{ TRecognizeTextResponseUnmarshaller }

function TRecognizeTextResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TRecognizeTextResponse;
begin
  Response := TRecognizeTextResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('interpretations', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TInterpretation, IInterpretationUnmarshaller>.JsonNew(TInterpretationUnmarshaller.JsonInstance);
        Response.Interpretations := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('messages', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TMessage, IMessageUnmarshaller>.JsonNew(TMessageUnmarshaller.JsonInstance);
        Response.Messages := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('requestAttributes', TargetDepth) then
      begin
        var Unmarshaller := TJsonDictionaryUnmarshaller<string, string, IJsonStringUnmarshaller, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance, TStringUnmarshaller.JsonInstance);
        Response.RequestAttributes := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('sessionId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.SessionId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('sessionState', TargetDepth) then
      begin
        var Unmarshaller := TSessionStateUnmarshaller.JsonInstance;
        Response.SessionStateValue := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TRecognizeTextResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TRecognizeTextResponseUnmarshaller.Create;
begin
  FInstance := TRecognizeTextResponseUnmarshaller.Create;
end;

class function TRecognizeTextResponseUnmarshaller.Instance: IRecognizeTextResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
