unit AWS.SSM.Transform.HierarchyLevelLimitExceededExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.HierarchyLevelLimitExceededException, 
  AWS.Internal.ErrorResponse;

type
  IHierarchyLevelLimitExceededExceptionUnmarshaller = IErrorResponseUnmarshaller<EHierarchyLevelLimitExceededException, TJsonUnmarshallerContext>;
  
  THierarchyLevelLimitExceededExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EHierarchyLevelLimitExceededException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IHierarchyLevelLimitExceededExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EHierarchyLevelLimitExceededException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EHierarchyLevelLimitExceededException; overload;
    class function Instance: IHierarchyLevelLimitExceededExceptionUnmarshaller; static;
  end;
  
implementation

{ THierarchyLevelLimitExceededExceptionUnmarshaller }

function THierarchyLevelLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EHierarchyLevelLimitExceededException;
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

function THierarchyLevelLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EHierarchyLevelLimitExceededException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EHierarchyLevelLimitExceededException;
begin
  UnmarshalledObject := EHierarchyLevelLimitExceededException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor THierarchyLevelLimitExceededExceptionUnmarshaller.Create;
begin
  FInstance := THierarchyLevelLimitExceededExceptionUnmarshaller.Create;
end;

class function THierarchyLevelLimitExceededExceptionUnmarshaller.Instance: IHierarchyLevelLimitExceededExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
