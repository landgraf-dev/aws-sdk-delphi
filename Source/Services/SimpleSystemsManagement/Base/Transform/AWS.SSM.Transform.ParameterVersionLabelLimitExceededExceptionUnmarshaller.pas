unit AWS.SSM.Transform.ParameterVersionLabelLimitExceededExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.ParameterVersionLabelLimitExceededException, 
  AWS.Internal.ErrorResponse;

type
  IParameterVersionLabelLimitExceededExceptionUnmarshaller = IErrorResponseUnmarshaller<EParameterVersionLabelLimitExceededException, TJsonUnmarshallerContext>;
  
  TParameterVersionLabelLimitExceededExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EParameterVersionLabelLimitExceededException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IParameterVersionLabelLimitExceededExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EParameterVersionLabelLimitExceededException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EParameterVersionLabelLimitExceededException; overload;
    class function Instance: IParameterVersionLabelLimitExceededExceptionUnmarshaller; static;
  end;
  
implementation

{ TParameterVersionLabelLimitExceededExceptionUnmarshaller }

function TParameterVersionLabelLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EParameterVersionLabelLimitExceededException;
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

function TParameterVersionLabelLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EParameterVersionLabelLimitExceededException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EParameterVersionLabelLimitExceededException;
begin
  UnmarshalledObject := EParameterVersionLabelLimitExceededException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TParameterVersionLabelLimitExceededExceptionUnmarshaller.Create;
begin
  FInstance := TParameterVersionLabelLimitExceededExceptionUnmarshaller.Create;
end;

class function TParameterVersionLabelLimitExceededExceptionUnmarshaller.Instance: IParameterVersionLabelLimitExceededExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
