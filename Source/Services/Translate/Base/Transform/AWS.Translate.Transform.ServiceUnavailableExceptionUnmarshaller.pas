unit AWS.Translate.Transform.ServiceUnavailableExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Translate.Model.ServiceUnavailableException, 
  AWS.Internal.ErrorResponse;

type
  IServiceUnavailableExceptionUnmarshaller = IErrorResponseUnmarshaller<EServiceUnavailableException, TJsonUnmarshallerContext>;
  
  TServiceUnavailableExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EServiceUnavailableException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IServiceUnavailableExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EServiceUnavailableException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EServiceUnavailableException; overload;
    class function Instance: IServiceUnavailableExceptionUnmarshaller; static;
  end;
  
implementation

{ TServiceUnavailableExceptionUnmarshaller }

function TServiceUnavailableExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EServiceUnavailableException;
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

function TServiceUnavailableExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EServiceUnavailableException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EServiceUnavailableException;
begin
  UnmarshalledObject := EServiceUnavailableException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TServiceUnavailableExceptionUnmarshaller.Create;
begin
  FInstance := TServiceUnavailableExceptionUnmarshaller.Create;
end;

class function TServiceUnavailableExceptionUnmarshaller.Instance: IServiceUnavailableExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
