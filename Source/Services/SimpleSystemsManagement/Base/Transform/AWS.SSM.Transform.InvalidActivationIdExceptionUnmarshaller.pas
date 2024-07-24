unit AWS.SSM.Transform.InvalidActivationIdExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvalidActivationIdException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidActivationIdExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidActivationIdException, TJsonUnmarshallerContext>;
  
  TInvalidActivationIdExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidActivationIdException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidActivationIdExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidActivationIdException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidActivationIdException; overload;
    class function Instance: IInvalidActivationIdExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidActivationIdExceptionUnmarshaller }

function TInvalidActivationIdExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidActivationIdException;
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

function TInvalidActivationIdExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidActivationIdException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidActivationIdException;
begin
  UnmarshalledObject := EInvalidActivationIdException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidActivationIdExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidActivationIdExceptionUnmarshaller.Create;
end;

class function TInvalidActivationIdExceptionUnmarshaller.Instance: IInvalidActivationIdExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
