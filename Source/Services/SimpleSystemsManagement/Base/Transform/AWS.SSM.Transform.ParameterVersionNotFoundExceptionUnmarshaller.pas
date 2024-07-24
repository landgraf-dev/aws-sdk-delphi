unit AWS.SSM.Transform.ParameterVersionNotFoundExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.ParameterVersionNotFoundException, 
  AWS.Internal.ErrorResponse;

type
  IParameterVersionNotFoundExceptionUnmarshaller = IErrorResponseUnmarshaller<EParameterVersionNotFoundException, TJsonUnmarshallerContext>;
  
  TParameterVersionNotFoundExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EParameterVersionNotFoundException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IParameterVersionNotFoundExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EParameterVersionNotFoundException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EParameterVersionNotFoundException; overload;
    class function Instance: IParameterVersionNotFoundExceptionUnmarshaller; static;
  end;
  
implementation

{ TParameterVersionNotFoundExceptionUnmarshaller }

function TParameterVersionNotFoundExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EParameterVersionNotFoundException;
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

function TParameterVersionNotFoundExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EParameterVersionNotFoundException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EParameterVersionNotFoundException;
begin
  UnmarshalledObject := EParameterVersionNotFoundException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TParameterVersionNotFoundExceptionUnmarshaller.Create;
begin
  FInstance := TParameterVersionNotFoundExceptionUnmarshaller.Create;
end;

class function TParameterVersionNotFoundExceptionUnmarshaller.Instance: IParameterVersionNotFoundExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
