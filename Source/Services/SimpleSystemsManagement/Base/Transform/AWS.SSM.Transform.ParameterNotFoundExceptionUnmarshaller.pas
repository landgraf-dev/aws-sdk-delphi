unit AWS.SSM.Transform.ParameterNotFoundExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.ParameterNotFoundException, 
  AWS.Internal.ErrorResponse;

type
  IParameterNotFoundExceptionUnmarshaller = IErrorResponseUnmarshaller<EParameterNotFoundException, TJsonUnmarshallerContext>;
  
  TParameterNotFoundExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EParameterNotFoundException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IParameterNotFoundExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EParameterNotFoundException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EParameterNotFoundException; overload;
    class function Instance: IParameterNotFoundExceptionUnmarshaller; static;
  end;
  
implementation

{ TParameterNotFoundExceptionUnmarshaller }

function TParameterNotFoundExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EParameterNotFoundException;
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

function TParameterNotFoundExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EParameterNotFoundException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EParameterNotFoundException;
begin
  UnmarshalledObject := EParameterNotFoundException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TParameterNotFoundExceptionUnmarshaller.Create;
begin
  FInstance := TParameterNotFoundExceptionUnmarshaller.Create;
end;

class function TParameterNotFoundExceptionUnmarshaller.Instance: IParameterNotFoundExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
