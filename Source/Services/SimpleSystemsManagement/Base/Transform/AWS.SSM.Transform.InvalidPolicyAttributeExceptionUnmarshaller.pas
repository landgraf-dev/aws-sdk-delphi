unit AWS.SSM.Transform.InvalidPolicyAttributeExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvalidPolicyAttributeException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidPolicyAttributeExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidPolicyAttributeException, TJsonUnmarshallerContext>;
  
  TInvalidPolicyAttributeExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidPolicyAttributeException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidPolicyAttributeExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidPolicyAttributeException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidPolicyAttributeException; overload;
    class function Instance: IInvalidPolicyAttributeExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidPolicyAttributeExceptionUnmarshaller }

function TInvalidPolicyAttributeExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidPolicyAttributeException;
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

function TInvalidPolicyAttributeExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidPolicyAttributeException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidPolicyAttributeException;
begin
  UnmarshalledObject := EInvalidPolicyAttributeException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidPolicyAttributeExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidPolicyAttributeExceptionUnmarshaller.Create;
end;

class function TInvalidPolicyAttributeExceptionUnmarshaller.Instance: IInvalidPolicyAttributeExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
