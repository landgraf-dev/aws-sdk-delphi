unit AWS.SSM.Transform.InvalidScheduleExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvalidScheduleException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidScheduleExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidScheduleException, TJsonUnmarshallerContext>;
  
  TInvalidScheduleExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidScheduleException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidScheduleExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidScheduleException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidScheduleException; overload;
    class function Instance: IInvalidScheduleExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidScheduleExceptionUnmarshaller }

function TInvalidScheduleExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidScheduleException;
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

function TInvalidScheduleExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidScheduleException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidScheduleException;
begin
  UnmarshalledObject := EInvalidScheduleException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidScheduleExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidScheduleExceptionUnmarshaller.Create;
end;

class function TInvalidScheduleExceptionUnmarshaller.Instance: IInvalidScheduleExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
