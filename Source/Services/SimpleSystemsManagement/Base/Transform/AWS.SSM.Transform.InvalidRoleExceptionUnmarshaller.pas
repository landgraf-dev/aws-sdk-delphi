unit AWS.SSM.Transform.InvalidRoleExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvalidRoleException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidRoleExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidRoleException, TJsonUnmarshallerContext>;
  
  TInvalidRoleExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidRoleException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidRoleExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidRoleException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidRoleException; overload;
    class function Instance: IInvalidRoleExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidRoleExceptionUnmarshaller }

function TInvalidRoleExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidRoleException;
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

function TInvalidRoleExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidRoleException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidRoleException;
begin
  UnmarshalledObject := EInvalidRoleException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidRoleExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidRoleExceptionUnmarshaller.Create;
end;

class function TInvalidRoleExceptionUnmarshaller.Instance: IInvalidRoleExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
