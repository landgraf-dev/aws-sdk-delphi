unit AWS.SESv2.Transform.MessageRejectedExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SESv2.Model.MessageRejectedException, 
  AWS.Internal.ErrorResponse;

type
  IMessageRejectedExceptionUnmarshaller = IErrorResponseUnmarshaller<EMessageRejectedException, TJsonUnmarshallerContext>;
  
  TMessageRejectedExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EMessageRejectedException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IMessageRejectedExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EMessageRejectedException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EMessageRejectedException; overload;
    class function Instance: IMessageRejectedExceptionUnmarshaller; static;
  end;
  
implementation

{ TMessageRejectedExceptionUnmarshaller }

function TMessageRejectedExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EMessageRejectedException;
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

function TMessageRejectedExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EMessageRejectedException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EMessageRejectedException;
begin
  UnmarshalledObject := EMessageRejectedException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TMessageRejectedExceptionUnmarshaller.Create;
begin
  FInstance := TMessageRejectedExceptionUnmarshaller.Create;
end;

class function TMessageRejectedExceptionUnmarshaller.Instance: IMessageRejectedExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
