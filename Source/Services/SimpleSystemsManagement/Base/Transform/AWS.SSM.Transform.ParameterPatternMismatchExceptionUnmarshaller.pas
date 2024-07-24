unit AWS.SSM.Transform.ParameterPatternMismatchExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.ParameterPatternMismatchException, 
  AWS.Internal.ErrorResponse;

type
  IParameterPatternMismatchExceptionUnmarshaller = IErrorResponseUnmarshaller<EParameterPatternMismatchException, TJsonUnmarshallerContext>;
  
  TParameterPatternMismatchExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EParameterPatternMismatchException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IParameterPatternMismatchExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EParameterPatternMismatchException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EParameterPatternMismatchException; overload;
    class function Instance: IParameterPatternMismatchExceptionUnmarshaller; static;
  end;
  
implementation

{ TParameterPatternMismatchExceptionUnmarshaller }

function TParameterPatternMismatchExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EParameterPatternMismatchException;
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

function TParameterPatternMismatchExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EParameterPatternMismatchException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EParameterPatternMismatchException;
begin
  UnmarshalledObject := EParameterPatternMismatchException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TParameterPatternMismatchExceptionUnmarshaller.Create;
begin
  FInstance := TParameterPatternMismatchExceptionUnmarshaller.Create;
end;

class function TParameterPatternMismatchExceptionUnmarshaller.Instance: IParameterPatternMismatchExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
