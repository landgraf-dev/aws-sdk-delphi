unit AWS.LexRuntimeService.Transform.DeleteSessionResponseUnmarshaller;

interface

uses
  AWS.LexRuntimeService.Model.DeleteSessionResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.LexRuntimeService.Transform.BadRequestExceptionUnmarshaller, 
  AWS.LexRuntimeService.Transform.ConflictExceptionUnmarshaller, 
  AWS.LexRuntimeService.Transform.InternalFailureExceptionUnmarshaller, 
  AWS.LexRuntimeService.Transform.LimitExceededExceptionUnmarshaller, 
  AWS.LexRuntimeService.Transform.NotFoundExceptionUnmarshaller, 
  AWS.LexRuntimeService.Exception;

type
  IDeleteSessionResponseUnmarshaller = IResponseUnmarshaller;
  
  TDeleteSessionResponseUnmarshaller = class(TJsonResponseUnmarshaller, IDeleteSessionResponseUnmarshaller)
  strict private
    class var FInstance: IDeleteSessionResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDeleteSessionResponseUnmarshaller; static;
  end;
  
implementation

{ TDeleteSessionResponseUnmarshaller }

function TDeleteSessionResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDeleteSessionResponse;
begin
  Response := TDeleteSessionResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('botAlias', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.BotAlias := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('botName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.BotName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('sessionId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.SessionId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('userId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.UserId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TDeleteSessionResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'ConflictException' then
          Exit(TConflictExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TDeleteSessionResponseUnmarshaller.Create;
begin
  FInstance := TDeleteSessionResponseUnmarshaller.Create;
end;

class function TDeleteSessionResponseUnmarshaller.Instance: IDeleteSessionResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
