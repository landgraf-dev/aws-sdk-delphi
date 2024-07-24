unit AWS.SSM.Transform.StartAutomationExecutionResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.StartAutomationExecutionResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.AutomationDefinitionNotFoundExceptionUnmarshaller, 
  AWS.SSM.Transform.AutomationDefinitionVersionNotFoundExceptionUnmarshaller, 
  AWS.SSM.Transform.AutomationExecutionLimitExceededExceptionUnmarshaller, 
  AWS.SSM.Transform.IdempotentParameterMismatchExceptionUnmarshaller, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidAutomationExecutionParametersExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidTargetExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IStartAutomationExecutionResponseUnmarshaller = IResponseUnmarshaller;
  
  TStartAutomationExecutionResponseUnmarshaller = class(TJsonResponseUnmarshaller, IStartAutomationExecutionResponseUnmarshaller)
  strict private
    class var FInstance: IStartAutomationExecutionResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IStartAutomationExecutionResponseUnmarshaller; static;
  end;
  
implementation

{ TStartAutomationExecutionResponseUnmarshaller }

function TStartAutomationExecutionResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TStartAutomationExecutionResponse;
begin
  Response := TStartAutomationExecutionResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('AutomationExecutionId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.AutomationExecutionId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TStartAutomationExecutionResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'AutomationDefinitionNotFoundException' then
          Exit(TAutomationDefinitionNotFoundExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'AutomationDefinitionVersionNotFoundException' then
          Exit(TAutomationDefinitionVersionNotFoundExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'AutomationExecutionLimitExceededException' then
          Exit(TAutomationExecutionLimitExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'IdempotentParameterMismatchException' then
          Exit(TIdempotentParameterMismatchExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InternalServerErrorException' then
          Exit(TInternalServerErrorExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidAutomationExecutionParametersException' then
          Exit(TInvalidAutomationExecutionParametersExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidTargetException' then
          Exit(TInvalidTargetExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
      finally
        ContextCopy.Free;
      end;
    finally
      StreamCopy.Free;
    end;
    Exit(EAmazonSimpleSystemsManagementException.Create(ErrorResponse.Message, AInnerException, ErrorResponse.ErrorType, ErrorResponse.Code, ErrorResponse.RequestId, AStatusCode));
  finally
    ErrorResponse.Free;
  end;
end;

class constructor TStartAutomationExecutionResponseUnmarshaller.Create;
begin
  FInstance := TStartAutomationExecutionResponseUnmarshaller.Create;
end;

class function TStartAutomationExecutionResponseUnmarshaller.Instance: IStartAutomationExecutionResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
