unit AWS.SSM.Transform.InvalidNextTokenExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvalidNextTokenException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidNextTokenExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidNextTokenException, TJsonUnmarshallerContext>;
  
  TInvalidNextTokenExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidNextTokenException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidNextTokenExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidNextTokenException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidNextTokenException; overload;
    class function Instance: IInvalidNextTokenExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidNextTokenExceptionUnmarshaller }

function TInvalidNextTokenExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidNextTokenException;
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

function TInvalidNextTokenExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidNextTokenException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidNextTokenException;
begin
  UnmarshalledObject := EInvalidNextTokenException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidNextTokenExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidNextTokenExceptionUnmarshaller.Create;
end;

class function TInvalidNextTokenExceptionUnmarshaller.Instance: IInvalidNextTokenExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
