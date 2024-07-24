unit AWS.SSM.Transform.InvalidFilterOptionExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvalidFilterOptionException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidFilterOptionExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidFilterOptionException, TJsonUnmarshallerContext>;
  
  TInvalidFilterOptionExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidFilterOptionException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidFilterOptionExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidFilterOptionException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidFilterOptionException; overload;
    class function Instance: IInvalidFilterOptionExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidFilterOptionExceptionUnmarshaller }

function TInvalidFilterOptionExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidFilterOptionException;
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

function TInvalidFilterOptionExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidFilterOptionException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidFilterOptionException;
begin
  UnmarshalledObject := EInvalidFilterOptionException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidFilterOptionExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidFilterOptionExceptionUnmarshaller.Create;
end;

class function TInvalidFilterOptionExceptionUnmarshaller.Instance: IInvalidFilterOptionExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
