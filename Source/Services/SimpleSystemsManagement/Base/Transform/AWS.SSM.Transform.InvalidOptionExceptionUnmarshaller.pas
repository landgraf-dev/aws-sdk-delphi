unit AWS.SSM.Transform.InvalidOptionExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvalidOptionException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidOptionExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidOptionException, TJsonUnmarshallerContext>;
  
  TInvalidOptionExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidOptionException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidOptionExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidOptionException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidOptionException; overload;
    class function Instance: IInvalidOptionExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidOptionExceptionUnmarshaller }

function TInvalidOptionExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidOptionException;
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

function TInvalidOptionExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidOptionException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidOptionException;
begin
  UnmarshalledObject := EInvalidOptionException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidOptionExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidOptionExceptionUnmarshaller.Create;
end;

class function TInvalidOptionExceptionUnmarshaller.Instance: IInvalidOptionExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
