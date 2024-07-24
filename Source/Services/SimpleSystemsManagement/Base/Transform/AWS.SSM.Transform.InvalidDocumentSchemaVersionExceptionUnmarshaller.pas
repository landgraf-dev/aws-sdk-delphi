unit AWS.SSM.Transform.InvalidDocumentSchemaVersionExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvalidDocumentSchemaVersionException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidDocumentSchemaVersionExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidDocumentSchemaVersionException, TJsonUnmarshallerContext>;
  
  TInvalidDocumentSchemaVersionExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidDocumentSchemaVersionException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidDocumentSchemaVersionExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidDocumentSchemaVersionException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidDocumentSchemaVersionException; overload;
    class function Instance: IInvalidDocumentSchemaVersionExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidDocumentSchemaVersionExceptionUnmarshaller }

function TInvalidDocumentSchemaVersionExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidDocumentSchemaVersionException;
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

function TInvalidDocumentSchemaVersionExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidDocumentSchemaVersionException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidDocumentSchemaVersionException;
begin
  UnmarshalledObject := EInvalidDocumentSchemaVersionException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidDocumentSchemaVersionExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidDocumentSchemaVersionExceptionUnmarshaller.Create;
end;

class function TInvalidDocumentSchemaVersionExceptionUnmarshaller.Instance: IInvalidDocumentSchemaVersionExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
