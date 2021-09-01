unit AWS.Translate.Transform.InvalidParameterValueExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Translate.Model.InvalidParameterValueException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidParameterValueExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidParameterValueException, TJsonUnmarshallerContext>;
  
  TInvalidParameterValueExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidParameterValueException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidParameterValueExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidParameterValueException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidParameterValueException; overload;
    class function Instance: IInvalidParameterValueExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidParameterValueExceptionUnmarshaller }

function TInvalidParameterValueExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidParameterValueException;
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

function TInvalidParameterValueExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidParameterValueException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidParameterValueException;
begin
  UnmarshalledObject := EInvalidParameterValueException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidParameterValueExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidParameterValueExceptionUnmarshaller.Create;
end;

class function TInvalidParameterValueExceptionUnmarshaller.Instance: IInvalidParameterValueExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
