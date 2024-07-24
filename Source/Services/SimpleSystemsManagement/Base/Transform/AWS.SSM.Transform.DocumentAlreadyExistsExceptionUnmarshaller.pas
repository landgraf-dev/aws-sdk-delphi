unit AWS.SSM.Transform.DocumentAlreadyExistsExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.DocumentAlreadyExistsException, 
  AWS.Internal.ErrorResponse;

type
  IDocumentAlreadyExistsExceptionUnmarshaller = IErrorResponseUnmarshaller<EDocumentAlreadyExistsException, TJsonUnmarshallerContext>;
  
  TDocumentAlreadyExistsExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EDocumentAlreadyExistsException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IDocumentAlreadyExistsExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EDocumentAlreadyExistsException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EDocumentAlreadyExistsException; overload;
    class function Instance: IDocumentAlreadyExistsExceptionUnmarshaller; static;
  end;
  
implementation

{ TDocumentAlreadyExistsExceptionUnmarshaller }

function TDocumentAlreadyExistsExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EDocumentAlreadyExistsException;
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

function TDocumentAlreadyExistsExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EDocumentAlreadyExistsException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EDocumentAlreadyExistsException;
begin
  UnmarshalledObject := EDocumentAlreadyExistsException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TDocumentAlreadyExistsExceptionUnmarshaller.Create;
begin
  FInstance := TDocumentAlreadyExistsExceptionUnmarshaller.Create;
end;

class function TDocumentAlreadyExistsExceptionUnmarshaller.Instance: IDocumentAlreadyExistsExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
