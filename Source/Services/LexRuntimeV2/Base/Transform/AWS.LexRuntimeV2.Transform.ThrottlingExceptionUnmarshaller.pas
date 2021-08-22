unit AWS.LexRuntimeV2.Transform.ThrottlingExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.LexRuntimeV2.Model.ThrottlingException, 
  AWS.Internal.ErrorResponse;

type
  IThrottlingExceptionUnmarshaller = IErrorResponseUnmarshaller<EThrottlingException, TJsonUnmarshallerContext>;
  
  TThrottlingExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EThrottlingException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IThrottlingExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EThrottlingException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EThrottlingException; overload;
    class function Instance: IThrottlingExceptionUnmarshaller; static;
  end;
  
implementation

{ TThrottlingExceptionUnmarshaller }

function TThrottlingExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EThrottlingException;
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

function TThrottlingExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EThrottlingException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EThrottlingException;
begin
  UnmarshalledObject := EThrottlingException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TThrottlingExceptionUnmarshaller.Create;
begin
  FInstance := TThrottlingExceptionUnmarshaller.Create;
end;

class function TThrottlingExceptionUnmarshaller.Instance: IThrottlingExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
