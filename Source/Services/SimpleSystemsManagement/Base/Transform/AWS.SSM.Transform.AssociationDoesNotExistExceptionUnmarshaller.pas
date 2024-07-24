unit AWS.SSM.Transform.AssociationDoesNotExistExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.AssociationDoesNotExistException, 
  AWS.Internal.ErrorResponse;

type
  IAssociationDoesNotExistExceptionUnmarshaller = IErrorResponseUnmarshaller<EAssociationDoesNotExistException, TJsonUnmarshallerContext>;
  
  TAssociationDoesNotExistExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EAssociationDoesNotExistException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IAssociationDoesNotExistExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EAssociationDoesNotExistException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EAssociationDoesNotExistException; overload;
    class function Instance: IAssociationDoesNotExistExceptionUnmarshaller; static;
  end;
  
implementation

{ TAssociationDoesNotExistExceptionUnmarshaller }

function TAssociationDoesNotExistExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EAssociationDoesNotExistException;
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

function TAssociationDoesNotExistExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EAssociationDoesNotExistException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EAssociationDoesNotExistException;
begin
  UnmarshalledObject := EAssociationDoesNotExistException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TAssociationDoesNotExistExceptionUnmarshaller.Create;
begin
  FInstance := TAssociationDoesNotExistExceptionUnmarshaller.Create;
end;

class function TAssociationDoesNotExistExceptionUnmarshaller.Instance: IAssociationDoesNotExistExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
