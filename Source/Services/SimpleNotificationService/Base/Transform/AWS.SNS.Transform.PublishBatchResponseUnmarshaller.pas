unit AWS.SNS.Transform.PublishBatchResponseUnmarshaller;

interface

uses
  AWS.Runtime.Model, 
  AWS.SNS.Model.PublishBatchResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SNS.Transform.BatchResultErrorEntryUnmarshaller, 
  AWS.SNS.Model.BatchResultErrorEntry, 
  AWS.SNS.Transform.PublishBatchResultEntryUnmarshaller, 
  AWS.SNS.Model.PublishBatchResultEntry, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SNS.Transform.AuthorizationErrorExceptionUnmarshaller, 
  AWS.SNS.Transform.BatchEntryIdsNotDistinctExceptionUnmarshaller, 
  AWS.SNS.Transform.BatchRequestTooLongExceptionUnmarshaller, 
  AWS.SNS.Transform.EmptyBatchRequestExceptionUnmarshaller, 
  AWS.SNS.Transform.EndpointDisabledExceptionUnmarshaller, 
  AWS.SNS.Transform.InternalErrorExceptionUnmarshaller, 
  AWS.SNS.Transform.InvalidBatchEntryIdExceptionUnmarshaller, 
  AWS.SNS.Transform.InvalidParameterExceptionUnmarshaller, 
  AWS.SNS.Transform.InvalidParameterValueExceptionUnmarshaller, 
  AWS.SNS.Transform.InvalidSecurityExceptionUnmarshaller, 
  AWS.SNS.Transform.KMSAccessDeniedExceptionUnmarshaller, 
  AWS.SNS.Transform.KMSDisabledExceptionUnmarshaller, 
  AWS.SNS.Transform.KMSInvalidStateExceptionUnmarshaller, 
  AWS.SNS.Transform.KMSNotFoundExceptionUnmarshaller, 
  AWS.SNS.Transform.KMSOptInRequiredExceptionUnmarshaller, 
  AWS.SNS.Transform.KMSThrottlingExceptionUnmarshaller, 
  AWS.SNS.Transform.NotFoundExceptionUnmarshaller, 
  AWS.SNS.Transform.PlatformApplicationDisabledExceptionUnmarshaller, 
  AWS.SNS.Transform.TooManyEntriesInBatchRequestExceptionUnmarshaller, 
  AWS.SNS.Exception;

type
  IPublishBatchResponseUnmarshaller = IResponseUnmarshaller;
  
  TPublishBatchResponseUnmarshaller = class(TXmlResponseUnmarshaller, IPublishBatchResponseUnmarshaller)
  strict private
    class var FInstance: IPublishBatchResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TPublishBatchResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IPublishBatchResponseUnmarshaller; static;
  end;
  
implementation

{ TPublishBatchResponseUnmarshaller }

function TPublishBatchResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TPublishBatchResponse;
  TargetDepth: Integer;
begin
  Response := TPublishBatchResponse.Create;
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.IsStartElement then
      begin
        if AContext.TestExpression('PublishBatchResult', 2) then
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

class procedure TPublishBatchResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TPublishBatchResponse);
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
      if AContext.TestExpression('Failed/member', TargetDepth) then
      begin
        var Unmarshaller := TBatchResultErrorEntryUnmarshaller.Instance;
        AResponse.Failed.Add(Unmarshaller.Unmarshall(AContext));
        Continue;
      end;
      if AContext.TestExpression('Successful/member', TargetDepth) then
      begin
        var Unmarshaller := TPublishBatchResultEntryUnmarshaller.Instance;
        AResponse.Successful.Add(Unmarshaller.Unmarshall(AContext));
        Continue;
      end;
    end;
end;

function TPublishBatchResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'AuthorizationError' then
          Exit(TAuthorizationErrorExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'BatchEntryIdsNotDistinct' then
          Exit(TBatchEntryIdsNotDistinctExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'BatchRequestTooLong' then
          Exit(TBatchRequestTooLongExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'EmptyBatchRequest' then
          Exit(TEmptyBatchRequestExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'EndpointDisabled' then
          Exit(TEndpointDisabledExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InternalError' then
          Exit(TInternalErrorExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidBatchEntryId' then
          Exit(TInvalidBatchEntryIdExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidParameter' then
          Exit(TInvalidParameterExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ParameterValueInvalid' then
          Exit(TInvalidParameterValueExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidSecurity' then
          Exit(TInvalidSecurityExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'KMSAccessDenied' then
          Exit(TKMSAccessDeniedExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'KMSDisabled' then
          Exit(TKMSDisabledExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'KMSInvalidState' then
          Exit(TKMSInvalidStateExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'KMSNotFound' then
          Exit(TKMSNotFoundExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'KMSOptInRequired' then
          Exit(TKMSOptInRequiredExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'KMSThrottling' then
          Exit(TKMSThrottlingExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'NotFound' then
          Exit(TNotFoundExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'PlatformApplicationDisabled' then
          Exit(TPlatformApplicationDisabledExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'TooManyEntriesInBatchRequest' then
          Exit(TTooManyEntriesInBatchRequestExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
      finally
        ContextCopy.Free;
      end;
    finally
      StreamCopy.Free;
    end;
    Exit(EAmazonSimpleNotificationServiceException.Create(ErrorResponse.Message, AInnerException, ErrorResponse.ErrorType, ErrorResponse.Code, ErrorResponse.RequestId, AStatusCode));
  finally
    ErrorResponse.Free;
  end;
end;

class constructor TPublishBatchResponseUnmarshaller.Create;
begin
  FInstance := TPublishBatchResponseUnmarshaller.Create;
end;

class function TPublishBatchResponseUnmarshaller.Instance: IPublishBatchResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
