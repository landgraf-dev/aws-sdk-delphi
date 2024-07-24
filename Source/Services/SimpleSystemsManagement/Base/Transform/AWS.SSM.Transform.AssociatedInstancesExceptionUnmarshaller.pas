unit AWS.SSM.Transform.AssociatedInstancesExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.AssociatedInstancesException, 
  AWS.Internal.ErrorResponse;

type
  IAssociatedInstancesExceptionUnmarshaller = IErrorResponseUnmarshaller<EAssociatedInstancesException, TJsonUnmarshallerContext>;
  
  TAssociatedInstancesExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EAssociatedInstancesException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IAssociatedInstancesExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EAssociatedInstancesException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EAssociatedInstancesException; overload;
    class function Instance: IAssociatedInstancesExceptionUnmarshaller; static;
  end;
  
implementation

{ TAssociatedInstancesExceptionUnmarshaller }

function TAssociatedInstancesExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EAssociatedInstancesException;
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

function TAssociatedInstancesExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EAssociatedInstancesException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EAssociatedInstancesException;
begin
  UnmarshalledObject := EAssociatedInstancesException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TAssociatedInstancesExceptionUnmarshaller.Create;
begin
  FInstance := TAssociatedInstancesExceptionUnmarshaller.Create;
end;

class function TAssociatedInstancesExceptionUnmarshaller.Instance: IAssociatedInstancesExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
