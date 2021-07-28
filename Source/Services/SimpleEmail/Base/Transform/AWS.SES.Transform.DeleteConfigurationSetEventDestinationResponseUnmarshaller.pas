unit AWS.SES.Transform.DeleteConfigurationSetEventDestinationResponseUnmarshaller;

interface

uses
  AWS.Runtime.Model, 
  AWS.SES.Model.DeleteConfigurationSetEventDestinationResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SES.Transform.ConfigurationSetDoesNotExistExceptionUnmarshaller, 
  AWS.SES.Transform.EventDestinationDoesNotExistExceptionUnmarshaller, 
  AWS.SES.Exception;

type
  IDeleteConfigurationSetEventDestinationResponseUnmarshaller = IResponseUnmarshaller;
  
  TDeleteConfigurationSetEventDestinationResponseUnmarshaller = class(TXmlResponseUnmarshaller, IDeleteConfigurationSetEventDestinationResponseUnmarshaller)
  strict private
    class var FInstance: IDeleteConfigurationSetEventDestinationResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TDeleteConfigurationSetEventDestinationResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDeleteConfigurationSetEventDestinationResponseUnmarshaller; static;
  end;
  
implementation

{ TDeleteConfigurationSetEventDestinationResponseUnmarshaller }

function TDeleteConfigurationSetEventDestinationResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDeleteConfigurationSetEventDestinationResponse;
  TargetDepth: Integer;
begin
  Response := TDeleteConfigurationSetEventDestinationResponse.Create;
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.IsStartElement then
      begin
        if AContext.TestExpression('DeleteConfigurationSetEventDestinationResult', 2) then
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

class procedure TDeleteConfigurationSetEventDestinationResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TDeleteConfigurationSetEventDestinationResponse);
var
  OriginalDepth: Integer;
begin
  OriginalDepth := AContext.CurrentDepth;
  while AContext.ReadAtDepth(OriginalDepth) do
    if AContext.IsStartElement or AContext.IsAttribute then
    begin
    end;
end;

function TDeleteConfigurationSetEventDestinationResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'EventDestinationDoesNotExist' then
          Exit(TEventDestinationDoesNotExistExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TDeleteConfigurationSetEventDestinationResponseUnmarshaller.Create;
begin
  FInstance := TDeleteConfigurationSetEventDestinationResponseUnmarshaller.Create;
end;

class function TDeleteConfigurationSetEventDestinationResponseUnmarshaller.Instance: IDeleteConfigurationSetEventDestinationResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
