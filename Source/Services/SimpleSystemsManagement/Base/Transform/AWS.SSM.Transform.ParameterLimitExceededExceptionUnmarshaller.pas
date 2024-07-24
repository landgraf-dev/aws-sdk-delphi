unit AWS.SSM.Transform.ParameterLimitExceededExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.ParameterLimitExceededException, 
  AWS.Internal.ErrorResponse;

type
  IParameterLimitExceededExceptionUnmarshaller = IErrorResponseUnmarshaller<EParameterLimitExceededException, TJsonUnmarshallerContext>;
  
  TParameterLimitExceededExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EParameterLimitExceededException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IParameterLimitExceededExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EParameterLimitExceededException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EParameterLimitExceededException; overload;
    class function Instance: IParameterLimitExceededExceptionUnmarshaller; static;
  end;
  
implementation

{ TParameterLimitExceededExceptionUnmarshaller }

function TParameterLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EParameterLimitExceededException;
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

function TParameterLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EParameterLimitExceededException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EParameterLimitExceededException;
begin
  UnmarshalledObject := EParameterLimitExceededException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TParameterLimitExceededExceptionUnmarshaller.Create;
begin
  FInstance := TParameterLimitExceededExceptionUnmarshaller.Create;
end;

class function TParameterLimitExceededExceptionUnmarshaller.Instance: IParameterLimitExceededExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
