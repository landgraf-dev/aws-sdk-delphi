unit AWS.SESv2.Transform.SendingPausedExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SESv2.Model.SendingPausedException, 
  AWS.Internal.ErrorResponse;

type
  ISendingPausedExceptionUnmarshaller = IErrorResponseUnmarshaller<ESendingPausedException, TJsonUnmarshallerContext>;
  
  TSendingPausedExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<ESendingPausedException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: ISendingPausedExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): ESendingPausedException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): ESendingPausedException; overload;
    class function Instance: ISendingPausedExceptionUnmarshaller; static;
  end;
  
implementation

{ TSendingPausedExceptionUnmarshaller }

function TSendingPausedExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): ESendingPausedException;
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

function TSendingPausedExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): ESendingPausedException;
var
  TargetDepth: Integer;
  UnmarshalledObject: ESendingPausedException;
begin
  UnmarshalledObject := ESendingPausedException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TSendingPausedExceptionUnmarshaller.Create;
begin
  FInstance := TSendingPausedExceptionUnmarshaller.Create;
end;

class function TSendingPausedExceptionUnmarshaller.Instance: ISendingPausedExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
