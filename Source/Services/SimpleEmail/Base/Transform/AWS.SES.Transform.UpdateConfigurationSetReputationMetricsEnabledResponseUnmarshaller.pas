unit AWS.SES.Transform.UpdateConfigurationSetReputationMetricsEnabledResponseUnmarshaller;

interface

uses
  AWS.Runtime.Model, 
  AWS.SES.Model.UpdateConfigurationSetReputationMetricsEnabledResponse, 
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
  IUpdateConfigurationSetReputationMetricsEnabledResponseUnmarshaller = IResponseUnmarshaller;
  
  TUpdateConfigurationSetReputationMetricsEnabledResponseUnmarshaller = class(TXmlResponseUnmarshaller, IUpdateConfigurationSetReputationMetricsEnabledResponseUnmarshaller)
  strict private
    class var FInstance: IUpdateConfigurationSetReputationMetricsEnabledResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TUpdateConfigurationSetReputationMetricsEnabledResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IUpdateConfigurationSetReputationMetricsEnabledResponseUnmarshaller; static;
  end;
  
implementation

{ TUpdateConfigurationSetReputationMetricsEnabledResponseUnmarshaller }

function TUpdateConfigurationSetReputationMetricsEnabledResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TUpdateConfigurationSetReputationMetricsEnabledResponse;
  TargetDepth: Integer;
begin
  Response := TUpdateConfigurationSetReputationMetricsEnabledResponse.Create;
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.IsStartElement then
      begin
        if AContext.TestExpression('UpdateConfigurationSetReputationMetricsEnabledResult', 2) then
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

class procedure TUpdateConfigurationSetReputationMetricsEnabledResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TUpdateConfigurationSetReputationMetricsEnabledResponse);
var
  OriginalDepth: Integer;
begin
  OriginalDepth := AContext.CurrentDepth;
  while AContext.ReadAtDepth(OriginalDepth) do
    if AContext.IsStartElement or AContext.IsAttribute then
    begin
    end;
end;

function TUpdateConfigurationSetReputationMetricsEnabledResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TUpdateConfigurationSetReputationMetricsEnabledResponseUnmarshaller.Create;
begin
  FInstance := TUpdateConfigurationSetReputationMetricsEnabledResponseUnmarshaller.Create;
end;

class function TUpdateConfigurationSetReputationMetricsEnabledResponseUnmarshaller.Instance: IUpdateConfigurationSetReputationMetricsEnabledResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
