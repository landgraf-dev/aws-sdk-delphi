unit AWS.SES.Transform.DeleteConfigurationSetTrackingOptionsResponseUnmarshaller;

interface

uses
  AWS.Runtime.Model, 
  AWS.SES.Model.DeleteConfigurationSetTrackingOptionsResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SES.Transform.ConfigurationSetDoesNotExistExceptionUnmarshaller, 
  AWS.SES.Transform.TrackingOptionsDoesNotExistExceptionUnmarshaller, 
  AWS.SES.Exception;

type
  IDeleteConfigurationSetTrackingOptionsResponseUnmarshaller = IResponseUnmarshaller;
  
  TDeleteConfigurationSetTrackingOptionsResponseUnmarshaller = class(TXmlResponseUnmarshaller, IDeleteConfigurationSetTrackingOptionsResponseUnmarshaller)
  strict private
    class var FInstance: IDeleteConfigurationSetTrackingOptionsResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TDeleteConfigurationSetTrackingOptionsResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDeleteConfigurationSetTrackingOptionsResponseUnmarshaller; static;
  end;
  
implementation

{ TDeleteConfigurationSetTrackingOptionsResponseUnmarshaller }

function TDeleteConfigurationSetTrackingOptionsResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDeleteConfigurationSetTrackingOptionsResponse;
  TargetDepth: Integer;
begin
  Response := TDeleteConfigurationSetTrackingOptionsResponse.Create;
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.IsStartElement then
      begin
        if AContext.TestExpression('DeleteConfigurationSetTrackingOptionsResult', 2) then
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

class procedure TDeleteConfigurationSetTrackingOptionsResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TDeleteConfigurationSetTrackingOptionsResponse);
var
  OriginalDepth: Integer;
begin
  OriginalDepth := AContext.CurrentDepth;
  while AContext.ReadAtDepth(OriginalDepth) do
    if AContext.IsStartElement or AContext.IsAttribute then
    begin
    end;
end;

function TDeleteConfigurationSetTrackingOptionsResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'TrackingOptionsDoesNotExistException' then
          Exit(TTrackingOptionsDoesNotExistExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TDeleteConfigurationSetTrackingOptionsResponseUnmarshaller.Create;
begin
  FInstance := TDeleteConfigurationSetTrackingOptionsResponseUnmarshaller.Create;
end;

class function TDeleteConfigurationSetTrackingOptionsResponseUnmarshaller.Instance: IDeleteConfigurationSetTrackingOptionsResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
