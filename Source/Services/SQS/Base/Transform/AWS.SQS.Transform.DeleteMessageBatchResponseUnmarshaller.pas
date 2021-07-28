unit AWS.SQS.Transform.DeleteMessageBatchResponseUnmarshaller;

interface

uses
  AWS.Runtime.Model, 
  AWS.SQS.Model.DeleteMessageBatchResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SQS.Transform.BatchResultErrorEntryUnmarshaller, 
  AWS.SQS.Model.BatchResultErrorEntry, 
  AWS.SQS.Transform.DeleteMessageBatchResultEntryUnmarshaller, 
  AWS.SQS.Model.DeleteMessageBatchResultEntry, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SQS.Transform.BatchEntryIdsNotDistinctExceptionUnmarshaller, 
  AWS.SQS.Transform.EmptyBatchRequestExceptionUnmarshaller, 
  AWS.SQS.Transform.InvalidBatchEntryIdExceptionUnmarshaller, 
  AWS.SQS.Transform.TooManyEntriesInBatchRequestExceptionUnmarshaller, 
  AWS.SQS.Exception;

type
  IDeleteMessageBatchResponseUnmarshaller = IResponseUnmarshaller;
  
  TDeleteMessageBatchResponseUnmarshaller = class(TXmlResponseUnmarshaller, IDeleteMessageBatchResponseUnmarshaller)
  strict private
    class var FInstance: IDeleteMessageBatchResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TDeleteMessageBatchResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDeleteMessageBatchResponseUnmarshaller; static;
  end;
  
implementation

{ TDeleteMessageBatchResponseUnmarshaller }

function TDeleteMessageBatchResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDeleteMessageBatchResponse;
  TargetDepth: Integer;
begin
  Response := TDeleteMessageBatchResponse.Create;
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.IsStartElement then
      begin
        if AContext.TestExpression('DeleteMessageBatchResult', 2) then
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

class procedure TDeleteMessageBatchResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TDeleteMessageBatchResponse);
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
      if AContext.TestExpression('BatchResultErrorEntry', TargetDepth) then
      begin
        var Unmarshaller := TBatchResultErrorEntryUnmarshaller.Instance;
        AResponse.Failed.Add(Unmarshaller.Unmarshall(AContext));
        Continue;
      end;
      if AContext.TestExpression('DeleteMessageBatchResultEntry', TargetDepth) then
      begin
        var Unmarshaller := TDeleteMessageBatchResultEntryUnmarshaller.Instance;
        AResponse.Successful.Add(Unmarshaller.Unmarshall(AContext));
        Continue;
      end;
    end;
end;

function TDeleteMessageBatchResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'AWS.SimpleQueueService.BatchEntryIdsNotDistinct' then
          Exit(TBatchEntryIdsNotDistinctExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'AWS.SimpleQueueService.EmptyBatchRequest' then
          Exit(TEmptyBatchRequestExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'AWS.SimpleQueueService.InvalidBatchEntryId' then
          Exit(TInvalidBatchEntryIdExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'AWS.SimpleQueueService.TooManyEntriesInBatchRequest' then
          Exit(TTooManyEntriesInBatchRequestExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TDeleteMessageBatchResponseUnmarshaller.Create;
begin
  FInstance := TDeleteMessageBatchResponseUnmarshaller.Create;
end;

class function TDeleteMessageBatchResponseUnmarshaller.Instance: IDeleteMessageBatchResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
