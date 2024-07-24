unit AWS.SSM.Transform.StopAutomationExecutionResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.StopAutomationExecutionResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.AutomationExecutionNotFoundExceptionUnmarshaller, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidAutomationStatusUpdateExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IStopAutomationExecutionResponseUnmarshaller = IResponseUnmarshaller;
  
  TStopAutomationExecutionResponseUnmarshaller = class(TJsonResponseUnmarshaller, IStopAutomationExecutionResponseUnmarshaller)
  strict private
    class var FInstance: IStopAutomationExecutionResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IStopAutomationExecutionResponseUnmarshaller; static;
  end;
  
implementation

{ TStopAutomationExecutionResponseUnmarshaller }

function TStopAutomationExecutionResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TStopAutomationExecutionResponse;
begin
  Response := TStopAutomationExecutionResponse.Create;
  try
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TStopAutomationExecutionResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'InternalServerErrorException' then
          Exit(TInternalServerErrorExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidAutomationStatusUpdateException' then
          Exit(TInvalidAutomationStatusUpdateExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TStopAutomationExecutionResponseUnmarshaller.Create;
begin
  FInstance := TStopAutomationExecutionResponseUnmarshaller.Create;
end;

class function TStopAutomationExecutionResponseUnmarshaller.Instance: IStopAutomationExecutionResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
