unit AWS.SES.Transform.MessageRejectedExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SES.Model.MessageRejectedException, 
  AWS.Internal.ErrorResponse;

type
  IMessageRejectedExceptionUnmarshaller = IErrorResponseUnmarshaller<EMessageRejectedException, TXmlUnmarshallerContext>;
  
  TMessageRejectedExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EMessageRejectedException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IMessageRejectedExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EMessageRejectedException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EMessageRejectedException; overload;
    class function Instance: IMessageRejectedExceptionUnmarshaller; static;
  end;
  
implementation

{ TMessageRejectedExceptionUnmarshaller }

function TMessageRejectedExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EMessageRejectedException;
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

function TMessageRejectedExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EMessageRejectedException;
var
  OriginalDepth: Integer;
  Response: EMessageRejectedException;
begin
  Response := EMessageRejectedException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
  try
    OriginalDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
      end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
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
