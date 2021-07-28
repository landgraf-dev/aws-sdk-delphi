unit AWS.SES.Transform.UpdateConfigurationSetTrackingOptionsResponseUnmarshaller;

interface

uses
  AWS.Runtime.Model, 
  AWS.SES.Model.UpdateConfigurationSetTrackingOptionsResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SES.Transform.ConfigurationSetDoesNotExistExceptionUnmarshaller, 
  AWS.SES.Transform.InvalidTrackingOptionsExceptionUnmarshaller, 
  AWS.SES.Transform.TrackingOptionsDoesNotExistExceptionUnmarshaller, 
  AWS.SES.Exception;

type
  IUpdateConfigurationSetTrackingOptionsResponseUnmarshaller = IResponseUnmarshaller;
  
  TUpdateConfigurationSetTrackingOptionsResponseUnmarshaller = class(TXmlResponseUnmarshaller, IUpdateConfigurationSetTrackingOptionsResponseUnmarshaller)
  strict private
    class var FInstance: IUpdateConfigurationSetTrackingOptionsResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TUpdateConfigurationSetTrackingOptionsResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IUpdateConfigurationSetTrackingOptionsResponseUnmarshaller; static;
  end;
  
implementation

{ TUpdateConfigurationSetTrackingOptionsResponseUnmarshaller }

function TUpdateConfigurationSetTrackingOptionsResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TUpdateConfigurationSetTrackingOptionsResponse;
  TargetDepth: Integer;
begin
  Response := TUpdateConfigurationSetTrackingOptionsResponse.Create;
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.IsStartElement then
      begin
        if AContext.TestExpression('UpdateConfigurationSetTrackingOptionsResult', 2) then
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

class procedure TUpdateConfigurationSetTrackingOptionsResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TUpdateConfigurationSetTrackingOptionsResponse);
var
  OriginalDepth: Integer;
begin
  OriginalDepth := AContext.CurrentDepth;
  while AContext.ReadAtDepth(OriginalDepth) do
    if AContext.IsStartElement or AContext.IsAttribute then
    begin
    end;
end;

function TUpdateConfigurationSetTrackingOptionsResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'InvalidTrackingOptions' then
          Exit(TInvalidTrackingOptionsExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TUpdateConfigurationSetTrackingOptionsResponseUnmarshaller.Create;
begin
  FInstance := TUpdateConfigurationSetTrackingOptionsResponseUnmarshaller.Create;
end;

class function TUpdateConfigurationSetTrackingOptionsResponseUnmarshaller.Instance: IUpdateConfigurationSetTrackingOptionsResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
