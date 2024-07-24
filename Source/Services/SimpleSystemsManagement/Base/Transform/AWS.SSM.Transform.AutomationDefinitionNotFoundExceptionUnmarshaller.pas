unit AWS.SSM.Transform.AutomationDefinitionNotFoundExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.AutomationDefinitionNotFoundException, 
  AWS.Internal.ErrorResponse;

type
  IAutomationDefinitionNotFoundExceptionUnmarshaller = IErrorResponseUnmarshaller<EAutomationDefinitionNotFoundException, TJsonUnmarshallerContext>;
  
  TAutomationDefinitionNotFoundExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EAutomationDefinitionNotFoundException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IAutomationDefinitionNotFoundExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EAutomationDefinitionNotFoundException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EAutomationDefinitionNotFoundException; overload;
    class function Instance: IAutomationDefinitionNotFoundExceptionUnmarshaller; static;
  end;
  
implementation

{ TAutomationDefinitionNotFoundExceptionUnmarshaller }

function TAutomationDefinitionNotFoundExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EAutomationDefinitionNotFoundException;
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

function TAutomationDefinitionNotFoundExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EAutomationDefinitionNotFoundException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EAutomationDefinitionNotFoundException;
begin
  UnmarshalledObject := EAutomationDefinitionNotFoundException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TAutomationDefinitionNotFoundExceptionUnmarshaller.Create;
begin
  FInstance := TAutomationDefinitionNotFoundExceptionUnmarshaller.Create;
end;

class function TAutomationDefinitionNotFoundExceptionUnmarshaller.Instance: IAutomationDefinitionNotFoundExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
