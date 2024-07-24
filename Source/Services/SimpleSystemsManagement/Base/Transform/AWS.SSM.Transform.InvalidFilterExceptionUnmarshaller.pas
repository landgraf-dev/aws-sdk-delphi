unit AWS.SSM.Transform.InvalidFilterExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvalidFilterException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidFilterExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidFilterException, TJsonUnmarshallerContext>;
  
  TInvalidFilterExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidFilterException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidFilterExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidFilterException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidFilterException; overload;
    class function Instance: IInvalidFilterExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidFilterExceptionUnmarshaller }

function TInvalidFilterExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidFilterException;
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

function TInvalidFilterExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidFilterException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidFilterException;
begin
  UnmarshalledObject := EInvalidFilterException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidFilterExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidFilterExceptionUnmarshaller.Create;
end;

class function TInvalidFilterExceptionUnmarshaller.Instance: IInvalidFilterExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
