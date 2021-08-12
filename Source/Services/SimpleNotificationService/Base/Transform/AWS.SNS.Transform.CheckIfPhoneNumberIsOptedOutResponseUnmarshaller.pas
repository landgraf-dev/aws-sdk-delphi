unit AWS.SNS.Transform.CheckIfPhoneNumberIsOptedOutResponseUnmarshaller;

interface

uses
  AWS.Runtime.Model, 
  AWS.SNS.Model.CheckIfPhoneNumberIsOptedOutResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SNS.Transform.AuthorizationErrorExceptionUnmarshaller, 
  AWS.SNS.Transform.InternalErrorExceptionUnmarshaller, 
  AWS.SNS.Transform.InvalidParameterExceptionUnmarshaller, 
  AWS.SNS.Transform.ThrottledExceptionUnmarshaller, 
  AWS.SNS.Exception;

type
  ICheckIfPhoneNumberIsOptedOutResponseUnmarshaller = IResponseUnmarshaller;
  
  TCheckIfPhoneNumberIsOptedOutResponseUnmarshaller = class(TXmlResponseUnmarshaller, ICheckIfPhoneNumberIsOptedOutResponseUnmarshaller)
  strict private
    class var FInstance: ICheckIfPhoneNumberIsOptedOutResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TCheckIfPhoneNumberIsOptedOutResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: ICheckIfPhoneNumberIsOptedOutResponseUnmarshaller; static;
  end;
  
implementation

{ TCheckIfPhoneNumberIsOptedOutResponseUnmarshaller }

function TCheckIfPhoneNumberIsOptedOutResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TCheckIfPhoneNumberIsOptedOutResponse;
  TargetDepth: Integer;
begin
  Response := TCheckIfPhoneNumberIsOptedOutResponse.Create;
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.IsStartElement then
      begin
        if AContext.TestExpression('CheckIfPhoneNumberIsOptedOutResult', 2) then
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

class procedure TCheckIfPhoneNumberIsOptedOutResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TCheckIfPhoneNumberIsOptedOutResponse);
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
      if AContext.TestExpression('isOptedOut', TargetDepth) then
      begin
        var Unmarshaller := TBooleanUnmarshaller.Instance;
        AResponse.IsOptedOut := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
end;

function TCheckIfPhoneNumberIsOptedOutResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'Throttled' then
          Exit(TThrottledExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TCheckIfPhoneNumberIsOptedOutResponseUnmarshaller.Create;
begin
  FInstance := TCheckIfPhoneNumberIsOptedOutResponseUnmarshaller.Create;
end;

class function TCheckIfPhoneNumberIsOptedOutResponseUnmarshaller.Instance: ICheckIfPhoneNumberIsOptedOutResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
