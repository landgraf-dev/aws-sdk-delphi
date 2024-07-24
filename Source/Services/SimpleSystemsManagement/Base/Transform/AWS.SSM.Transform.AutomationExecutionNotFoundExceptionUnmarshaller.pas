unit AWS.SSM.Transform.AutomationExecutionNotFoundExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.AutomationExecutionNotFoundException, 
  AWS.Internal.ErrorResponse;

type
  IAutomationExecutionNotFoundExceptionUnmarshaller = IErrorResponseUnmarshaller<EAutomationExecutionNotFoundException, TJsonUnmarshallerContext>;
  
  TAutomationExecutionNotFoundExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EAutomationExecutionNotFoundException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IAutomationExecutionNotFoundExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EAutomationExecutionNotFoundException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EAutomationExecutionNotFoundException; overload;
    class function Instance: IAutomationExecutionNotFoundExceptionUnmarshaller; static;
  end;
  
implementation

{ TAutomationExecutionNotFoundExceptionUnmarshaller }

function TAutomationExecutionNotFoundExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EAutomationExecutionNotFoundException;
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

function TAutomationExecutionNotFoundExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EAutomationExecutionNotFoundException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EAutomationExecutionNotFoundException;
begin
  UnmarshalledObject := EAutomationExecutionNotFoundException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TAutomationExecutionNotFoundExceptionUnmarshaller.Create;
begin
  FInstance := TAutomationExecutionNotFoundExceptionUnmarshaller.Create;
end;

class function TAutomationExecutionNotFoundExceptionUnmarshaller.Instance: IAutomationExecutionNotFoundExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
