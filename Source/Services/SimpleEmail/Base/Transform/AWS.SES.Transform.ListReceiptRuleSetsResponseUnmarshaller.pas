unit AWS.SES.Transform.ListReceiptRuleSetsResponseUnmarshaller;

interface

uses
  AWS.Runtime.Model, 
  AWS.SES.Model.ListReceiptRuleSetsResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SES.Transform.ReceiptRuleSetMetadataUnmarshaller, 
  AWS.SES.Model.ReceiptRuleSetMetadata, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SES.Exception;

type
  IListReceiptRuleSetsResponseUnmarshaller = IResponseUnmarshaller;
  
  TListReceiptRuleSetsResponseUnmarshaller = class(TXmlResponseUnmarshaller, IListReceiptRuleSetsResponseUnmarshaller)
  strict private
    class var FInstance: IListReceiptRuleSetsResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TListReceiptRuleSetsResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IListReceiptRuleSetsResponseUnmarshaller; static;
  end;
  
implementation

{ TListReceiptRuleSetsResponseUnmarshaller }

function TListReceiptRuleSetsResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TListReceiptRuleSetsResponse;
  TargetDepth: Integer;
begin
  Response := TListReceiptRuleSetsResponse.Create;
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.IsStartElement then
      begin
        if AContext.TestExpression('ListReceiptRuleSetsResult', 2) then
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

class procedure TListReceiptRuleSetsResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TListReceiptRuleSetsResponse);
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
      if AContext.TestExpression('NextToken', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.NextToken := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('RuleSets/member', TargetDepth) then
      begin
        var Unmarshaller := TReceiptRuleSetMetadataUnmarshaller.Instance;
        AResponse.RuleSets.Add(Unmarshaller.Unmarshall(AContext));
        Continue;
      end;
    end;
end;

function TListReceiptRuleSetsResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TListReceiptRuleSetsResponseUnmarshaller.Create;
begin
  FInstance := TListReceiptRuleSetsResponseUnmarshaller.Create;
end;

class function TListReceiptRuleSetsResponseUnmarshaller.Instance: IListReceiptRuleSetsResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
