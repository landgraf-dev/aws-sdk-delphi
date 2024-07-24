unit AWS.SSM.Transform.IncompatiblePolicyExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.IncompatiblePolicyException, 
  AWS.Internal.ErrorResponse;

type
  IIncompatiblePolicyExceptionUnmarshaller = IErrorResponseUnmarshaller<EIncompatiblePolicyException, TJsonUnmarshallerContext>;
  
  TIncompatiblePolicyExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EIncompatiblePolicyException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IIncompatiblePolicyExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EIncompatiblePolicyException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EIncompatiblePolicyException; overload;
    class function Instance: IIncompatiblePolicyExceptionUnmarshaller; static;
  end;
  
implementation

{ TIncompatiblePolicyExceptionUnmarshaller }

function TIncompatiblePolicyExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EIncompatiblePolicyException;
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

function TIncompatiblePolicyExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EIncompatiblePolicyException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EIncompatiblePolicyException;
begin
  UnmarshalledObject := EIncompatiblePolicyException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TIncompatiblePolicyExceptionUnmarshaller.Create;
begin
  FInstance := TIncompatiblePolicyExceptionUnmarshaller.Create;
end;

class function TIncompatiblePolicyExceptionUnmarshaller.Instance: IIncompatiblePolicyExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
