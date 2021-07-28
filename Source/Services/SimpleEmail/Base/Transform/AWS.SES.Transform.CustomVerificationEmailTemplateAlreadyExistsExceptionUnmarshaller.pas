unit AWS.SES.Transform.CustomVerificationEmailTemplateAlreadyExistsExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SES.Model.CustomVerificationEmailTemplateAlreadyExistsException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ICustomVerificationEmailTemplateAlreadyExistsExceptionUnmarshaller = IErrorResponseUnmarshaller<ECustomVerificationEmailTemplateAlreadyExistsException, TXmlUnmarshallerContext>;
  
  TCustomVerificationEmailTemplateAlreadyExistsExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<ECustomVerificationEmailTemplateAlreadyExistsException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: ICustomVerificationEmailTemplateAlreadyExistsExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): ECustomVerificationEmailTemplateAlreadyExistsException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): ECustomVerificationEmailTemplateAlreadyExistsException; overload;
    class function Instance: ICustomVerificationEmailTemplateAlreadyExistsExceptionUnmarshaller; static;
  end;
  
implementation

{ TCustomVerificationEmailTemplateAlreadyExistsExceptionUnmarshaller }

function TCustomVerificationEmailTemplateAlreadyExistsExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): ECustomVerificationEmailTemplateAlreadyExistsException;
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

function TCustomVerificationEmailTemplateAlreadyExistsExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): ECustomVerificationEmailTemplateAlreadyExistsException;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  Response: ECustomVerificationEmailTemplateAlreadyExistsException;
begin
  Response := ECustomVerificationEmailTemplateAlreadyExistsException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TCustomVerificationEmailTemplateAlreadyExistsExceptionUnmarshaller.Create;
begin
  FInstance := TCustomVerificationEmailTemplateAlreadyExistsExceptionUnmarshaller.Create;
end;

class function TCustomVerificationEmailTemplateAlreadyExistsExceptionUnmarshaller.Instance: ICustomVerificationEmailTemplateAlreadyExistsExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
