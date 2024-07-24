unit AWS.SSM.Transform.StartChangeRequestExecutionResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.StartChangeRequestExecutionResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.AutomationDefinitionNotApprovedExceptionUnmarshaller, 
  AWS.SSM.Transform.AutomationDefinitionNotFoundExceptionUnmarshaller, 
  AWS.SSM.Transform.AutomationDefinitionVersionNotFoundExceptionUnmarshaller, 
  AWS.SSM.Transform.AutomationExecutionLimitExceededExceptionUnmarshaller, 
  AWS.SSM.Transform.IdempotentParameterMismatchExceptionUnmarshaller, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidAutomationExecutionParametersExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IStartChangeRequestExecutionResponseUnmarshaller = IResponseUnmarshaller;
  
  TStartChangeRequestExecutionResponseUnmarshaller = class(TJsonResponseUnmarshaller, IStartChangeRequestExecutionResponseUnmarshaller)
  strict private
    class var FInstance: IStartChangeRequestExecutionResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IStartChangeRequestExecutionResponseUnmarshaller; static;
  end;
  
implementation

{ TStartChangeRequestExecutionResponseUnmarshaller }

function TStartChangeRequestExecutionResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TStartChangeRequestExecutionResponse;
begin
  Response := TStartChangeRequestExecutionResponse.Create;
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

function TStartChangeRequestExecutionResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'AutomationDefinitionNotApprovedException' then
          Exit(TAutomationDefinitionNotApprovedExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TStartChangeRequestExecutionResponseUnmarshaller.Create;
begin
  FInstance := TStartChangeRequestExecutionResponseUnmarshaller.Create;
end;

class function TStartChangeRequestExecutionResponseUnmarshaller.Instance: IStartChangeRequestExecutionResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
