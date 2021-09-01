unit AWS.Translate.Transform.ConcurrentModificationExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Translate.Model.ConcurrentModificationException, 
  AWS.Internal.ErrorResponse;

type
  IConcurrentModificationExceptionUnmarshaller = IErrorResponseUnmarshaller<EConcurrentModificationException, TJsonUnmarshallerContext>;
  
  TConcurrentModificationExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EConcurrentModificationException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IConcurrentModificationExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EConcurrentModificationException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EConcurrentModificationException; overload;
    class function Instance: IConcurrentModificationExceptionUnmarshaller; static;
  end;
  
implementation

{ TConcurrentModificationExceptionUnmarshaller }

function TConcurrentModificationExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EConcurrentModificationException;
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

function TConcurrentModificationExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EConcurrentModificationException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EConcurrentModificationException;
begin
  UnmarshalledObject := EConcurrentModificationException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TConcurrentModificationExceptionUnmarshaller.Create;
begin
  FInstance := TConcurrentModificationExceptionUnmarshaller.Create;
end;

class function TConcurrentModificationExceptionUnmarshaller.Instance: IConcurrentModificationExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
