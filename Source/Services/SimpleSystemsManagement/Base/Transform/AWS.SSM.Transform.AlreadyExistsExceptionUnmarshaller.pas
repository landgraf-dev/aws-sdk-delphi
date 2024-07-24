unit AWS.SSM.Transform.AlreadyExistsExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.AlreadyExistsException, 
  AWS.Internal.ErrorResponse;

type
  IAlreadyExistsExceptionUnmarshaller = IErrorResponseUnmarshaller<EAlreadyExistsException, TJsonUnmarshallerContext>;
  
  TAlreadyExistsExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EAlreadyExistsException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IAlreadyExistsExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EAlreadyExistsException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EAlreadyExistsException; overload;
    class function Instance: IAlreadyExistsExceptionUnmarshaller; static;
  end;
  
implementation

{ TAlreadyExistsExceptionUnmarshaller }

function TAlreadyExistsExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EAlreadyExistsException;
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

function TAlreadyExistsExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EAlreadyExistsException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EAlreadyExistsException;
begin
  UnmarshalledObject := EAlreadyExistsException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TAlreadyExistsExceptionUnmarshaller.Create;
begin
  FInstance := TAlreadyExistsExceptionUnmarshaller.Create;
end;

class function TAlreadyExistsExceptionUnmarshaller.Instance: IAlreadyExistsExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
