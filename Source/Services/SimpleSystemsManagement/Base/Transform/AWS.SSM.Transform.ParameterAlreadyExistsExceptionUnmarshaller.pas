unit AWS.SSM.Transform.ParameterAlreadyExistsExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.ParameterAlreadyExistsException, 
  AWS.Internal.ErrorResponse;

type
  IParameterAlreadyExistsExceptionUnmarshaller = IErrorResponseUnmarshaller<EParameterAlreadyExistsException, TJsonUnmarshallerContext>;
  
  TParameterAlreadyExistsExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EParameterAlreadyExistsException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IParameterAlreadyExistsExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EParameterAlreadyExistsException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EParameterAlreadyExistsException; overload;
    class function Instance: IParameterAlreadyExistsExceptionUnmarshaller; static;
  end;
  
implementation

{ TParameterAlreadyExistsExceptionUnmarshaller }

function TParameterAlreadyExistsExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EParameterAlreadyExistsException;
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

function TParameterAlreadyExistsExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EParameterAlreadyExistsException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EParameterAlreadyExistsException;
begin
  UnmarshalledObject := EParameterAlreadyExistsException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TParameterAlreadyExistsExceptionUnmarshaller.Create;
begin
  FInstance := TParameterAlreadyExistsExceptionUnmarshaller.Create;
end;

class function TParameterAlreadyExistsExceptionUnmarshaller.Instance: IParameterAlreadyExistsExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
