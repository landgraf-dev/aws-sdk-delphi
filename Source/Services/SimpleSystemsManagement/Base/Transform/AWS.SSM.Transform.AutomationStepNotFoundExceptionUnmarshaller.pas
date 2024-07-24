unit AWS.SSM.Transform.AutomationStepNotFoundExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.AutomationStepNotFoundException, 
  AWS.Internal.ErrorResponse;

type
  IAutomationStepNotFoundExceptionUnmarshaller = IErrorResponseUnmarshaller<EAutomationStepNotFoundException, TJsonUnmarshallerContext>;
  
  TAutomationStepNotFoundExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EAutomationStepNotFoundException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IAutomationStepNotFoundExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EAutomationStepNotFoundException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EAutomationStepNotFoundException; overload;
    class function Instance: IAutomationStepNotFoundExceptionUnmarshaller; static;
  end;
  
implementation

{ TAutomationStepNotFoundExceptionUnmarshaller }

function TAutomationStepNotFoundExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EAutomationStepNotFoundException;
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

function TAutomationStepNotFoundExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EAutomationStepNotFoundException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EAutomationStepNotFoundException;
begin
  UnmarshalledObject := EAutomationStepNotFoundException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TAutomationStepNotFoundExceptionUnmarshaller.Create;
begin
  FInstance := TAutomationStepNotFoundExceptionUnmarshaller.Create;
end;

class function TAutomationStepNotFoundExceptionUnmarshaller.Instance: IAutomationStepNotFoundExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
