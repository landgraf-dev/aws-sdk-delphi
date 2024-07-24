unit AWS.SSM.Transform.DocumentLimitExceededExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.DocumentLimitExceededException, 
  AWS.Internal.ErrorResponse;

type
  IDocumentLimitExceededExceptionUnmarshaller = IErrorResponseUnmarshaller<EDocumentLimitExceededException, TJsonUnmarshallerContext>;
  
  TDocumentLimitExceededExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EDocumentLimitExceededException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IDocumentLimitExceededExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EDocumentLimitExceededException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EDocumentLimitExceededException; overload;
    class function Instance: IDocumentLimitExceededExceptionUnmarshaller; static;
  end;
  
implementation

{ TDocumentLimitExceededExceptionUnmarshaller }

function TDocumentLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EDocumentLimitExceededException;
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

function TDocumentLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EDocumentLimitExceededException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EDocumentLimitExceededException;
begin
  UnmarshalledObject := EDocumentLimitExceededException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TDocumentLimitExceededExceptionUnmarshaller.Create;
begin
  FInstance := TDocumentLimitExceededExceptionUnmarshaller.Create;
end;

class function TDocumentLimitExceededExceptionUnmarshaller.Instance: IDocumentLimitExceededExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
