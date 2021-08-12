unit AWS.SNS.Transform.DeleteSMSSandboxPhoneNumberResponseUnmarshaller;

interface

uses
  AWS.Runtime.Model, 
  AWS.SNS.Model.DeleteSMSSandboxPhoneNumberResponse, 
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
  AWS.SNS.Transform.ResourceNotFoundExceptionUnmarshaller, 
  AWS.SNS.Transform.ThrottledExceptionUnmarshaller, 
  AWS.SNS.Transform.UserErrorExceptionUnmarshaller, 
  AWS.SNS.Exception;

type
  IDeleteSMSSandboxPhoneNumberResponseUnmarshaller = IResponseUnmarshaller;
  
  TDeleteSMSSandboxPhoneNumberResponseUnmarshaller = class(TXmlResponseUnmarshaller, IDeleteSMSSandboxPhoneNumberResponseUnmarshaller)
  strict private
    class var FInstance: IDeleteSMSSandboxPhoneNumberResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TDeleteSMSSandboxPhoneNumberResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDeleteSMSSandboxPhoneNumberResponseUnmarshaller; static;
  end;
  
implementation

{ TDeleteSMSSandboxPhoneNumberResponseUnmarshaller }

function TDeleteSMSSandboxPhoneNumberResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDeleteSMSSandboxPhoneNumberResponse;
  TargetDepth: Integer;
begin
  Response := TDeleteSMSSandboxPhoneNumberResponse.Create;
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.IsStartElement then
      begin
        if AContext.TestExpression('DeleteSMSSandboxPhoneNumberResult', 2) then
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

class procedure TDeleteSMSSandboxPhoneNumberResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TDeleteSMSSandboxPhoneNumberResponse);
var
  OriginalDepth: Integer;
begin
  OriginalDepth := AContext.CurrentDepth;
  while AContext.ReadAtDepth(OriginalDepth) do
    if AContext.IsStartElement or AContext.IsAttribute then
    begin
    end;
end;

function TDeleteSMSSandboxPhoneNumberResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'ResourceNotFound' then
          Exit(TResourceNotFoundExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'Throttled' then
          Exit(TThrottledExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'UserError' then
          Exit(TUserErrorExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TDeleteSMSSandboxPhoneNumberResponseUnmarshaller.Create;
begin
  FInstance := TDeleteSMSSandboxPhoneNumberResponseUnmarshaller.Create;
end;

class function TDeleteSMSSandboxPhoneNumberResponseUnmarshaller.Instance: IDeleteSMSSandboxPhoneNumberResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
