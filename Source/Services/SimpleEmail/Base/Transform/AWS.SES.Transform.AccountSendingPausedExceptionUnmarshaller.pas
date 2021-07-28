unit AWS.SES.Transform.AccountSendingPausedExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SES.Model.AccountSendingPausedException, 
  AWS.Internal.ErrorResponse;

type
  IAccountSendingPausedExceptionUnmarshaller = IErrorResponseUnmarshaller<EAccountSendingPausedException, TXmlUnmarshallerContext>;
  
  TAccountSendingPausedExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EAccountSendingPausedException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IAccountSendingPausedExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EAccountSendingPausedException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EAccountSendingPausedException; overload;
    class function Instance: IAccountSendingPausedExceptionUnmarshaller; static;
  end;
  
implementation

{ TAccountSendingPausedExceptionUnmarshaller }

function TAccountSendingPausedExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EAccountSendingPausedException;
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

function TAccountSendingPausedExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EAccountSendingPausedException;
var
  OriginalDepth: Integer;
  Response: EAccountSendingPausedException;
begin
  Response := EAccountSendingPausedException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TAccountSendingPausedExceptionUnmarshaller.Create;
begin
  FInstance := TAccountSendingPausedExceptionUnmarshaller.Create;
end;

class function TAccountSendingPausedExceptionUnmarshaller.Instance: IAccountSendingPausedExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
