unit AWS.SSM.Transform.SendAutomationSignalResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.SendAutomationSignalResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.AutomationExecutionNotFoundExceptionUnmarshaller, 
  AWS.SSM.Transform.AutomationStepNotFoundExceptionUnmarshaller, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidAutomationSignalExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  ISendAutomationSignalResponseUnmarshaller = IResponseUnmarshaller;
  
  TSendAutomationSignalResponseUnmarshaller = class(TJsonResponseUnmarshaller, ISendAutomationSignalResponseUnmarshaller)
  strict private
    class var FInstance: ISendAutomationSignalResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: ISendAutomationSignalResponseUnmarshaller; static;
  end;
  
implementation

{ TSendAutomationSignalResponseUnmarshaller }

function TSendAutomationSignalResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TSendAutomationSignalResponse;
begin
  Response := TSendAutomationSignalResponse.Create;
  try
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TSendAutomationSignalResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'AutomationExecutionNotFoundException' then
          Exit(TAutomationExecutionNotFoundExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'AutomationStepNotFoundException' then
          Exit(TAutomationStepNotFoundExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InternalServerErrorException' then
          Exit(TInternalServerErrorExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidAutomationSignalException' then
          Exit(TInvalidAutomationSignalExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TSendAutomationSignalResponseUnmarshaller.Create;
begin
  FInstance := TSendAutomationSignalResponseUnmarshaller.Create;
end;

class function TSendAutomationSignalResponseUnmarshaller.Instance: ISendAutomationSignalResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
