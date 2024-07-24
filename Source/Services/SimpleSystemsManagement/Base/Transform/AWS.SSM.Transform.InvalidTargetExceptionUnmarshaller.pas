unit AWS.SSM.Transform.InvalidTargetExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvalidTargetException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidTargetExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidTargetException, TJsonUnmarshallerContext>;
  
  TInvalidTargetExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidTargetException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidTargetExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidTargetException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidTargetException; overload;
    class function Instance: IInvalidTargetExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidTargetExceptionUnmarshaller }

function TInvalidTargetExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidTargetException;
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

function TInvalidTargetExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidTargetException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidTargetException;
begin
  UnmarshalledObject := EInvalidTargetException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidTargetExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidTargetExceptionUnmarshaller.Create;
end;

class function TInvalidTargetExceptionUnmarshaller.Instance: IInvalidTargetExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
