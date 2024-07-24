unit AWS.SSM.Transform.AssociationVersionLimitExceededExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.AssociationVersionLimitExceededException, 
  AWS.Internal.ErrorResponse;

type
  IAssociationVersionLimitExceededExceptionUnmarshaller = IErrorResponseUnmarshaller<EAssociationVersionLimitExceededException, TJsonUnmarshallerContext>;
  
  TAssociationVersionLimitExceededExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EAssociationVersionLimitExceededException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IAssociationVersionLimitExceededExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EAssociationVersionLimitExceededException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EAssociationVersionLimitExceededException; overload;
    class function Instance: IAssociationVersionLimitExceededExceptionUnmarshaller; static;
  end;
  
implementation

{ TAssociationVersionLimitExceededExceptionUnmarshaller }

function TAssociationVersionLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EAssociationVersionLimitExceededException;
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

function TAssociationVersionLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EAssociationVersionLimitExceededException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EAssociationVersionLimitExceededException;
begin
  UnmarshalledObject := EAssociationVersionLimitExceededException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TAssociationVersionLimitExceededExceptionUnmarshaller.Create;
begin
  FInstance := TAssociationVersionLimitExceededExceptionUnmarshaller.Create;
end;

class function TAssociationVersionLimitExceededExceptionUnmarshaller.Instance: IAssociationVersionLimitExceededExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
