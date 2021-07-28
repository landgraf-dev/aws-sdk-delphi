unit AWS.SES.Transform.UpdateConfigurationSetSendingEnabledResponseUnmarshaller;

interface

uses
  AWS.Runtime.Model, 
  AWS.SES.Model.UpdateConfigurationSetSendingEnabledResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SES.Transform.ConfigurationSetDoesNotExistExceptionUnmarshaller, 
  AWS.SES.Exception;

type
  IUpdateConfigurationSetSendingEnabledResponseUnmarshaller = IResponseUnmarshaller;
  
  TUpdateConfigurationSetSendingEnabledResponseUnmarshaller = class(TXmlResponseUnmarshaller, IUpdateConfigurationSetSendingEnabledResponseUnmarshaller)
  strict private
    class var FInstance: IUpdateConfigurationSetSendingEnabledResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TUpdateConfigurationSetSendingEnabledResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IUpdateConfigurationSetSendingEnabledResponseUnmarshaller; static;
  end;
  
implementation

{ TUpdateConfigurationSetSendingEnabledResponseUnmarshaller }

function TUpdateConfigurationSetSendingEnabledResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TUpdateConfigurationSetSendingEnabledResponse;
  TargetDepth: Integer;
begin
  Response := TUpdateConfigurationSetSendingEnabledResponse.Create;
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.IsStartElement then
      begin
        if AContext.TestExpression('UpdateConfigurationSetSendingEnabledResult', 2) then
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

class procedure TUpdateConfigurationSetSendingEnabledResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TUpdateConfigurationSetSendingEnabledResponse);
var
  OriginalDepth: Integer;
begin
  OriginalDepth := AContext.CurrentDepth;
  while AContext.ReadAtDepth(OriginalDepth) do
    if AContext.IsStartElement or AContext.IsAttribute then
    begin
    end;
end;

function TUpdateConfigurationSetSendingEnabledResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'ConfigurationSetDoesNotExist' then
          Exit(TConfigurationSetDoesNotExistExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TUpdateConfigurationSetSendingEnabledResponseUnmarshaller.Create;
begin
  FInstance := TUpdateConfigurationSetSendingEnabledResponseUnmarshaller.Create;
end;

class function TUpdateConfigurationSetSendingEnabledResponseUnmarshaller.Instance: IUpdateConfigurationSetSendingEnabledResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
