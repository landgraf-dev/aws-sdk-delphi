unit AWS.SES.Transform.TemplateDoesNotExistExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SES.Model.TemplateDoesNotExistException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ITemplateDoesNotExistExceptionUnmarshaller = IErrorResponseUnmarshaller<ETemplateDoesNotExistException, TXmlUnmarshallerContext>;
  
  TTemplateDoesNotExistExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<ETemplateDoesNotExistException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: ITemplateDoesNotExistExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): ETemplateDoesNotExistException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): ETemplateDoesNotExistException; overload;
    class function Instance: ITemplateDoesNotExistExceptionUnmarshaller; static;
  end;
  
implementation

{ TTemplateDoesNotExistExceptionUnmarshaller }

function TTemplateDoesNotExistExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): ETemplateDoesNotExistException;
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

function TTemplateDoesNotExistExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): ETemplateDoesNotExistException;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  Response: ETemplateDoesNotExistException;
begin
  Response := ETemplateDoesNotExistException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('TemplateName', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          Response.TemplateName := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class constructor TTemplateDoesNotExistExceptionUnmarshaller.Create;
begin
  FInstance := TTemplateDoesNotExistExceptionUnmarshaller.Create;
end;

class function TTemplateDoesNotExistExceptionUnmarshaller.Instance: ITemplateDoesNotExistExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
