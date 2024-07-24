unit AWS.SSM.Transform.InvalidDocumentContentExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvalidDocumentContentException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidDocumentContentExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidDocumentContentException, TJsonUnmarshallerContext>;
  
  TInvalidDocumentContentExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidDocumentContentException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidDocumentContentExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidDocumentContentException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidDocumentContentException; overload;
    class function Instance: IInvalidDocumentContentExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidDocumentContentExceptionUnmarshaller }

function TInvalidDocumentContentExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidDocumentContentException;
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

function TInvalidDocumentContentExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidDocumentContentException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidDocumentContentException;
begin
  UnmarshalledObject := EInvalidDocumentContentException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidDocumentContentExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidDocumentContentExceptionUnmarshaller.Create;
end;

class function TInvalidDocumentContentExceptionUnmarshaller.Instance: IInvalidDocumentContentExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
