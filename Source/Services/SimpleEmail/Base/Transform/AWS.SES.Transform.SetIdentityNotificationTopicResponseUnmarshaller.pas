unit AWS.SES.Transform.SetIdentityNotificationTopicResponseUnmarshaller;

interface

uses
  AWS.Runtime.Model, 
  AWS.SES.Model.SetIdentityNotificationTopicResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SES.Exception;

type
  ISetIdentityNotificationTopicResponseUnmarshaller = IResponseUnmarshaller;
  
  TSetIdentityNotificationTopicResponseUnmarshaller = class(TXmlResponseUnmarshaller, ISetIdentityNotificationTopicResponseUnmarshaller)
  strict private
    class var FInstance: ISetIdentityNotificationTopicResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TSetIdentityNotificationTopicResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: ISetIdentityNotificationTopicResponseUnmarshaller; static;
  end;
  
implementation

{ TSetIdentityNotificationTopicResponseUnmarshaller }

function TSetIdentityNotificationTopicResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TSetIdentityNotificationTopicResponse;
  TargetDepth: Integer;
begin
  Response := TSetIdentityNotificationTopicResponse.Create;
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.IsStartElement then
      begin
        if AContext.TestExpression('SetIdentityNotificationTopicResult', 2) then
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

class procedure TSetIdentityNotificationTopicResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TSetIdentityNotificationTopicResponse);
var
  OriginalDepth: Integer;
begin
  OriginalDepth := AContext.CurrentDepth;
  while AContext.ReadAtDepth(OriginalDepth) do
    if AContext.IsStartElement or AContext.IsAttribute then
    begin
    end;
end;

function TSetIdentityNotificationTopicResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TSetIdentityNotificationTopicResponseUnmarshaller.Create;
begin
  FInstance := TSetIdentityNotificationTopicResponseUnmarshaller.Create;
end;

class function TSetIdentityNotificationTopicResponseUnmarshaller.Instance: ISetIdentityNotificationTopicResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
