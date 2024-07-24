unit AWS.SSM.Transform.MaxDocumentSizeExceededExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.MaxDocumentSizeExceededException, 
  AWS.Internal.ErrorResponse;

type
  IMaxDocumentSizeExceededExceptionUnmarshaller = IErrorResponseUnmarshaller<EMaxDocumentSizeExceededException, TJsonUnmarshallerContext>;
  
  TMaxDocumentSizeExceededExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EMaxDocumentSizeExceededException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IMaxDocumentSizeExceededExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EMaxDocumentSizeExceededException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EMaxDocumentSizeExceededException; overload;
    class function Instance: IMaxDocumentSizeExceededExceptionUnmarshaller; static;
  end;
  
implementation

{ TMaxDocumentSizeExceededExceptionUnmarshaller }

function TMaxDocumentSizeExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EMaxDocumentSizeExceededException;
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

function TMaxDocumentSizeExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EMaxDocumentSizeExceededException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EMaxDocumentSizeExceededException;
begin
  UnmarshalledObject := EMaxDocumentSizeExceededException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TMaxDocumentSizeExceededExceptionUnmarshaller.Create;
begin
  FInstance := TMaxDocumentSizeExceededExceptionUnmarshaller.Create;
end;

class function TMaxDocumentSizeExceededExceptionUnmarshaller.Instance: IMaxDocumentSizeExceededExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
