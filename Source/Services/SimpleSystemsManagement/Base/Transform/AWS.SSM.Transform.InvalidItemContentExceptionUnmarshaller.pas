unit AWS.SSM.Transform.InvalidItemContentExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvalidItemContentException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IInvalidItemContentExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidItemContentException, TJsonUnmarshallerContext>;
  
  TInvalidItemContentExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidItemContentException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidItemContentExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidItemContentException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidItemContentException; overload;
    class function Instance: IInvalidItemContentExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidItemContentExceptionUnmarshaller }

function TInvalidItemContentExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidItemContentException;
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

function TInvalidItemContentExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidItemContentException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidItemContentException;
begin
  UnmarshalledObject := EInvalidItemContentException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidItemContentExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidItemContentExceptionUnmarshaller.Create;
end;

class function TInvalidItemContentExceptionUnmarshaller.Instance: IInvalidItemContentExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
