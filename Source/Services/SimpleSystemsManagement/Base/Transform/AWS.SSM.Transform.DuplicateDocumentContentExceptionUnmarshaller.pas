unit AWS.SSM.Transform.DuplicateDocumentContentExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.DuplicateDocumentContentException, 
  AWS.Internal.ErrorResponse;

type
  IDuplicateDocumentContentExceptionUnmarshaller = IErrorResponseUnmarshaller<EDuplicateDocumentContentException, TJsonUnmarshallerContext>;
  
  TDuplicateDocumentContentExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EDuplicateDocumentContentException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IDuplicateDocumentContentExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EDuplicateDocumentContentException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EDuplicateDocumentContentException; overload;
    class function Instance: IDuplicateDocumentContentExceptionUnmarshaller; static;
  end;
  
implementation

{ TDuplicateDocumentContentExceptionUnmarshaller }

function TDuplicateDocumentContentExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EDuplicateDocumentContentException;
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

function TDuplicateDocumentContentExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EDuplicateDocumentContentException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EDuplicateDocumentContentException;
begin
  UnmarshalledObject := EDuplicateDocumentContentException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TDuplicateDocumentContentExceptionUnmarshaller.Create;
begin
  FInstance := TDuplicateDocumentContentExceptionUnmarshaller.Create;
end;

class function TDuplicateDocumentContentExceptionUnmarshaller.Instance: IDuplicateDocumentContentExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
