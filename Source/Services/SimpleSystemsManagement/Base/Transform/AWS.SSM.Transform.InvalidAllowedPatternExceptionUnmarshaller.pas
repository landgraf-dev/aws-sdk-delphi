unit AWS.SSM.Transform.InvalidAllowedPatternExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvalidAllowedPatternException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidAllowedPatternExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidAllowedPatternException, TJsonUnmarshallerContext>;
  
  TInvalidAllowedPatternExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidAllowedPatternException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidAllowedPatternExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidAllowedPatternException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidAllowedPatternException; overload;
    class function Instance: IInvalidAllowedPatternExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidAllowedPatternExceptionUnmarshaller }

function TInvalidAllowedPatternExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidAllowedPatternException;
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

function TInvalidAllowedPatternExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidAllowedPatternException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidAllowedPatternException;
begin
  UnmarshalledObject := EInvalidAllowedPatternException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidAllowedPatternExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidAllowedPatternExceptionUnmarshaller.Create;
end;

class function TInvalidAllowedPatternExceptionUnmarshaller.Instance: IInvalidAllowedPatternExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
