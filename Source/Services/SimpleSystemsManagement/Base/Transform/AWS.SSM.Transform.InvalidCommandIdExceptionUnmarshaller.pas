unit AWS.SSM.Transform.InvalidCommandIdExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvalidCommandIdException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidCommandIdExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidCommandIdException, TJsonUnmarshallerContext>;
  
  TInvalidCommandIdExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidCommandIdException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidCommandIdExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidCommandIdException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidCommandIdException; overload;
    class function Instance: IInvalidCommandIdExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidCommandIdExceptionUnmarshaller }

function TInvalidCommandIdExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidCommandIdException;
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

function TInvalidCommandIdExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidCommandIdException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidCommandIdException;
begin
  UnmarshalledObject := EInvalidCommandIdException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidCommandIdExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidCommandIdExceptionUnmarshaller.Create;
end;

class function TInvalidCommandIdExceptionUnmarshaller.Instance: IInvalidCommandIdExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
