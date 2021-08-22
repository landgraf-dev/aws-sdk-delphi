unit AWS.LexRuntimeService.Transform.LoopDetectedExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.LexRuntimeService.Model.LoopDetectedException, 
  AWS.Internal.ErrorResponse;

type
  ILoopDetectedExceptionUnmarshaller = IErrorResponseUnmarshaller<ELoopDetectedException, TJsonUnmarshallerContext>;
  
  TLoopDetectedExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<ELoopDetectedException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: ILoopDetectedExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): ELoopDetectedException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): ELoopDetectedException; overload;
    class function Instance: ILoopDetectedExceptionUnmarshaller; static;
  end;
  
implementation

{ TLoopDetectedExceptionUnmarshaller }

function TLoopDetectedExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): ELoopDetectedException;
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

function TLoopDetectedExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): ELoopDetectedException;
var
  TargetDepth: Integer;
  UnmarshalledObject: ELoopDetectedException;
begin
  UnmarshalledObject := ELoopDetectedException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TLoopDetectedExceptionUnmarshaller.Create;
begin
  FInstance := TLoopDetectedExceptionUnmarshaller.Create;
end;

class function TLoopDetectedExceptionUnmarshaller.Instance: ILoopDetectedExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
