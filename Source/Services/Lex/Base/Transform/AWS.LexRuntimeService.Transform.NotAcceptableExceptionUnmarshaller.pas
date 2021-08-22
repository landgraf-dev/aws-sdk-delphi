unit AWS.LexRuntimeService.Transform.NotAcceptableExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.LexRuntimeService.Model.NotAcceptableException, 
  AWS.Internal.ErrorResponse;

type
  INotAcceptableExceptionUnmarshaller = IErrorResponseUnmarshaller<ENotAcceptableException, TJsonUnmarshallerContext>;
  
  TNotAcceptableExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<ENotAcceptableException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: INotAcceptableExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): ENotAcceptableException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): ENotAcceptableException; overload;
    class function Instance: INotAcceptableExceptionUnmarshaller; static;
  end;
  
implementation

{ TNotAcceptableExceptionUnmarshaller }

function TNotAcceptableExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): ENotAcceptableException;
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

function TNotAcceptableExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): ENotAcceptableException;
var
  TargetDepth: Integer;
  UnmarshalledObject: ENotAcceptableException;
begin
  UnmarshalledObject := ENotAcceptableException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TNotAcceptableExceptionUnmarshaller.Create;
begin
  FInstance := TNotAcceptableExceptionUnmarshaller.Create;
end;

class function TNotAcceptableExceptionUnmarshaller.Instance: INotAcceptableExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
