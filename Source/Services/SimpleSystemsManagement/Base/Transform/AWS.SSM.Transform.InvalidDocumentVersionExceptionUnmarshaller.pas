unit AWS.SSM.Transform.InvalidDocumentVersionExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvalidDocumentVersionException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidDocumentVersionExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidDocumentVersionException, TJsonUnmarshallerContext>;
  
  TInvalidDocumentVersionExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidDocumentVersionException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidDocumentVersionExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidDocumentVersionException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidDocumentVersionException; overload;
    class function Instance: IInvalidDocumentVersionExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidDocumentVersionExceptionUnmarshaller }

function TInvalidDocumentVersionExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidDocumentVersionException;
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

function TInvalidDocumentVersionExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidDocumentVersionException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidDocumentVersionException;
begin
  UnmarshalledObject := EInvalidDocumentVersionException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidDocumentVersionExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidDocumentVersionExceptionUnmarshaller.Create;
end;

class function TInvalidDocumentVersionExceptionUnmarshaller.Instance: IInvalidDocumentVersionExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
