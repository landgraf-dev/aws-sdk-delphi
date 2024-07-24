unit AWS.SSM.Transform.InvalidFilterValueExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvalidFilterValueException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidFilterValueExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidFilterValueException, TJsonUnmarshallerContext>;
  
  TInvalidFilterValueExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidFilterValueException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidFilterValueExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidFilterValueException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidFilterValueException; overload;
    class function Instance: IInvalidFilterValueExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidFilterValueExceptionUnmarshaller }

function TInvalidFilterValueExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidFilterValueException;
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

function TInvalidFilterValueExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidFilterValueException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidFilterValueException;
begin
  UnmarshalledObject := EInvalidFilterValueException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidFilterValueExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidFilterValueExceptionUnmarshaller.Create;
end;

class function TInvalidFilterValueExceptionUnmarshaller.Instance: IInvalidFilterValueExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
