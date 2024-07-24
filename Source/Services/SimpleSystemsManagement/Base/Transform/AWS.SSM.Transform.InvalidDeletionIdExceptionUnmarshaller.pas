unit AWS.SSM.Transform.InvalidDeletionIdExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvalidDeletionIdException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidDeletionIdExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidDeletionIdException, TJsonUnmarshallerContext>;
  
  TInvalidDeletionIdExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidDeletionIdException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidDeletionIdExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidDeletionIdException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidDeletionIdException; overload;
    class function Instance: IInvalidDeletionIdExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidDeletionIdExceptionUnmarshaller }

function TInvalidDeletionIdExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidDeletionIdException;
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

function TInvalidDeletionIdExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidDeletionIdException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidDeletionIdException;
begin
  UnmarshalledObject := EInvalidDeletionIdException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidDeletionIdExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidDeletionIdExceptionUnmarshaller.Create;
end;

class function TInvalidDeletionIdExceptionUnmarshaller.Instance: IInvalidDeletionIdExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
