unit AWS.SSM.Transform.InvalidResourceTypeExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvalidResourceTypeException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidResourceTypeExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidResourceTypeException, TJsonUnmarshallerContext>;
  
  TInvalidResourceTypeExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidResourceTypeException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidResourceTypeExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidResourceTypeException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidResourceTypeException; overload;
    class function Instance: IInvalidResourceTypeExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidResourceTypeExceptionUnmarshaller }

function TInvalidResourceTypeExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidResourceTypeException;
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

function TInvalidResourceTypeExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidResourceTypeException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidResourceTypeException;
begin
  UnmarshalledObject := EInvalidResourceTypeException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidResourceTypeExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidResourceTypeExceptionUnmarshaller.Create;
end;

class function TInvalidResourceTypeExceptionUnmarshaller.Instance: IInvalidResourceTypeExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
