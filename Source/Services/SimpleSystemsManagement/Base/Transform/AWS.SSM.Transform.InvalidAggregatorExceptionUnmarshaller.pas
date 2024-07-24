unit AWS.SSM.Transform.InvalidAggregatorExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvalidAggregatorException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidAggregatorExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidAggregatorException, TJsonUnmarshallerContext>;
  
  TInvalidAggregatorExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidAggregatorException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidAggregatorExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidAggregatorException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidAggregatorException; overload;
    class function Instance: IInvalidAggregatorExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidAggregatorExceptionUnmarshaller }

function TInvalidAggregatorExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidAggregatorException;
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

function TInvalidAggregatorExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidAggregatorException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidAggregatorException;
begin
  UnmarshalledObject := EInvalidAggregatorException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidAggregatorExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidAggregatorExceptionUnmarshaller.Create;
end;

class function TInvalidAggregatorExceptionUnmarshaller.Instance: IInvalidAggregatorExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
