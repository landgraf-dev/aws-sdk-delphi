unit AWS.SSM.Transform.InvalidDeleteInventoryParametersExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvalidDeleteInventoryParametersException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidDeleteInventoryParametersExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidDeleteInventoryParametersException, TJsonUnmarshallerContext>;
  
  TInvalidDeleteInventoryParametersExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidDeleteInventoryParametersException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidDeleteInventoryParametersExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidDeleteInventoryParametersException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidDeleteInventoryParametersException; overload;
    class function Instance: IInvalidDeleteInventoryParametersExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidDeleteInventoryParametersExceptionUnmarshaller }

function TInvalidDeleteInventoryParametersExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidDeleteInventoryParametersException;
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

function TInvalidDeleteInventoryParametersExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidDeleteInventoryParametersException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidDeleteInventoryParametersException;
begin
  UnmarshalledObject := EInvalidDeleteInventoryParametersException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidDeleteInventoryParametersExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidDeleteInventoryParametersExceptionUnmarshaller.Create;
end;

class function TInvalidDeleteInventoryParametersExceptionUnmarshaller.Instance: IInvalidDeleteInventoryParametersExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
