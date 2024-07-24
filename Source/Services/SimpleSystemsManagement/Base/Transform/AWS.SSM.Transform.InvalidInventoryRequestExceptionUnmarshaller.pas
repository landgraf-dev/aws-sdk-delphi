unit AWS.SSM.Transform.InvalidInventoryRequestExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvalidInventoryRequestException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidInventoryRequestExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidInventoryRequestException, TJsonUnmarshallerContext>;
  
  TInvalidInventoryRequestExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidInventoryRequestException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidInventoryRequestExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidInventoryRequestException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidInventoryRequestException; overload;
    class function Instance: IInvalidInventoryRequestExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidInventoryRequestExceptionUnmarshaller }

function TInvalidInventoryRequestExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidInventoryRequestException;
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

function TInvalidInventoryRequestExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidInventoryRequestException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidInventoryRequestException;
begin
  UnmarshalledObject := EInvalidInventoryRequestException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidInventoryRequestExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidInventoryRequestExceptionUnmarshaller.Create;
end;

class function TInvalidInventoryRequestExceptionUnmarshaller.Instance: IInvalidInventoryRequestExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
