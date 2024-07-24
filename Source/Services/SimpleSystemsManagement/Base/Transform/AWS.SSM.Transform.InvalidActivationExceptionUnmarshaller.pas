unit AWS.SSM.Transform.InvalidActivationExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvalidActivationException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidActivationExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidActivationException, TJsonUnmarshallerContext>;
  
  TInvalidActivationExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidActivationException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidActivationExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidActivationException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidActivationException; overload;
    class function Instance: IInvalidActivationExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidActivationExceptionUnmarshaller }

function TInvalidActivationExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidActivationException;
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

function TInvalidActivationExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidActivationException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidActivationException;
begin
  UnmarshalledObject := EInvalidActivationException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidActivationExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidActivationExceptionUnmarshaller.Create;
end;

class function TInvalidActivationExceptionUnmarshaller.Instance: IInvalidActivationExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
