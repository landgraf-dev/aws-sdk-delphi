unit AWS.LexRuntimeV2.Transform.ValidationExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.LexRuntimeV2.Model.ValidationException, 
  AWS.Internal.ErrorResponse;

type
  IValidationExceptionUnmarshaller = IErrorResponseUnmarshaller<EValidationException, TJsonUnmarshallerContext>;
  
  TValidationExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EValidationException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IValidationExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EValidationException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EValidationException; overload;
    class function Instance: IValidationExceptionUnmarshaller; static;
  end;
  
implementation

{ TValidationExceptionUnmarshaller }

function TValidationExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EValidationException;
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

function TValidationExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EValidationException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EValidationException;
begin
  UnmarshalledObject := EValidationException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TValidationExceptionUnmarshaller.Create;
begin
  FInstance := TValidationExceptionUnmarshaller.Create;
end;

class function TValidationExceptionUnmarshaller.Instance: IValidationExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
