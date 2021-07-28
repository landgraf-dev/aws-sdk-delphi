unit AWS.SES.Transform.DeleteReceiptRuleSetResponseUnmarshaller;

interface

uses
  AWS.Runtime.Model, 
  AWS.SES.Model.DeleteReceiptRuleSetResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SES.Transform.CannotDeleteExceptionUnmarshaller, 
  AWS.SES.Exception;

type
  IDeleteReceiptRuleSetResponseUnmarshaller = IResponseUnmarshaller;
  
  TDeleteReceiptRuleSetResponseUnmarshaller = class(TXmlResponseUnmarshaller, IDeleteReceiptRuleSetResponseUnmarshaller)
  strict private
    class var FInstance: IDeleteReceiptRuleSetResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TDeleteReceiptRuleSetResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDeleteReceiptRuleSetResponseUnmarshaller; static;
  end;
  
implementation

{ TDeleteReceiptRuleSetResponseUnmarshaller }

function TDeleteReceiptRuleSetResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDeleteReceiptRuleSetResponse;
  TargetDepth: Integer;
begin
  Response := TDeleteReceiptRuleSetResponse.Create;
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.IsStartElement then
      begin
        if AContext.TestExpression('DeleteReceiptRuleSetResult', 2) then
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

class procedure TDeleteReceiptRuleSetResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TDeleteReceiptRuleSetResponse);
var
  OriginalDepth: Integer;
begin
  OriginalDepth := AContext.CurrentDepth;
  while AContext.ReadAtDepth(OriginalDepth) do
    if AContext.IsStartElement or AContext.IsAttribute then
    begin
    end;
end;

function TDeleteReceiptRuleSetResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'CannotDelete' then
          Exit(TCannotDeleteExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TDeleteReceiptRuleSetResponseUnmarshaller.Create;
begin
  FInstance := TDeleteReceiptRuleSetResponseUnmarshaller.Create;
end;

class function TDeleteReceiptRuleSetResponseUnmarshaller.Instance: IDeleteReceiptRuleSetResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
