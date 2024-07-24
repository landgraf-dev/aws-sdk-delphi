unit AWS.SSM.Transform.DocumentPermissionLimitExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.DocumentPermissionLimitException, 
  AWS.Internal.ErrorResponse;

type
  IDocumentPermissionLimitExceptionUnmarshaller = IErrorResponseUnmarshaller<EDocumentPermissionLimitException, TJsonUnmarshallerContext>;
  
  TDocumentPermissionLimitExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EDocumentPermissionLimitException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IDocumentPermissionLimitExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EDocumentPermissionLimitException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EDocumentPermissionLimitException; overload;
    class function Instance: IDocumentPermissionLimitExceptionUnmarshaller; static;
  end;
  
implementation

{ TDocumentPermissionLimitExceptionUnmarshaller }

function TDocumentPermissionLimitExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EDocumentPermissionLimitException;
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

function TDocumentPermissionLimitExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EDocumentPermissionLimitException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EDocumentPermissionLimitException;
begin
  UnmarshalledObject := EDocumentPermissionLimitException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TDocumentPermissionLimitExceptionUnmarshaller.Create;
begin
  FInstance := TDocumentPermissionLimitExceptionUnmarshaller.Create;
end;

class function TDocumentPermissionLimitExceptionUnmarshaller.Instance: IDocumentPermissionLimitExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
