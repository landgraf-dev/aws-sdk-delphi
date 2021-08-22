unit AWS.LexRuntimeService.Transform.GetSessionResponseUnmarshaller;

interface

uses
  AWS.LexRuntimeService.Model.GetSessionResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.LexRuntimeService.Transform.ActiveContextUnmarshaller, 
  AWS.LexRuntimeService.Model.ActiveContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.LexRuntimeService.Transform.DialogActionUnmarshaller, 
  AWS.LexRuntimeService.Transform.IntentSummaryUnmarshaller, 
  AWS.LexRuntimeService.Model.IntentSummary, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.LexRuntimeService.Transform.BadRequestExceptionUnmarshaller, 
  AWS.LexRuntimeService.Transform.InternalFailureExceptionUnmarshaller, 
  AWS.LexRuntimeService.Transform.LimitExceededExceptionUnmarshaller, 
  AWS.LexRuntimeService.Transform.NotFoundExceptionUnmarshaller, 
  AWS.LexRuntimeService.Exception;

type
  IGetSessionResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetSessionResponseUnmarshaller = class(TJsonResponseUnmarshaller, IGetSessionResponseUnmarshaller)
  strict private
    class var FInstance: IGetSessionResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetSessionResponseUnmarshaller; static;
  end;
  
implementation

{ TGetSessionResponseUnmarshaller }

function TGetSessionResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetSessionResponse;
begin
  Response := TGetSessionResponse.Create;
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
      if AContext.TestExpression('dialogAction', TargetDepth) then
      begin
        var Unmarshaller := TDialogActionUnmarshaller.JsonInstance;
        Response.DialogAction := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('recentIntentSummaryView', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TIntentSummary, IIntentSummaryUnmarshaller>.JsonNew(TIntentSummaryUnmarshaller.JsonInstance);
        Response.RecentIntentSummaryView := Unmarshaller.Unmarshall(AContext);
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
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TGetSessionResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'BadRequestException' then
          Exit(TBadRequestExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InternalFailureException' then
          Exit(TInternalFailureExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'LimitExceededException' then
          Exit(TLimitExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TGetSessionResponseUnmarshaller.Create;
begin
  FInstance := TGetSessionResponseUnmarshaller.Create;
end;

class function TGetSessionResponseUnmarshaller.Instance: IGetSessionResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
