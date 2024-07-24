unit AWS.SSM.Transform.AssociationLimitExceededExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.AssociationLimitExceededException, 
  AWS.Internal.ErrorResponse;

type
  IAssociationLimitExceededExceptionUnmarshaller = IErrorResponseUnmarshaller<EAssociationLimitExceededException, TJsonUnmarshallerContext>;
  
  TAssociationLimitExceededExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EAssociationLimitExceededException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IAssociationLimitExceededExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EAssociationLimitExceededException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EAssociationLimitExceededException; overload;
    class function Instance: IAssociationLimitExceededExceptionUnmarshaller; static;
  end;
  
implementation

{ TAssociationLimitExceededExceptionUnmarshaller }

function TAssociationLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EAssociationLimitExceededException;
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

function TAssociationLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EAssociationLimitExceededException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EAssociationLimitExceededException;
begin
  UnmarshalledObject := EAssociationLimitExceededException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TAssociationLimitExceededExceptionUnmarshaller.Create;
begin
  FInstance := TAssociationLimitExceededExceptionUnmarshaller.Create;
end;

class function TAssociationLimitExceededExceptionUnmarshaller.Instance: IAssociationLimitExceededExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
