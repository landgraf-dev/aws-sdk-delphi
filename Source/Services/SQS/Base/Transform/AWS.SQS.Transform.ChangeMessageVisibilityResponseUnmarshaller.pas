unit AWS.SQS.Transform.ChangeMessageVisibilityResponseUnmarshaller;

interface

uses
  AWS.Runtime.Model, 
  AWS.SQS.Model.ChangeMessageVisibilityResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SQS.Transform.MessageNotInflightExceptionUnmarshaller, 
  AWS.SQS.Transform.ReceiptHandleIsInvalidExceptionUnmarshaller, 
  AWS.SQS.Exception;

type
  IChangeMessageVisibilityResponseUnmarshaller = IResponseUnmarshaller;
  
  TChangeMessageVisibilityResponseUnmarshaller = class(TXmlResponseUnmarshaller, IChangeMessageVisibilityResponseUnmarshaller)
  strict private
    class var FInstance: IChangeMessageVisibilityResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TChangeMessageVisibilityResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IChangeMessageVisibilityResponseUnmarshaller; static;
  end;
  
implementation

{ TChangeMessageVisibilityResponseUnmarshaller }

function TChangeMessageVisibilityResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TChangeMessageVisibilityResponse;
  TargetDepth: Integer;
begin
  Response := TChangeMessageVisibilityResponse.Create;
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.IsStartElement then
      begin
        if AContext.TestExpression('ChangeMessageVisibilityResult', 2) then
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

class procedure TChangeMessageVisibilityResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TChangeMessageVisibilityResponse);
var
  OriginalDepth: Integer;
begin
  OriginalDepth := AContext.CurrentDepth;
  while AContext.ReadAtDepth(OriginalDepth) do
    if AContext.IsStartElement or AContext.IsAttribute then
    begin
    end;
end;

function TChangeMessageVisibilityResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'AWS.SimpleQueueService.MessageNotInflight' then
          Exit(TMessageNotInflightExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ReceiptHandleIsInvalidException' then
          Exit(TReceiptHandleIsInvalidExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
      finally
        ContextCopy.Free;
      end;
    finally
      StreamCopy.Free;
    end;
    Exit(EAmazonSQSException.Create(ErrorResponse.Message, AInnerException, ErrorResponse.ErrorType, ErrorResponse.Code, ErrorResponse.RequestId, AStatusCode));
  finally
    ErrorResponse.Free;
  end;
end;

class constructor TChangeMessageVisibilityResponseUnmarshaller.Create;
begin
  FInstance := TChangeMessageVisibilityResponseUnmarshaller.Create;
end;

class function TChangeMessageVisibilityResponseUnmarshaller.Instance: IChangeMessageVisibilityResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
