unit AWS.SSM.Transform.DuplicateDocumentVersionNameExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.DuplicateDocumentVersionNameException, 
  AWS.Internal.ErrorResponse;

type
  IDuplicateDocumentVersionNameExceptionUnmarshaller = IErrorResponseUnmarshaller<EDuplicateDocumentVersionNameException, TJsonUnmarshallerContext>;
  
  TDuplicateDocumentVersionNameExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EDuplicateDocumentVersionNameException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IDuplicateDocumentVersionNameExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EDuplicateDocumentVersionNameException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EDuplicateDocumentVersionNameException; overload;
    class function Instance: IDuplicateDocumentVersionNameExceptionUnmarshaller; static;
  end;
  
implementation

{ TDuplicateDocumentVersionNameExceptionUnmarshaller }

function TDuplicateDocumentVersionNameExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EDuplicateDocumentVersionNameException;
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

function TDuplicateDocumentVersionNameExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EDuplicateDocumentVersionNameException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EDuplicateDocumentVersionNameException;
begin
  UnmarshalledObject := EDuplicateDocumentVersionNameException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TDuplicateDocumentVersionNameExceptionUnmarshaller.Create;
begin
  FInstance := TDuplicateDocumentVersionNameExceptionUnmarshaller.Create;
end;

class function TDuplicateDocumentVersionNameExceptionUnmarshaller.Instance: IDuplicateDocumentVersionNameExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
