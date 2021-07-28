unit AWS.SES.Transform.LimitExceededExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SES.Model.LimitExceededException, 
  AWS.Internal.ErrorResponse;

type
  ILimitExceededExceptionUnmarshaller = IErrorResponseUnmarshaller<ELimitExceededException, TXmlUnmarshallerContext>;
  
  TLimitExceededExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<ELimitExceededException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: ILimitExceededExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): ELimitExceededException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): ELimitExceededException; overload;
    class function Instance: ILimitExceededExceptionUnmarshaller; static;
  end;
  
implementation

{ TLimitExceededExceptionUnmarshaller }

function TLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): ELimitExceededException;
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

function TLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): ELimitExceededException;
var
  OriginalDepth: Integer;
  Response: ELimitExceededException;
begin
  Response := ELimitExceededException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TLimitExceededExceptionUnmarshaller.Create;
begin
  FInstance := TLimitExceededExceptionUnmarshaller.Create;
end;

class function TLimitExceededExceptionUnmarshaller.Instance: ILimitExceededExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
