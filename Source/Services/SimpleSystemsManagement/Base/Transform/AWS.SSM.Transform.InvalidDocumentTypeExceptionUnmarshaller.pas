unit AWS.SSM.Transform.InvalidDocumentTypeExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvalidDocumentTypeException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidDocumentTypeExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidDocumentTypeException, TJsonUnmarshallerContext>;
  
  TInvalidDocumentTypeExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidDocumentTypeException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidDocumentTypeExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidDocumentTypeException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidDocumentTypeException; overload;
    class function Instance: IInvalidDocumentTypeExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidDocumentTypeExceptionUnmarshaller }

function TInvalidDocumentTypeExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidDocumentTypeException;
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

function TInvalidDocumentTypeExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidDocumentTypeException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidDocumentTypeException;
begin
  UnmarshalledObject := EInvalidDocumentTypeException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidDocumentTypeExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidDocumentTypeExceptionUnmarshaller.Create;
end;

class function TInvalidDocumentTypeExceptionUnmarshaller.Instance: IInvalidDocumentTypeExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
