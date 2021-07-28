unit AWS.SES.Transform.RuleDoesNotExistExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SES.Model.RuleDoesNotExistException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IRuleDoesNotExistExceptionUnmarshaller = IErrorResponseUnmarshaller<ERuleDoesNotExistException, TXmlUnmarshallerContext>;
  
  TRuleDoesNotExistExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<ERuleDoesNotExistException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IRuleDoesNotExistExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): ERuleDoesNotExistException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): ERuleDoesNotExistException; overload;
    class function Instance: IRuleDoesNotExistExceptionUnmarshaller; static;
  end;
  
implementation

{ TRuleDoesNotExistExceptionUnmarshaller }

function TRuleDoesNotExistExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): ERuleDoesNotExistException;
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

function TRuleDoesNotExistExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): ERuleDoesNotExistException;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  Response: ERuleDoesNotExistException;
begin
  Response := ERuleDoesNotExistException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('Name', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          Response.Name := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class constructor TRuleDoesNotExistExceptionUnmarshaller.Create;
begin
  FInstance := TRuleDoesNotExistExceptionUnmarshaller.Create;
end;

class function TRuleDoesNotExistExceptionUnmarshaller.Instance: IRuleDoesNotExistExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
