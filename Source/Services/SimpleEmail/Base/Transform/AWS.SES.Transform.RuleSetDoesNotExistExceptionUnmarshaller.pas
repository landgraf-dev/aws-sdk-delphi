unit AWS.SES.Transform.RuleSetDoesNotExistExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SES.Model.RuleSetDoesNotExistException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IRuleSetDoesNotExistExceptionUnmarshaller = IErrorResponseUnmarshaller<ERuleSetDoesNotExistException, TXmlUnmarshallerContext>;
  
  TRuleSetDoesNotExistExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<ERuleSetDoesNotExistException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IRuleSetDoesNotExistExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): ERuleSetDoesNotExistException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): ERuleSetDoesNotExistException; overload;
    class function Instance: IRuleSetDoesNotExistExceptionUnmarshaller; static;
  end;
  
implementation

{ TRuleSetDoesNotExistExceptionUnmarshaller }

function TRuleSetDoesNotExistExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): ERuleSetDoesNotExistException;
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

function TRuleSetDoesNotExistExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): ERuleSetDoesNotExistException;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  Response: ERuleSetDoesNotExistException;
begin
  Response := ERuleSetDoesNotExistException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TRuleSetDoesNotExistExceptionUnmarshaller.Create;
begin
  FInstance := TRuleSetDoesNotExistExceptionUnmarshaller.Create;
end;

class function TRuleSetDoesNotExistExceptionUnmarshaller.Instance: IRuleSetDoesNotExistExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
