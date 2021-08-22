unit AWS.LexRuntimeService.Transform.PostTextResponseUnmarshaller;

interface

uses
  AWS.LexRuntimeService.Model.PostTextResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.LexRuntimeService.Transform.ActiveContextUnmarshaller, 
  AWS.LexRuntimeService.Model.ActiveContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.LexRuntimeService.Transform.PredictedIntentUnmarshaller, 
  AWS.LexRuntimeService.Model.PredictedIntent, 
  AWS.LexRuntimeService.Transform.IntentConfidenceUnmarshaller, 
  AWS.LexRuntimeService.Transform.ResponseCardUnmarshaller, 
  AWS.LexRuntimeService.Transform.SentimentResponseUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.LexRuntimeService.Transform.BadGatewayExceptionUnmarshaller, 
  AWS.LexRuntimeService.Transform.BadRequestExceptionUnmarshaller, 
  AWS.LexRuntimeService.Transform.ConflictExceptionUnmarshaller, 
  AWS.LexRuntimeService.Transform.DependencyFailedExceptionUnmarshaller, 
  AWS.LexRuntimeService.Transform.InternalFailureExceptionUnmarshaller, 
  AWS.LexRuntimeService.Transform.LimitExceededExceptionUnmarshaller, 
  AWS.LexRuntimeService.Transform.LoopDetectedExceptionUnmarshaller, 
  AWS.LexRuntimeService.Transform.NotFoundExceptionUnmarshaller, 
  AWS.LexRuntimeService.Exception;

type
  IPostTextResponseUnmarshaller = IResponseUnmarshaller;
  
  TPostTextResponseUnmarshaller = class(TJsonResponseUnmarshaller, IPostTextResponseUnmarshaller)
  strict private
    class var FInstance: IPostTextResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IPostTextResponseUnmarshaller; static;
  end;
  
implementation

{ TPostTextResponseUnmarshaller }

function TPostTextResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TPostTextResponse;
begin
  Response := TPostTextResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('activeContexts', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TActiveContext, IActiveContextUnmarshaller>.JsonNew(TActiveContextUnmarshaller.JsonInstance);
        Response.ActiveContexts := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('alternativeIntents', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TPredictedIntent, IPredictedIntentUnmarshaller>.JsonNew(TPredictedIntentUnmarshaller.JsonInstance);
        Response.AlternativeIntents := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('botVersion', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.BotVersion := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('dialogState', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.DialogState := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('intentName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.IntentName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('message', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.Message := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('messageFormat', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.MessageFormat := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('nluIntentConfidence', TargetDepth) then
      begin
        var Unmarshaller := TIntentConfidenceUnmarshaller.JsonInstance;
        Response.NluIntentConfidence := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('responseCard', TargetDepth) then
      begin
        var Unmarshaller := TResponseCardUnmarshaller.JsonInstance;
        Response.ResponseCard := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('sentimentResponse', TargetDepth) then
      begin
        var Unmarshaller := TSentimentResponseUnmarshaller.JsonInstance;
        Response.SentimentResponse := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('sessionAttributes', TargetDepth) then
      begin
        var Unmarshaller := TJsonDictionaryUnmarshaller<string, string, IJsonStringUnmarshaller, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance, TStringUnmarshaller.JsonInstance);
        Response.SessionAttributes := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('sessionId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.SessionId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('slotToElicit', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.SlotToElicit := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('slots', TargetDepth) then
      begin
        var Unmarshaller := TJsonDictionaryUnmarshaller<string, string, IJsonStringUnmarshaller, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance, TStringUnmarshaller.JsonInstance);
        Response.Slots := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TPostTextResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'LoopDetectedException' then
          Exit(TLoopDetectedExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TPostTextResponseUnmarshaller.Create;
begin
  FInstance := TPostTextResponseUnmarshaller.Create;
end;

class function TPostTextResponseUnmarshaller.Instance: IPostTextResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
