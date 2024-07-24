unit AWS.SSM.Transform.InvalidPolicyTypeExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvalidPolicyTypeException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidPolicyTypeExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidPolicyTypeException, TJsonUnmarshallerContext>;
  
  TInvalidPolicyTypeExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidPolicyTypeException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidPolicyTypeExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidPolicyTypeException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidPolicyTypeException; overload;
    class function Instance: IInvalidPolicyTypeExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidPolicyTypeExceptionUnmarshaller }

function TInvalidPolicyTypeExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidPolicyTypeException;
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

function TInvalidPolicyTypeExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidPolicyTypeException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidPolicyTypeException;
begin
  UnmarshalledObject := EInvalidPolicyTypeException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidPolicyTypeExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidPolicyTypeExceptionUnmarshaller.Create;
end;

class function TInvalidPolicyTypeExceptionUnmarshaller.Instance: IInvalidPolicyTypeExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
