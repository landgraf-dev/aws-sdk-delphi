unit AWS.SES.Transform.MailFromDomainNotVerifiedExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SES.Model.MailFromDomainNotVerifiedException, 
  AWS.Internal.ErrorResponse;

type
  IMailFromDomainNotVerifiedExceptionUnmarshaller = IErrorResponseUnmarshaller<EMailFromDomainNotVerifiedException, TXmlUnmarshallerContext>;
  
  TMailFromDomainNotVerifiedExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EMailFromDomainNotVerifiedException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IMailFromDomainNotVerifiedExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EMailFromDomainNotVerifiedException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EMailFromDomainNotVerifiedException; overload;
    class function Instance: IMailFromDomainNotVerifiedExceptionUnmarshaller; static;
  end;
  
implementation

{ TMailFromDomainNotVerifiedExceptionUnmarshaller }

function TMailFromDomainNotVerifiedExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EMailFromDomainNotVerifiedException;
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

function TMailFromDomainNotVerifiedExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EMailFromDomainNotVerifiedException;
var
  OriginalDepth: Integer;
  Response: EMailFromDomainNotVerifiedException;
begin
  Response := EMailFromDomainNotVerifiedException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TMailFromDomainNotVerifiedExceptionUnmarshaller.Create;
begin
  FInstance := TMailFromDomainNotVerifiedExceptionUnmarshaller.Create;
end;

class function TMailFromDomainNotVerifiedExceptionUnmarshaller.Instance: IMailFromDomainNotVerifiedExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
