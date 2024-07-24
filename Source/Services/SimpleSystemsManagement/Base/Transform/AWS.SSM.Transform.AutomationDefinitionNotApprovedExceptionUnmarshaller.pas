unit AWS.SSM.Transform.AutomationDefinitionNotApprovedExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.AutomationDefinitionNotApprovedException, 
  AWS.Internal.ErrorResponse;

type
  IAutomationDefinitionNotApprovedExceptionUnmarshaller = IErrorResponseUnmarshaller<EAutomationDefinitionNotApprovedException, TJsonUnmarshallerContext>;
  
  TAutomationDefinitionNotApprovedExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EAutomationDefinitionNotApprovedException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IAutomationDefinitionNotApprovedExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EAutomationDefinitionNotApprovedException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EAutomationDefinitionNotApprovedException; overload;
    class function Instance: IAutomationDefinitionNotApprovedExceptionUnmarshaller; static;
  end;
  
implementation

{ TAutomationDefinitionNotApprovedExceptionUnmarshaller }

function TAutomationDefinitionNotApprovedExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EAutomationDefinitionNotApprovedException;
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

function TAutomationDefinitionNotApprovedExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EAutomationDefinitionNotApprovedException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EAutomationDefinitionNotApprovedException;
begin
  UnmarshalledObject := EAutomationDefinitionNotApprovedException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TAutomationDefinitionNotApprovedExceptionUnmarshaller.Create;
begin
  FInstance := TAutomationDefinitionNotApprovedExceptionUnmarshaller.Create;
end;

class function TAutomationDefinitionNotApprovedExceptionUnmarshaller.Instance: IAutomationDefinitionNotApprovedExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
