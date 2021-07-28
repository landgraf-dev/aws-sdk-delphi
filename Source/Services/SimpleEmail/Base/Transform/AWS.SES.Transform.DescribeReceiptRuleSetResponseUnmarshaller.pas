unit AWS.SES.Transform.DescribeReceiptRuleSetResponseUnmarshaller;

interface

uses
  AWS.Runtime.Model, 
  AWS.SES.Model.DescribeReceiptRuleSetResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SES.Transform.ReceiptRuleSetMetadataUnmarshaller, 
  AWS.SES.Transform.ReceiptRuleUnmarshaller, 
  AWS.SES.Model.ReceiptRule, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SES.Transform.RuleSetDoesNotExistExceptionUnmarshaller, 
  AWS.SES.Exception;

type
  IDescribeReceiptRuleSetResponseUnmarshaller = IResponseUnmarshaller;
  
  TDescribeReceiptRuleSetResponseUnmarshaller = class(TXmlResponseUnmarshaller, IDescribeReceiptRuleSetResponseUnmarshaller)
  strict private
    class var FInstance: IDescribeReceiptRuleSetResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TDescribeReceiptRuleSetResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDescribeReceiptRuleSetResponseUnmarshaller; static;
  end;
  
implementation

{ TDescribeReceiptRuleSetResponseUnmarshaller }

function TDescribeReceiptRuleSetResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDescribeReceiptRuleSetResponse;
  TargetDepth: Integer;
begin
  Response := TDescribeReceiptRuleSetResponse.Create;
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.IsStartElement then
      begin
        if AContext.TestExpression('DescribeReceiptRuleSetResult', 2) then
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

class procedure TDescribeReceiptRuleSetResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TDescribeReceiptRuleSetResponse);
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
begin
  OriginalDepth := AContext.CurrentDepth;
  TargetDepth := OriginalDepth + 1;
  if AContext.IsStartOfDocument then
    Inc(TargetDepth, 2);
  while AContext.ReadAtDepth(OriginalDepth) do
    if AContext.IsStartElement or AContext.IsAttribute then
    begin
      if AContext.TestExpression('Metadata', TargetDepth) then
      begin
        var Unmarshaller := TReceiptRuleSetMetadataUnmarshaller.Instance;
        AResponse.Metadata := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Rules/member', TargetDepth) then
      begin
        var Unmarshaller := TReceiptRuleUnmarshaller.Instance;
        AResponse.Rules.Add(Unmarshaller.Unmarshall(AContext));
        Continue;
      end;
    end;
end;

function TDescribeReceiptRuleSetResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TDescribeReceiptRuleSetResponseUnmarshaller.Create;
begin
  FInstance := TDescribeReceiptRuleSetResponseUnmarshaller.Create;
end;

class function TDescribeReceiptRuleSetResponseUnmarshaller.Instance: IDescribeReceiptRuleSetResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
