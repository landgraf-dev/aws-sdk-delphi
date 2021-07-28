unit AWS.SES.Transform.MissingRenderingAttributeExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SES.Model.MissingRenderingAttributeException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IMissingRenderingAttributeExceptionUnmarshaller = IErrorResponseUnmarshaller<EMissingRenderingAttributeException, TXmlUnmarshallerContext>;
  
  TMissingRenderingAttributeExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EMissingRenderingAttributeException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IMissingRenderingAttributeExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EMissingRenderingAttributeException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EMissingRenderingAttributeException; overload;
    class function Instance: IMissingRenderingAttributeExceptionUnmarshaller; static;
  end;
  
implementation

{ TMissingRenderingAttributeExceptionUnmarshaller }

function TMissingRenderingAttributeExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EMissingRenderingAttributeException;
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

function TMissingRenderingAttributeExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EMissingRenderingAttributeException;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  Response: EMissingRenderingAttributeException;
begin
  Response := EMissingRenderingAttributeException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TMissingRenderingAttributeExceptionUnmarshaller.Create;
begin
  FInstance := TMissingRenderingAttributeExceptionUnmarshaller.Create;
end;

class function TMissingRenderingAttributeExceptionUnmarshaller.Instance: IMissingRenderingAttributeExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
