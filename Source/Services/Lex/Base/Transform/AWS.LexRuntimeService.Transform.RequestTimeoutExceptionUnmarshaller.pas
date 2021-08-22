unit AWS.LexRuntimeService.Transform.RequestTimeoutExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.LexRuntimeService.Model.RequestTimeoutException, 
  AWS.Internal.ErrorResponse;

type
  IRequestTimeoutExceptionUnmarshaller = IErrorResponseUnmarshaller<ERequestTimeoutException, TJsonUnmarshallerContext>;
  
  TRequestTimeoutExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<ERequestTimeoutException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IRequestTimeoutExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): ERequestTimeoutException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): ERequestTimeoutException; overload;
    class function Instance: IRequestTimeoutExceptionUnmarshaller; static;
  end;
  
implementation

{ TRequestTimeoutExceptionUnmarshaller }

function TRequestTimeoutExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): ERequestTimeoutException;
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

function TRequestTimeoutExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): ERequestTimeoutException;
var
  TargetDepth: Integer;
  UnmarshalledObject: ERequestTimeoutException;
begin
  UnmarshalledObject := ERequestTimeoutException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TRequestTimeoutExceptionUnmarshaller.Create;
begin
  FInstance := TRequestTimeoutExceptionUnmarshaller.Create;
end;

class function TRequestTimeoutExceptionUnmarshaller.Instance: IRequestTimeoutExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
