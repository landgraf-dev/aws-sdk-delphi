unit AWS.SSM.Transform.AssociationExecutionDoesNotExistExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.AssociationExecutionDoesNotExistException, 
  AWS.Internal.ErrorResponse;

type
  IAssociationExecutionDoesNotExistExceptionUnmarshaller = IErrorResponseUnmarshaller<EAssociationExecutionDoesNotExistException, TJsonUnmarshallerContext>;
  
  TAssociationExecutionDoesNotExistExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EAssociationExecutionDoesNotExistException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IAssociationExecutionDoesNotExistExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EAssociationExecutionDoesNotExistException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EAssociationExecutionDoesNotExistException; overload;
    class function Instance: IAssociationExecutionDoesNotExistExceptionUnmarshaller; static;
  end;
  
implementation

{ TAssociationExecutionDoesNotExistExceptionUnmarshaller }

function TAssociationExecutionDoesNotExistExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EAssociationExecutionDoesNotExistException;
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

function TAssociationExecutionDoesNotExistExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EAssociationExecutionDoesNotExistException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EAssociationExecutionDoesNotExistException;
begin
  UnmarshalledObject := EAssociationExecutionDoesNotExistException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TAssociationExecutionDoesNotExistExceptionUnmarshaller.Create;
begin
  FInstance := TAssociationExecutionDoesNotExistExceptionUnmarshaller.Create;
end;

class function TAssociationExecutionDoesNotExistExceptionUnmarshaller.Instance: IAssociationExecutionDoesNotExistExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
