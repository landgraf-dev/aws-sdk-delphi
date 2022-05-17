unit AWS.Textract.Transform.BadDocumentExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Textract.Model.BadDocumentException, 
  AWS.Internal.ErrorResponse;

type
  IBadDocumentExceptionUnmarshaller = IErrorResponseUnmarshaller<EBadDocumentException, TJsonUnmarshallerContext>;
  
  TBadDocumentExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EBadDocumentException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IBadDocumentExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EBadDocumentException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EBadDocumentException; overload;
    class function Instance: IBadDocumentExceptionUnmarshaller; static;
  end;
  
implementation

{ TBadDocumentExceptionUnmarshaller }

function TBadDocumentExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EBadDocumentException;
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

function TBadDocumentExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EBadDocumentException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EBadDocumentException;
begin
  UnmarshalledObject := EBadDocumentException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TBadDocumentExceptionUnmarshaller.Create;
begin
  FInstance := TBadDocumentExceptionUnmarshaller.Create;
end;

class function TBadDocumentExceptionUnmarshaller.Instance: IBadDocumentExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
