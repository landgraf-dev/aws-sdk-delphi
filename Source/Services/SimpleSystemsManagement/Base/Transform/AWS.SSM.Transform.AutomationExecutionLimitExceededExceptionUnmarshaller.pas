unit AWS.SSM.Transform.AutomationExecutionLimitExceededExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.AutomationExecutionLimitExceededException, 
  AWS.Internal.ErrorResponse;

type
  IAutomationExecutionLimitExceededExceptionUnmarshaller = IErrorResponseUnmarshaller<EAutomationExecutionLimitExceededException, TJsonUnmarshallerContext>;
  
  TAutomationExecutionLimitExceededExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EAutomationExecutionLimitExceededException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IAutomationExecutionLimitExceededExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EAutomationExecutionLimitExceededException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EAutomationExecutionLimitExceededException; overload;
    class function Instance: IAutomationExecutionLimitExceededExceptionUnmarshaller; static;
  end;
  
implementation

{ TAutomationExecutionLimitExceededExceptionUnmarshaller }

function TAutomationExecutionLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EAutomationExecutionLimitExceededException;
var
  ErrorResponse: TErrorResponse;
begin
  ErrorResponse := TErrorResponse.Create;
  try
    Result := Unmarshall(AContext, ErrorResponse);
  finally
    ErrorResponse.Free;
  end;
end;

function TAutomationExecutionLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EAutomationExecutionLimitExceededException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EAutomationExecutionLimitExceededException;
begin
  UnmarshalledObject := EAutomationExecutionLimitExceededException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TAutomationExecutionLimitExceededExceptionUnmarshaller.Create;
begin
  FInstance := TAutomationExecutionLimitExceededExceptionUnmarshaller.Create;
end;

class function TAutomationExecutionLimitExceededExceptionUnmarshaller.Instance: IAutomationExecutionLimitExceededExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
