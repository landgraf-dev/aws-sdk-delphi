unit AWS.SSM.Transform.InvalidDocumentOperationExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvalidDocumentOperationException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidDocumentOperationExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidDocumentOperationException, TJsonUnmarshallerContext>;
  
  TInvalidDocumentOperationExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidDocumentOperationException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidDocumentOperationExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidDocumentOperationException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidDocumentOperationException; overload;
    class function Instance: IInvalidDocumentOperationExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidDocumentOperationExceptionUnmarshaller }

function TInvalidDocumentOperationExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidDocumentOperationException;
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

function TInvalidDocumentOperationExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidDocumentOperationException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidDocumentOperationException;
begin
  UnmarshalledObject := EInvalidDocumentOperationException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidDocumentOperationExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidDocumentOperationExceptionUnmarshaller.Create;
end;

class function TInvalidDocumentOperationExceptionUnmarshaller.Instance: IInvalidDocumentOperationExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
