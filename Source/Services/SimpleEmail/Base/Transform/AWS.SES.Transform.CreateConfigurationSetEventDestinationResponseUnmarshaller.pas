unit AWS.SES.Transform.CreateConfigurationSetEventDestinationResponseUnmarshaller;

interface

uses
  AWS.Runtime.Model, 
  AWS.SES.Model.CreateConfigurationSetEventDestinationResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SES.Transform.ConfigurationSetDoesNotExistExceptionUnmarshaller, 
  AWS.SES.Transform.EventDestinationAlreadyExistsExceptionUnmarshaller, 
  AWS.SES.Transform.InvalidCloudWatchDestinationExceptionUnmarshaller, 
  AWS.SES.Transform.InvalidFirehoseDestinationExceptionUnmarshaller, 
  AWS.SES.Transform.InvalidSNSDestinationExceptionUnmarshaller, 
  AWS.SES.Transform.LimitExceededExceptionUnmarshaller, 
  AWS.SES.Exception;

type
  ICreateConfigurationSetEventDestinationResponseUnmarshaller = IResponseUnmarshaller;
  
  TCreateConfigurationSetEventDestinationResponseUnmarshaller = class(TXmlResponseUnmarshaller, ICreateConfigurationSetEventDestinationResponseUnmarshaller)
  strict private
    class var FInstance: ICreateConfigurationSetEventDestinationResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TCreateConfigurationSetEventDestinationResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: ICreateConfigurationSetEventDestinationResponseUnmarshaller; static;
  end;
  
implementation

{ TCreateConfigurationSetEventDestinationResponseUnmarshaller }

function TCreateConfigurationSetEventDestinationResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TCreateConfigurationSetEventDestinationResponse;
  TargetDepth: Integer;
begin
  Response := TCreateConfigurationSetEventDestinationResponse.Create;
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.IsStartElement then
      begin
        if AContext.TestExpression('CreateConfigurationSetEventDestinationResult', 2) then
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

class procedure TCreateConfigurationSetEventDestinationResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TCreateConfigurationSetEventDestinationResponse);
var
  OriginalDepth: Integer;
begin
  OriginalDepth := AContext.CurrentDepth;
  while AContext.ReadAtDepth(OriginalDepth) do
    if AContext.IsStartElement or AContext.IsAttribute then
    begin
    end;
end;

function TCreateConfigurationSetEventDestinationResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'EventDestinationAlreadyExists' then
          Exit(TEventDestinationAlreadyExistsExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidCloudWatchDestination' then
          Exit(TInvalidCloudWatchDestinationExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidFirehoseDestination' then
          Exit(TInvalidFirehoseDestinationExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidSNSDestination' then
          Exit(TInvalidSNSDestinationExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'LimitExceeded' then
          Exit(TLimitExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TCreateConfigurationSetEventDestinationResponseUnmarshaller.Create;
begin
  FInstance := TCreateConfigurationSetEventDestinationResponseUnmarshaller.Create;
end;

class function TCreateConfigurationSetEventDestinationResponseUnmarshaller.Instance: ICreateConfigurationSetEventDestinationResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
