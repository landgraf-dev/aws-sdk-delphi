unit AWS.SES.Transform.InvalidTemplateExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SES.Model.InvalidTemplateException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IInvalidTemplateExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidTemplateException, TXmlUnmarshallerContext>;
  
  TInvalidTemplateExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidTemplateException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidTemplateExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EInvalidTemplateException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidTemplateException; overload;
    class function Instance: IInvalidTemplateExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidTemplateExceptionUnmarshaller }

function TInvalidTemplateExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EInvalidTemplateException;
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

function TInvalidTemplateExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidTemplateException;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  Response: EInvalidTemplateException;
begin
  Response := EInvalidTemplateException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidTemplateExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidTemplateExceptionUnmarshaller.Create;
end;

class function TInvalidTemplateExceptionUnmarshaller.Instance: IInvalidTemplateExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
