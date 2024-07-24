unit AWS.SSM.Transform.ParameterMaxVersionLimitExceededExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.ParameterMaxVersionLimitExceededException, 
  AWS.Internal.ErrorResponse;

type
  IParameterMaxVersionLimitExceededExceptionUnmarshaller = IErrorResponseUnmarshaller<EParameterMaxVersionLimitExceededException, TJsonUnmarshallerContext>;
  
  TParameterMaxVersionLimitExceededExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EParameterMaxVersionLimitExceededException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IParameterMaxVersionLimitExceededExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EParameterMaxVersionLimitExceededException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EParameterMaxVersionLimitExceededException; overload;
    class function Instance: IParameterMaxVersionLimitExceededExceptionUnmarshaller; static;
  end;
  
implementation

{ TParameterMaxVersionLimitExceededExceptionUnmarshaller }

function TParameterMaxVersionLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EParameterMaxVersionLimitExceededException;
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

function TParameterMaxVersionLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EParameterMaxVersionLimitExceededException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EParameterMaxVersionLimitExceededException;
begin
  UnmarshalledObject := EParameterMaxVersionLimitExceededException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TParameterMaxVersionLimitExceededExceptionUnmarshaller.Create;
begin
  FInstance := TParameterMaxVersionLimitExceededExceptionUnmarshaller.Create;
end;

class function TParameterMaxVersionLimitExceededExceptionUnmarshaller.Instance: IParameterMaxVersionLimitExceededExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
