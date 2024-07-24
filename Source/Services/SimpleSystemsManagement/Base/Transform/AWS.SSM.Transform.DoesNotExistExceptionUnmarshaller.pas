unit AWS.SSM.Transform.DoesNotExistExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.DoesNotExistException, 
  AWS.Internal.ErrorResponse;

type
  IDoesNotExistExceptionUnmarshaller = IErrorResponseUnmarshaller<EDoesNotExistException, TJsonUnmarshallerContext>;
  
  TDoesNotExistExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EDoesNotExistException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IDoesNotExistExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EDoesNotExistException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EDoesNotExistException; overload;
    class function Instance: IDoesNotExistExceptionUnmarshaller; static;
  end;
  
implementation

{ TDoesNotExistExceptionUnmarshaller }

function TDoesNotExistExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EDoesNotExistException;
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

function TDoesNotExistExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EDoesNotExistException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EDoesNotExistException;
begin
  UnmarshalledObject := EDoesNotExistException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TDoesNotExistExceptionUnmarshaller.Create;
begin
  FInstance := TDoesNotExistExceptionUnmarshaller.Create;
end;

class function TDoesNotExistExceptionUnmarshaller.Instance: IDoesNotExistExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
