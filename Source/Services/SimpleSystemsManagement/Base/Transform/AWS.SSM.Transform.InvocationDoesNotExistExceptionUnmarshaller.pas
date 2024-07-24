unit AWS.SSM.Transform.InvocationDoesNotExistExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvocationDoesNotExistException, 
  AWS.Internal.ErrorResponse;

type
  IInvocationDoesNotExistExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvocationDoesNotExistException, TJsonUnmarshallerContext>;
  
  TInvocationDoesNotExistExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvocationDoesNotExistException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvocationDoesNotExistExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvocationDoesNotExistException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvocationDoesNotExistException; overload;
    class function Instance: IInvocationDoesNotExistExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvocationDoesNotExistExceptionUnmarshaller }

function TInvocationDoesNotExistExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvocationDoesNotExistException;
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

function TInvocationDoesNotExistExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvocationDoesNotExistException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvocationDoesNotExistException;
begin
  UnmarshalledObject := EInvocationDoesNotExistException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvocationDoesNotExistExceptionUnmarshaller.Create;
begin
  FInstance := TInvocationDoesNotExistExceptionUnmarshaller.Create;
end;

class function TInvocationDoesNotExistExceptionUnmarshaller.Instance: IInvocationDoesNotExistExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
