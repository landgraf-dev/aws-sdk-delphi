unit AWS.SSM.Transform.DocumentVersionLimitExceededExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.DocumentVersionLimitExceededException, 
  AWS.Internal.ErrorResponse;

type
  IDocumentVersionLimitExceededExceptionUnmarshaller = IErrorResponseUnmarshaller<EDocumentVersionLimitExceededException, TJsonUnmarshallerContext>;
  
  TDocumentVersionLimitExceededExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EDocumentVersionLimitExceededException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IDocumentVersionLimitExceededExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EDocumentVersionLimitExceededException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EDocumentVersionLimitExceededException; overload;
    class function Instance: IDocumentVersionLimitExceededExceptionUnmarshaller; static;
  end;
  
implementation

{ TDocumentVersionLimitExceededExceptionUnmarshaller }

function TDocumentVersionLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EDocumentVersionLimitExceededException;
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

function TDocumentVersionLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EDocumentVersionLimitExceededException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EDocumentVersionLimitExceededException;
begin
  UnmarshalledObject := EDocumentVersionLimitExceededException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TDocumentVersionLimitExceededExceptionUnmarshaller.Create;
begin
  FInstance := TDocumentVersionLimitExceededExceptionUnmarshaller.Create;
end;

class function TDocumentVersionLimitExceededExceptionUnmarshaller.Instance: IDocumentVersionLimitExceededExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
