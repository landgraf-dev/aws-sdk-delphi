unit AWS.Textract.Transform.UnsupportedDocumentExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Textract.Model.UnsupportedDocumentException, 
  AWS.Internal.ErrorResponse;

type
  IUnsupportedDocumentExceptionUnmarshaller = IErrorResponseUnmarshaller<EUnsupportedDocumentException, TJsonUnmarshallerContext>;
  
  TUnsupportedDocumentExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EUnsupportedDocumentException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IUnsupportedDocumentExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EUnsupportedDocumentException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EUnsupportedDocumentException; overload;
    class function Instance: IUnsupportedDocumentExceptionUnmarshaller; static;
  end;
  
implementation

{ TUnsupportedDocumentExceptionUnmarshaller }

function TUnsupportedDocumentExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EUnsupportedDocumentException;
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

function TUnsupportedDocumentExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EUnsupportedDocumentException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EUnsupportedDocumentException;
begin
  UnmarshalledObject := EUnsupportedDocumentException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TUnsupportedDocumentExceptionUnmarshaller.Create;
begin
  FInstance := TUnsupportedDocumentExceptionUnmarshaller.Create;
end;

class function TUnsupportedDocumentExceptionUnmarshaller.Instance: IUnsupportedDocumentExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
