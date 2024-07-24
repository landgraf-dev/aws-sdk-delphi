unit AWS.SSM.Transform.InvalidAutomationSignalExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvalidAutomationSignalException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidAutomationSignalExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidAutomationSignalException, TJsonUnmarshallerContext>;
  
  TInvalidAutomationSignalExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidAutomationSignalException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidAutomationSignalExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidAutomationSignalException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidAutomationSignalException; overload;
    class function Instance: IInvalidAutomationSignalExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidAutomationSignalExceptionUnmarshaller }

function TInvalidAutomationSignalExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidAutomationSignalException;
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

function TInvalidAutomationSignalExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidAutomationSignalException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidAutomationSignalException;
begin
  UnmarshalledObject := EInvalidAutomationSignalException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidAutomationSignalExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidAutomationSignalExceptionUnmarshaller.Create;
end;

class function TInvalidAutomationSignalExceptionUnmarshaller.Instance: IInvalidAutomationSignalExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
