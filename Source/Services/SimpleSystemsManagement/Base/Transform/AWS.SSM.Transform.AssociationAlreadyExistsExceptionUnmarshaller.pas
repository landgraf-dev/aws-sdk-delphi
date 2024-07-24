unit AWS.SSM.Transform.AssociationAlreadyExistsExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.AssociationAlreadyExistsException, 
  AWS.Internal.ErrorResponse;

type
  IAssociationAlreadyExistsExceptionUnmarshaller = IErrorResponseUnmarshaller<EAssociationAlreadyExistsException, TJsonUnmarshallerContext>;
  
  TAssociationAlreadyExistsExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EAssociationAlreadyExistsException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IAssociationAlreadyExistsExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EAssociationAlreadyExistsException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EAssociationAlreadyExistsException; overload;
    class function Instance: IAssociationAlreadyExistsExceptionUnmarshaller; static;
  end;
  
implementation

{ TAssociationAlreadyExistsExceptionUnmarshaller }

function TAssociationAlreadyExistsExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EAssociationAlreadyExistsException;
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

function TAssociationAlreadyExistsExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EAssociationAlreadyExistsException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EAssociationAlreadyExistsException;
begin
  UnmarshalledObject := EAssociationAlreadyExistsException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TAssociationAlreadyExistsExceptionUnmarshaller.Create;
begin
  FInstance := TAssociationAlreadyExistsExceptionUnmarshaller.Create;
end;

class function TAssociationAlreadyExistsExceptionUnmarshaller.Instance: IAssociationAlreadyExistsExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
