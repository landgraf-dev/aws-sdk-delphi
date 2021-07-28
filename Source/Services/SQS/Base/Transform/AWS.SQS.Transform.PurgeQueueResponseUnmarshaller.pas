unit AWS.SQS.Transform.PurgeQueueResponseUnmarshaller;

interface

uses
  AWS.Runtime.Model, 
  AWS.SQS.Model.PurgeQueueResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SQS.Transform.PurgeQueueInProgressExceptionUnmarshaller, 
  AWS.SQS.Transform.QueueDoesNotExistExceptionUnmarshaller, 
  AWS.SQS.Exception;

type
  IPurgeQueueResponseUnmarshaller = IResponseUnmarshaller;
  
  TPurgeQueueResponseUnmarshaller = class(TXmlResponseUnmarshaller, IPurgeQueueResponseUnmarshaller)
  strict private
    class var FInstance: IPurgeQueueResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TPurgeQueueResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IPurgeQueueResponseUnmarshaller; static;
  end;
  
implementation

{ TPurgeQueueResponseUnmarshaller }

function TPurgeQueueResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TPurgeQueueResponse;
  TargetDepth: Integer;
begin
  Response := TPurgeQueueResponse.Create;
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.IsStartElement then
      begin
        if AContext.TestExpression('PurgeQueueResult', 2) then
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

class procedure TPurgeQueueResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TPurgeQueueResponse);
var
  OriginalDepth: Integer;
begin
  OriginalDepth := AContext.CurrentDepth;
  while AContext.ReadAtDepth(OriginalDepth) do
    if AContext.IsStartElement or AContext.IsAttribute then
    begin
    end;
end;

function TPurgeQueueResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'AWS.SimpleQueueService.PurgeQueueInProgress' then
          Exit(TPurgeQueueInProgressExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'AWS.SimpleQueueService.NonExistentQueue' then
          Exit(TQueueDoesNotExistExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TPurgeQueueResponseUnmarshaller.Create;
begin
  FInstance := TPurgeQueueResponseUnmarshaller.Create;
end;

class function TPurgeQueueResponseUnmarshaller.Instance: IPurgeQueueResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
