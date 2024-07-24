unit AWS.SSM.Transform.InvalidInstanceIdExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvalidInstanceIdException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidInstanceIdExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidInstanceIdException, TJsonUnmarshallerContext>;
  
  TInvalidInstanceIdExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidInstanceIdException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidInstanceIdExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidInstanceIdException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidInstanceIdException; overload;
    class function Instance: IInvalidInstanceIdExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidInstanceIdExceptionUnmarshaller }

function TInvalidInstanceIdExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidInstanceIdException;
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

function TInvalidInstanceIdExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidInstanceIdException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidInstanceIdException;
begin
  UnmarshalledObject := EInvalidInstanceIdException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidInstanceIdExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidInstanceIdExceptionUnmarshaller.Create;
end;

class function TInvalidInstanceIdExceptionUnmarshaller.Instance: IInvalidInstanceIdExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
