unit AWS.SNS.Transform.ListSubscriptionsResponseUnmarshaller;

interface

uses
  AWS.Runtime.Model, 
  AWS.SNS.Model.ListSubscriptionsResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SNS.Transform.SubscriptionUnmarshaller, 
  AWS.SNS.Model.Subscription, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SNS.Transform.AuthorizationErrorExceptionUnmarshaller, 
  AWS.SNS.Transform.InternalErrorExceptionUnmarshaller, 
  AWS.SNS.Transform.InvalidParameterExceptionUnmarshaller, 
  AWS.SNS.Exception;

type
  IListSubscriptionsResponseUnmarshaller = IResponseUnmarshaller;
  
  TListSubscriptionsResponseUnmarshaller = class(TXmlResponseUnmarshaller, IListSubscriptionsResponseUnmarshaller)
  strict private
    class var FInstance: IListSubscriptionsResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TListSubscriptionsResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IListSubscriptionsResponseUnmarshaller; static;
  end;
  
implementation

{ TListSubscriptionsResponseUnmarshaller }

function TListSubscriptionsResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TListSubscriptionsResponse;
  TargetDepth: Integer;
begin
  Response := TListSubscriptionsResponse.Create;
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.IsStartElement then
      begin
        if AContext.TestExpression('ListSubscriptionsResult', 2) then
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

class procedure TListSubscriptionsResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TListSubscriptionsResponse);
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
      if AContext.TestExpression('Subscriptions/member', TargetDepth) then
      begin
        var Unmarshaller := TSubscriptionUnmarshaller.Instance;
        AResponse.Subscriptions.Add(Unmarshaller.Unmarshall(AContext));
        Continue;
      end;
    end;
end;

function TListSubscriptionsResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'InternalError' then
          Exit(TInternalErrorExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidParameter' then
          Exit(TInvalidParameterExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TListSubscriptionsResponseUnmarshaller.Create;
begin
  FInstance := TListSubscriptionsResponseUnmarshaller.Create;
end;

class function TListSubscriptionsResponseUnmarshaller.Instance: IListSubscriptionsResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
