unit AWS.SSM.Transform.ItemContentMismatchExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.ItemContentMismatchException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IItemContentMismatchExceptionUnmarshaller = IErrorResponseUnmarshaller<EItemContentMismatchException, TJsonUnmarshallerContext>;
  
  TItemContentMismatchExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EItemContentMismatchException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IItemContentMismatchExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EItemContentMismatchException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EItemContentMismatchException; overload;
    class function Instance: IItemContentMismatchExceptionUnmarshaller; static;
  end;
  
implementation

{ TItemContentMismatchExceptionUnmarshaller }

function TItemContentMismatchExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EItemContentMismatchException;
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

function TItemContentMismatchExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EItemContentMismatchException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EItemContentMismatchException;
begin
  UnmarshalledObject := EItemContentMismatchException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('TypeName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.TypeName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TItemContentMismatchExceptionUnmarshaller.Create;
begin
  FInstance := TItemContentMismatchExceptionUnmarshaller.Create;
end;

class function TItemContentMismatchExceptionUnmarshaller.Instance: IItemContentMismatchExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
