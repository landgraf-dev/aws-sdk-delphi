unit AWS.SSM.Transform.InvalidAutomationStatusUpdateExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvalidAutomationStatusUpdateException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidAutomationStatusUpdateExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidAutomationStatusUpdateException, TJsonUnmarshallerContext>;
  
  TInvalidAutomationStatusUpdateExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidAutomationStatusUpdateException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidAutomationStatusUpdateExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidAutomationStatusUpdateException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidAutomationStatusUpdateException; overload;
    class function Instance: IInvalidAutomationStatusUpdateExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidAutomationStatusUpdateExceptionUnmarshaller }

function TInvalidAutomationStatusUpdateExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidAutomationStatusUpdateException;
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

function TInvalidAutomationStatusUpdateExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidAutomationStatusUpdateException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidAutomationStatusUpdateException;
begin
  UnmarshalledObject := EInvalidAutomationStatusUpdateException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidAutomationStatusUpdateExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidAutomationStatusUpdateExceptionUnmarshaller.Create;
end;

class function TInvalidAutomationStatusUpdateExceptionUnmarshaller.Instance: IInvalidAutomationStatusUpdateExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
