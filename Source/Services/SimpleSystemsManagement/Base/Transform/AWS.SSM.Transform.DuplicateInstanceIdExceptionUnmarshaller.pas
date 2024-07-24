unit AWS.SSM.Transform.DuplicateInstanceIdExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.DuplicateInstanceIdException, 
  AWS.Internal.ErrorResponse;

type
  IDuplicateInstanceIdExceptionUnmarshaller = IErrorResponseUnmarshaller<EDuplicateInstanceIdException, TJsonUnmarshallerContext>;
  
  TDuplicateInstanceIdExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EDuplicateInstanceIdException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IDuplicateInstanceIdExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EDuplicateInstanceIdException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EDuplicateInstanceIdException; overload;
    class function Instance: IDuplicateInstanceIdExceptionUnmarshaller; static;
  end;
  
implementation

{ TDuplicateInstanceIdExceptionUnmarshaller }

function TDuplicateInstanceIdExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EDuplicateInstanceIdException;
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

function TDuplicateInstanceIdExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EDuplicateInstanceIdException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EDuplicateInstanceIdException;
begin
  UnmarshalledObject := EDuplicateInstanceIdException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TDuplicateInstanceIdExceptionUnmarshaller.Create;
begin
  FInstance := TDuplicateInstanceIdExceptionUnmarshaller.Create;
end;

class function TDuplicateInstanceIdExceptionUnmarshaller.Instance: IDuplicateInstanceIdExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
