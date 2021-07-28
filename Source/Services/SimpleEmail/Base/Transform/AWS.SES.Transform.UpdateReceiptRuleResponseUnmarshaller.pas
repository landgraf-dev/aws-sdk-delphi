unit AWS.SES.Transform.UpdateReceiptRuleResponseUnmarshaller;

interface

uses
  AWS.Runtime.Model, 
  AWS.SES.Model.UpdateReceiptRuleResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SES.Transform.InvalidLambdaFunctionExceptionUnmarshaller, 
  AWS.SES.Transform.InvalidS3ConfigurationExceptionUnmarshaller, 
  AWS.SES.Transform.InvalidSnsTopicExceptionUnmarshaller, 
  AWS.SES.Transform.LimitExceededExceptionUnmarshaller, 
  AWS.SES.Transform.RuleDoesNotExistExceptionUnmarshaller, 
  AWS.SES.Transform.RuleSetDoesNotExistExceptionUnmarshaller, 
  AWS.SES.Exception;

type
  IUpdateReceiptRuleResponseUnmarshaller = IResponseUnmarshaller;
  
  TUpdateReceiptRuleResponseUnmarshaller = class(TXmlResponseUnmarshaller, IUpdateReceiptRuleResponseUnmarshaller)
  strict private
    class var FInstance: IUpdateReceiptRuleResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TUpdateReceiptRuleResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IUpdateReceiptRuleResponseUnmarshaller; static;
  end;
  
implementation

{ TUpdateReceiptRuleResponseUnmarshaller }

function TUpdateReceiptRuleResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TUpdateReceiptRuleResponse;
  TargetDepth: Integer;
begin
  Response := TUpdateReceiptRuleResponse.Create;
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.IsStartElement then
      begin
        if AContext.TestExpression('UpdateReceiptRuleResult', 2) then
        begin
          UnmarshallResult(AContext, Response);
          Continue;
        end;
        if AContext.TestExpression('ResponseMetadata', 2) then
          Response.ResponseMetadata := TResponseMetadataUnmarshaller.Instance.Unmarshall(AContext);
      end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class procedure TUpdateReceiptRuleResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TUpdateReceiptRuleResponse);
var
  OriginalDepth: Integer;
begin
  OriginalDepth := AContext.CurrentDepth;
  while AContext.ReadAtDepth(OriginalDepth) do
    if AContext.IsStartElement or AContext.IsAttribute then
    begin
    end;
end;

function TUpdateReceiptRuleResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
var
  ErrorResponse: TErrorResponse;
  StreamCopy: TStream;
  ContextCopy: TXmlUnmarshallerContext;
begin
  ErrorResponse := TErrorResponseUnmarshaller.Instance.Unmarshall(AContext);
  try
    ErrorResponse.InnerException := AInnerException;
    ErrorResponse.StatusCode := AStatusCode;
    StreamCopy := TBytesStream.Create(AContext.GetResponseBodyBytes);
    try
      ContextCopy := TXmlUnmarshallerContext.Create(StreamCopy, False, nil);
      try
        if ErrorResponse.Code = 'InvalidLambdaFunction' then
          Exit(TInvalidLambdaFunctionExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidS3Configuration' then
          Exit(TInvalidS3ConfigurationExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidSnsTopic' then
          Exit(TInvalidSnsTopicExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'LimitExceeded' then
          Exit(TLimitExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'RuleDoesNotExist' then
          Exit(TRuleDoesNotExistExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'RuleSetDoesNotExist' then
          Exit(TRuleSetDoesNotExistExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
      finally
        ContextCopy.Free;
      end;
    finally
      StreamCopy.Free;
    end;
    Exit(EAmazonSimpleEmailServiceException.Create(ErrorResponse.Message, AInnerException, ErrorResponse.ErrorType, ErrorResponse.Code, ErrorResponse.RequestId, AStatusCode));
  finally
    ErrorResponse.Free;
  end;
end;

class constructor TUpdateReceiptRuleResponseUnmarshaller.Create;
begin
  FInstance := TUpdateReceiptRuleResponseUnmarshaller.Create;
end;

class function TUpdateReceiptRuleResponseUnmarshaller.Instance: IUpdateReceiptRuleResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
