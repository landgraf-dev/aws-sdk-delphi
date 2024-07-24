unit AWS.SSM.Transform.AutomationDefinitionVersionNotFoundExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.AutomationDefinitionVersionNotFoundException, 
  AWS.Internal.ErrorResponse;

type
  IAutomationDefinitionVersionNotFoundExceptionUnmarshaller = IErrorResponseUnmarshaller<EAutomationDefinitionVersionNotFoundException, TJsonUnmarshallerContext>;
  
  TAutomationDefinitionVersionNotFoundExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EAutomationDefinitionVersionNotFoundException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IAutomationDefinitionVersionNotFoundExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EAutomationDefinitionVersionNotFoundException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EAutomationDefinitionVersionNotFoundException; overload;
    class function Instance: IAutomationDefinitionVersionNotFoundExceptionUnmarshaller; static;
  end;
  
implementation

{ TAutomationDefinitionVersionNotFoundExceptionUnmarshaller }

function TAutomationDefinitionVersionNotFoundExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EAutomationDefinitionVersionNotFoundException;
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

function TAutomationDefinitionVersionNotFoundExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EAutomationDefinitionVersionNotFoundException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EAutomationDefinitionVersionNotFoundException;
begin
  UnmarshalledObject := EAutomationDefinitionVersionNotFoundException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TAutomationDefinitionVersionNotFoundExceptionUnmarshaller.Create;
begin
  FInstance := TAutomationDefinitionVersionNotFoundExceptionUnmarshaller.Create;
end;

class function TAutomationDefinitionVersionNotFoundExceptionUnmarshaller.Instance: IAutomationDefinitionVersionNotFoundExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
