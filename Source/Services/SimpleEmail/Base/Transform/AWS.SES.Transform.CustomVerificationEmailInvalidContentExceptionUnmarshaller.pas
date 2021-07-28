unit AWS.SES.Transform.CustomVerificationEmailInvalidContentExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SES.Model.CustomVerificationEmailInvalidContentException, 
  AWS.Internal.ErrorResponse;

type
  ICustomVerificationEmailInvalidContentExceptionUnmarshaller = IErrorResponseUnmarshaller<ECustomVerificationEmailInvalidContentException, TXmlUnmarshallerContext>;
  
  TCustomVerificationEmailInvalidContentExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<ECustomVerificationEmailInvalidContentException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: ICustomVerificationEmailInvalidContentExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): ECustomVerificationEmailInvalidContentException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): ECustomVerificationEmailInvalidContentException; overload;
    class function Instance: ICustomVerificationEmailInvalidContentExceptionUnmarshaller; static;
  end;
  
implementation

{ TCustomVerificationEmailInvalidContentExceptionUnmarshaller }

function TCustomVerificationEmailInvalidContentExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): ECustomVerificationEmailInvalidContentException;
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

function TCustomVerificationEmailInvalidContentExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): ECustomVerificationEmailInvalidContentException;
var
  OriginalDepth: Integer;
  Response: ECustomVerificationEmailInvalidContentException;
begin
  Response := ECustomVerificationEmailInvalidContentException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TCustomVerificationEmailInvalidContentExceptionUnmarshaller.Create;
begin
  FInstance := TCustomVerificationEmailInvalidContentExceptionUnmarshaller.Create;
end;

class function TCustomVerificationEmailInvalidContentExceptionUnmarshaller.Instance: ICustomVerificationEmailInvalidContentExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
