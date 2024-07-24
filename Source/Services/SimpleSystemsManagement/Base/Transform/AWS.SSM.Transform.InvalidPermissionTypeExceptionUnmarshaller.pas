unit AWS.SSM.Transform.InvalidPermissionTypeExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvalidPermissionTypeException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidPermissionTypeExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidPermissionTypeException, TJsonUnmarshallerContext>;
  
  TInvalidPermissionTypeExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidPermissionTypeException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidPermissionTypeExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidPermissionTypeException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidPermissionTypeException; overload;
    class function Instance: IInvalidPermissionTypeExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidPermissionTypeExceptionUnmarshaller }

function TInvalidPermissionTypeExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidPermissionTypeException;
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

function TInvalidPermissionTypeExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidPermissionTypeException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidPermissionTypeException;
begin
  UnmarshalledObject := EInvalidPermissionTypeException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidPermissionTypeExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidPermissionTypeExceptionUnmarshaller.Create;
end;

class function TInvalidPermissionTypeExceptionUnmarshaller.Instance: IInvalidPermissionTypeExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
