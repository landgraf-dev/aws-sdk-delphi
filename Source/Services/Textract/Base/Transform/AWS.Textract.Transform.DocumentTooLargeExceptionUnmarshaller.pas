unit AWS.Textract.Transform.DocumentTooLargeExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Textract.Model.DocumentTooLargeException, 
  AWS.Internal.ErrorResponse;

type
  IDocumentTooLargeExceptionUnmarshaller = IErrorResponseUnmarshaller<EDocumentTooLargeException, TJsonUnmarshallerContext>;
  
  TDocumentTooLargeExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EDocumentTooLargeException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IDocumentTooLargeExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EDocumentTooLargeException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EDocumentTooLargeException; overload;
    class function Instance: IDocumentTooLargeExceptionUnmarshaller; static;
  end;
  
implementation

{ TDocumentTooLargeExceptionUnmarshaller }

function TDocumentTooLargeExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EDocumentTooLargeException;
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

function TDocumentTooLargeExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EDocumentTooLargeException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EDocumentTooLargeException;
begin
  UnmarshalledObject := EDocumentTooLargeException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TDocumentTooLargeExceptionUnmarshaller.Create;
begin
  FInstance := TDocumentTooLargeExceptionUnmarshaller.Create;
end;

class function TDocumentTooLargeExceptionUnmarshaller.Instance: IDocumentTooLargeExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
