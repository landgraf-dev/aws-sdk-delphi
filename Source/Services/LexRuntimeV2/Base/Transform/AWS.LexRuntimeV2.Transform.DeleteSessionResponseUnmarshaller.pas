unit AWS.LexRuntimeV2.Transform.DeleteSessionResponseUnmarshaller;

interface

uses
  AWS.LexRuntimeV2.Model.DeleteSessionResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.LexRuntimeV2.Transform.AccessDeniedExceptionUnmarshaller, 
  AWS.LexRuntimeV2.Transform.ConflictExceptionUnmarshaller, 
  AWS.LexRuntimeV2.Transform.InternalServerExceptionUnmarshaller, 
  AWS.LexRuntimeV2.Transform.ResourceNotFoundExceptionUnmarshaller, 
  AWS.LexRuntimeV2.Transform.ThrottlingExceptionUnmarshaller, 
  AWS.LexRuntimeV2.Transform.ValidationExceptionUnmarshaller, 
  AWS.LexRuntimeV2.Exception;

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
      if AContext.TestExpression('botAliasId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.BotAliasId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('botId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.BotId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('localeId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.LocaleId := Unmarshaller.Unmarshall(AContext);
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
        if ErrorResponse.Code = 'AccessDeniedException' then
          Exit(TAccessDeniedExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ConflictException' then
          Exit(TConflictExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TDeleteSessionResponseUnmarshaller.Create;
begin
  FInstance := TDeleteSessionResponseUnmarshaller.Create;
end;

class function TDeleteSessionResponseUnmarshaller.Instance: IDeleteSessionResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
