unit AWS.Polly.Transform.EngineNotSupportedExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Polly.Model.EngineNotSupportedException, 
  AWS.Internal.ErrorResponse;

type
  IEngineNotSupportedExceptionUnmarshaller = IErrorResponseUnmarshaller<EEngineNotSupportedException, TJsonUnmarshallerContext>;
  
  TEngineNotSupportedExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EEngineNotSupportedException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IEngineNotSupportedExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EEngineNotSupportedException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EEngineNotSupportedException; overload;
    class function Instance: IEngineNotSupportedExceptionUnmarshaller; static;
  end;
  
implementation

{ TEngineNotSupportedExceptionUnmarshaller }

function TEngineNotSupportedExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EEngineNotSupportedException;
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

function TEngineNotSupportedExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EEngineNotSupportedException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EEngineNotSupportedException;
begin
  UnmarshalledObject := EEngineNotSupportedException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TEngineNotSupportedExceptionUnmarshaller.Create;
begin
  FInstance := TEngineNotSupportedExceptionUnmarshaller.Create;
end;

class function TEngineNotSupportedExceptionUnmarshaller.Instance: IEngineNotSupportedExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
