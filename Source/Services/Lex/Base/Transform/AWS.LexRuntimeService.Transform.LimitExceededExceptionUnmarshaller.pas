unit AWS.LexRuntimeService.Transform.LimitExceededExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.LexRuntimeService.Model.LimitExceededException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ILimitExceededExceptionUnmarshaller = IErrorResponseUnmarshaller<ELimitExceededException, TJsonUnmarshallerContext>;
  
  TLimitExceededExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<ELimitExceededException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: ILimitExceededExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): ELimitExceededException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): ELimitExceededException; overload;
    class function Instance: ILimitExceededExceptionUnmarshaller; static;
  end;
  
implementation

{ TLimitExceededExceptionUnmarshaller }

function TLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): ELimitExceededException;
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

function TLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): ELimitExceededException;
var
  TargetDepth: Integer;
  UnmarshalledObject: ELimitExceededException;
begin
  UnmarshalledObject := ELimitExceededException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('Retry-After', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.RetryAfterSeconds := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TLimitExceededExceptionUnmarshaller.Create;
begin
  FInstance := TLimitExceededExceptionUnmarshaller.Create;
end;

class function TLimitExceededExceptionUnmarshaller.Instance: ILimitExceededExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
