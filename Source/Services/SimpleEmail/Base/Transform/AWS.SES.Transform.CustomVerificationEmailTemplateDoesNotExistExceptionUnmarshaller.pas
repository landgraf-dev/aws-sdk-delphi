unit AWS.SES.Transform.CustomVerificationEmailTemplateDoesNotExistExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SES.Model.CustomVerificationEmailTemplateDoesNotExistException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ICustomVerificationEmailTemplateDoesNotExistExceptionUnmarshaller = IErrorResponseUnmarshaller<ECustomVerificationEmailTemplateDoesNotExistException, TXmlUnmarshallerContext>;
  
  TCustomVerificationEmailTemplateDoesNotExistExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<ECustomVerificationEmailTemplateDoesNotExistException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: ICustomVerificationEmailTemplateDoesNotExistExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): ECustomVerificationEmailTemplateDoesNotExistException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): ECustomVerificationEmailTemplateDoesNotExistException; overload;
    class function Instance: ICustomVerificationEmailTemplateDoesNotExistExceptionUnmarshaller; static;
  end;
  
implementation

{ TCustomVerificationEmailTemplateDoesNotExistExceptionUnmarshaller }

function TCustomVerificationEmailTemplateDoesNotExistExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): ECustomVerificationEmailTemplateDoesNotExistException;
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

function TCustomVerificationEmailTemplateDoesNotExistExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): ECustomVerificationEmailTemplateDoesNotExistException;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  Response: ECustomVerificationEmailTemplateDoesNotExistException;
begin
  Response := ECustomVerificationEmailTemplateDoesNotExistException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('CustomVerificationEmailTemplateName', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          Response.CustomVerificationEmailTemplateName := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class constructor TCustomVerificationEmailTemplateDoesNotExistExceptionUnmarshaller.Create;
begin
  FInstance := TCustomVerificationEmailTemplateDoesNotExistExceptionUnmarshaller.Create;
end;

class function TCustomVerificationEmailTemplateDoesNotExistExceptionUnmarshaller.Instance: ICustomVerificationEmailTemplateDoesNotExistExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
