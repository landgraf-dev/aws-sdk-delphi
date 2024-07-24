unit AWS.SSM.Transform.InvalidAutomationExecutionParametersExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvalidAutomationExecutionParametersException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidAutomationExecutionParametersExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidAutomationExecutionParametersException, TJsonUnmarshallerContext>;
  
  TInvalidAutomationExecutionParametersExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidAutomationExecutionParametersException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidAutomationExecutionParametersExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidAutomationExecutionParametersException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidAutomationExecutionParametersException; overload;
    class function Instance: IInvalidAutomationExecutionParametersExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidAutomationExecutionParametersExceptionUnmarshaller }

function TInvalidAutomationExecutionParametersExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidAutomationExecutionParametersException;
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

function TInvalidAutomationExecutionParametersExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidAutomationExecutionParametersException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidAutomationExecutionParametersException;
begin
  UnmarshalledObject := EInvalidAutomationExecutionParametersException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidAutomationExecutionParametersExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidAutomationExecutionParametersExceptionUnmarshaller.Create;
end;

class function TInvalidAutomationExecutionParametersExceptionUnmarshaller.Instance: IInvalidAutomationExecutionParametersExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
