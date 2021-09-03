unit AWS.Rekognition.Transform.IdempotentParameterMismatchExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Rekognition.Model.IdempotentParameterMismatchException, 
  AWS.Internal.ErrorResponse;

type
  IIdempotentParameterMismatchExceptionUnmarshaller = IErrorResponseUnmarshaller<EIdempotentParameterMismatchException, TJsonUnmarshallerContext>;
  
  TIdempotentParameterMismatchExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EIdempotentParameterMismatchException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IIdempotentParameterMismatchExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EIdempotentParameterMismatchException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EIdempotentParameterMismatchException; overload;
    class function Instance: IIdempotentParameterMismatchExceptionUnmarshaller; static;
  end;
  
implementation

{ TIdempotentParameterMismatchExceptionUnmarshaller }

function TIdempotentParameterMismatchExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EIdempotentParameterMismatchException;
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

function TIdempotentParameterMismatchExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EIdempotentParameterMismatchException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EIdempotentParameterMismatchException;
begin
  UnmarshalledObject := EIdempotentParameterMismatchException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TIdempotentParameterMismatchExceptionUnmarshaller.Create;
begin
  FInstance := TIdempotentParameterMismatchExceptionUnmarshaller.Create;
end;

class function TIdempotentParameterMismatchExceptionUnmarshaller.Instance: IIdempotentParameterMismatchExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
