unit AWS.SNS.Transform.SubscriptionLimitExceededExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SNS.Model.SubscriptionLimitExceededException, 
  AWS.Internal.ErrorResponse;

type
  ISubscriptionLimitExceededExceptionUnmarshaller = IErrorResponseUnmarshaller<ESubscriptionLimitExceededException, TXmlUnmarshallerContext>;
  
  TSubscriptionLimitExceededExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<ESubscriptionLimitExceededException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: ISubscriptionLimitExceededExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): ESubscriptionLimitExceededException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): ESubscriptionLimitExceededException; overload;
    class function Instance: ISubscriptionLimitExceededExceptionUnmarshaller; static;
  end;
  
implementation

{ TSubscriptionLimitExceededExceptionUnmarshaller }

function TSubscriptionLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): ESubscriptionLimitExceededException;
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

function TSubscriptionLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): ESubscriptionLimitExceededException;
var
  OriginalDepth: Integer;
  Response: ESubscriptionLimitExceededException;
begin
  Response := ESubscriptionLimitExceededException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TSubscriptionLimitExceededExceptionUnmarshaller.Create;
begin
  FInstance := TSubscriptionLimitExceededExceptionUnmarshaller.Create;
end;

class function TSubscriptionLimitExceededExceptionUnmarshaller.Instance: ISubscriptionLimitExceededExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
