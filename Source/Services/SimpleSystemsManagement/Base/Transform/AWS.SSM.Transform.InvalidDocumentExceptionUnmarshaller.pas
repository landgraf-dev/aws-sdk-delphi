unit AWS.SSM.Transform.InvalidDocumentExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvalidDocumentException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidDocumentExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidDocumentException, TJsonUnmarshallerContext>;
  
  TInvalidDocumentExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidDocumentException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidDocumentExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidDocumentException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidDocumentException; overload;
    class function Instance: IInvalidDocumentExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidDocumentExceptionUnmarshaller }

function TInvalidDocumentExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidDocumentException;
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

function TInvalidDocumentExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidDocumentException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidDocumentException;
begin
  UnmarshalledObject := EInvalidDocumentException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidDocumentExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidDocumentExceptionUnmarshaller.Create;
end;

class function TInvalidDocumentExceptionUnmarshaller.Instance: IInvalidDocumentExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
