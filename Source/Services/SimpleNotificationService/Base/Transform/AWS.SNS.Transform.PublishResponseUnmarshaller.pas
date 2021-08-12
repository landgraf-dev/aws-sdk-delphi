unit AWS.SNS.Transform.PublishResponseUnmarshaller;

interface

uses
  AWS.Runtime.Model, 
  AWS.SNS.Model.PublishResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SNS.Transform.AuthorizationErrorExceptionUnmarshaller, 
  AWS.SNS.Transform.EndpointDisabledExceptionUnmarshaller, 
  AWS.SNS.Transform.InternalErrorExceptionUnmarshaller, 
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
  AWS.SNS.Exception;

type
  IPublishResponseUnmarshaller = IResponseUnmarshaller;
  
  TPublishResponseUnmarshaller = class(TXmlResponseUnmarshaller, IPublishResponseUnmarshaller)
  strict private
    class var FInstance: IPublishResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TPublishResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IPublishResponseUnmarshaller; static;
  end;
  
implementation

{ TPublishResponseUnmarshaller }

function TPublishResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TPublishResponse;
  TargetDepth: Integer;
begin
  Response := TPublishResponse.Create;
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.IsStartElement then
      begin
        if AContext.TestExpression('PublishResult', 2) then
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

class procedure TPublishResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TPublishResponse);
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
      if AContext.TestExpression('MessageId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.MessageId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SequenceNumber', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.SequenceNumber := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
end;

function TPublishResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'EndpointDisabled' then
          Exit(TEndpointDisabledExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InternalError' then
          Exit(TInternalErrorExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TPublishResponseUnmarshaller.Create;
begin
  FInstance := TPublishResponseUnmarshaller.Create;
end;

class function TPublishResponseUnmarshaller.Instance: IPublishResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
