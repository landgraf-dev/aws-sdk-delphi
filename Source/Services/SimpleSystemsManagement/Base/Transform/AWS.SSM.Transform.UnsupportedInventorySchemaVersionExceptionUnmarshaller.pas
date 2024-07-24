unit AWS.SSM.Transform.UnsupportedInventorySchemaVersionExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.UnsupportedInventorySchemaVersionException, 
  AWS.Internal.ErrorResponse;

type
  IUnsupportedInventorySchemaVersionExceptionUnmarshaller = IErrorResponseUnmarshaller<EUnsupportedInventorySchemaVersionException, TJsonUnmarshallerContext>;
  
  TUnsupportedInventorySchemaVersionExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EUnsupportedInventorySchemaVersionException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IUnsupportedInventorySchemaVersionExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EUnsupportedInventorySchemaVersionException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EUnsupportedInventorySchemaVersionException; overload;
    class function Instance: IUnsupportedInventorySchemaVersionExceptionUnmarshaller; static;
  end;
  
implementation

{ TUnsupportedInventorySchemaVersionExceptionUnmarshaller }

function TUnsupportedInventorySchemaVersionExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EUnsupportedInventorySchemaVersionException;
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

function TUnsupportedInventorySchemaVersionExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EUnsupportedInventorySchemaVersionException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EUnsupportedInventorySchemaVersionException;
begin
  UnmarshalledObject := EUnsupportedInventorySchemaVersionException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TUnsupportedInventorySchemaVersionExceptionUnmarshaller.Create;
begin
  FInstance := TUnsupportedInventorySchemaVersionExceptionUnmarshaller.Create;
end;

class function TUnsupportedInventorySchemaVersionExceptionUnmarshaller.Instance: IUnsupportedInventorySchemaVersionExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
