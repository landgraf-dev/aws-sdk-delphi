unit AWS.SNS.Transform.CreateTopicResponseUnmarshaller;

interface

uses
  AWS.Runtime.Model, 
  AWS.SNS.Model.CreateTopicResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SNS.Transform.AuthorizationErrorExceptionUnmarshaller, 
  AWS.SNS.Transform.ConcurrentAccessExceptionUnmarshaller, 
  AWS.SNS.Transform.InternalErrorExceptionUnmarshaller, 
  AWS.SNS.Transform.InvalidParameterExceptionUnmarshaller, 
  AWS.SNS.Transform.InvalidSecurityExceptionUnmarshaller, 
  AWS.SNS.Transform.StaleTagExceptionUnmarshaller, 
  AWS.SNS.Transform.TagLimitExceededExceptionUnmarshaller, 
  AWS.SNS.Transform.TagPolicyExceptionUnmarshaller, 
  AWS.SNS.Transform.TopicLimitExceededExceptionUnmarshaller, 
  AWS.SNS.Exception;

type
  ICreateTopicResponseUnmarshaller = IResponseUnmarshaller;
  
  TCreateTopicResponseUnmarshaller = class(TXmlResponseUnmarshaller, ICreateTopicResponseUnmarshaller)
  strict private
    class var FInstance: ICreateTopicResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TCreateTopicResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: ICreateTopicResponseUnmarshaller; static;
  end;
  
implementation

{ TCreateTopicResponseUnmarshaller }

function TCreateTopicResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TCreateTopicResponse;
  TargetDepth: Integer;
begin
  Response := TCreateTopicResponse.Create;
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.IsStartElement then
      begin
        if AContext.TestExpression('CreateTopicResult', 2) then
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

class procedure TCreateTopicResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TCreateTopicResponse);
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
      if AContext.TestExpression('TopicArn', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.TopicArn := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
end;

function TCreateTopicResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'ConcurrentAccess' then
          Exit(TConcurrentAccessExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InternalError' then
          Exit(TInternalErrorExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidParameter' then
          Exit(TInvalidParameterExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidSecurity' then
          Exit(TInvalidSecurityExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'StaleTag' then
          Exit(TStaleTagExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'TagLimitExceeded' then
          Exit(TTagLimitExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'TagPolicy' then
          Exit(TTagPolicyExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'TopicLimitExceeded' then
          Exit(TTopicLimitExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TCreateTopicResponseUnmarshaller.Create;
begin
  FInstance := TCreateTopicResponseUnmarshaller.Create;
end;

class function TCreateTopicResponseUnmarshaller.Instance: ICreateTopicResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
