unit AWS.SSM.Transform.HierarchyTypeMismatchExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.HierarchyTypeMismatchException, 
  AWS.Internal.ErrorResponse;

type
  IHierarchyTypeMismatchExceptionUnmarshaller = IErrorResponseUnmarshaller<EHierarchyTypeMismatchException, TJsonUnmarshallerContext>;
  
  THierarchyTypeMismatchExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EHierarchyTypeMismatchException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IHierarchyTypeMismatchExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EHierarchyTypeMismatchException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EHierarchyTypeMismatchException; overload;
    class function Instance: IHierarchyTypeMismatchExceptionUnmarshaller; static;
  end;
  
implementation

{ THierarchyTypeMismatchExceptionUnmarshaller }

function THierarchyTypeMismatchExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EHierarchyTypeMismatchException;
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

function THierarchyTypeMismatchExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EHierarchyTypeMismatchException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EHierarchyTypeMismatchException;
begin
  UnmarshalledObject := EHierarchyTypeMismatchException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor THierarchyTypeMismatchExceptionUnmarshaller.Create;
begin
  FInstance := THierarchyTypeMismatchExceptionUnmarshaller.Create;
end;

class function THierarchyTypeMismatchExceptionUnmarshaller.Instance: IHierarchyTypeMismatchExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
