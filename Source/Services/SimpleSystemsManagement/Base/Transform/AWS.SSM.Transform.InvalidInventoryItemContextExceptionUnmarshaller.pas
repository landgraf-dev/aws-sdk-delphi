unit AWS.SSM.Transform.InvalidInventoryItemContextExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvalidInventoryItemContextException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidInventoryItemContextExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidInventoryItemContextException, TJsonUnmarshallerContext>;
  
  TInvalidInventoryItemContextExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidInventoryItemContextException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidInventoryItemContextExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidInventoryItemContextException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidInventoryItemContextException; overload;
    class function Instance: IInvalidInventoryItemContextExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidInventoryItemContextExceptionUnmarshaller }

function TInvalidInventoryItemContextExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidInventoryItemContextException;
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

function TInvalidInventoryItemContextExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidInventoryItemContextException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidInventoryItemContextException;
begin
  UnmarshalledObject := EInvalidInventoryItemContextException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidInventoryItemContextExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidInventoryItemContextExceptionUnmarshaller.Create;
end;

class function TInvalidInventoryItemContextExceptionUnmarshaller.Instance: IInvalidInventoryItemContextExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
