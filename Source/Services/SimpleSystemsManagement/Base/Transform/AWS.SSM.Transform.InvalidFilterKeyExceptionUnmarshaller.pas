unit AWS.SSM.Transform.InvalidFilterKeyExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvalidFilterKeyException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidFilterKeyExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidFilterKeyException, TJsonUnmarshallerContext>;
  
  TInvalidFilterKeyExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidFilterKeyException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidFilterKeyExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidFilterKeyException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidFilterKeyException; overload;
    class function Instance: IInvalidFilterKeyExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidFilterKeyExceptionUnmarshaller }

function TInvalidFilterKeyExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidFilterKeyException;
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

function TInvalidFilterKeyExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidFilterKeyException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidFilterKeyException;
begin
  UnmarshalledObject := EInvalidFilterKeyException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidFilterKeyExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidFilterKeyExceptionUnmarshaller.Create;
end;

class function TInvalidFilterKeyExceptionUnmarshaller.Instance: IInvalidFilterKeyExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
