unit AWS.SSM.Transform.UnsupportedInventoryItemContextExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.UnsupportedInventoryItemContextException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IUnsupportedInventoryItemContextExceptionUnmarshaller = IErrorResponseUnmarshaller<EUnsupportedInventoryItemContextException, TJsonUnmarshallerContext>;
  
  TUnsupportedInventoryItemContextExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EUnsupportedInventoryItemContextException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IUnsupportedInventoryItemContextExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EUnsupportedInventoryItemContextException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EUnsupportedInventoryItemContextException; overload;
    class function Instance: IUnsupportedInventoryItemContextExceptionUnmarshaller; static;
  end;
  
implementation

{ TUnsupportedInventoryItemContextExceptionUnmarshaller }

function TUnsupportedInventoryItemContextExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EUnsupportedInventoryItemContextException;
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

function TUnsupportedInventoryItemContextExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EUnsupportedInventoryItemContextException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EUnsupportedInventoryItemContextException;
begin
  UnmarshalledObject := EUnsupportedInventoryItemContextException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TUnsupportedInventoryItemContextExceptionUnmarshaller.Create;
begin
  FInstance := TUnsupportedInventoryItemContextExceptionUnmarshaller.Create;
end;

class function TUnsupportedInventoryItemContextExceptionUnmarshaller.Instance: IUnsupportedInventoryItemContextExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
