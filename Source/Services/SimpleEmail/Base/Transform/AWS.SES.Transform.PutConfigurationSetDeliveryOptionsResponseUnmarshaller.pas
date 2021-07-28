unit AWS.SES.Transform.PutConfigurationSetDeliveryOptionsResponseUnmarshaller;

interface

uses
  AWS.Runtime.Model, 
  AWS.SES.Model.PutConfigurationSetDeliveryOptionsResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SES.Transform.ConfigurationSetDoesNotExistExceptionUnmarshaller, 
  AWS.SES.Transform.InvalidDeliveryOptionsExceptionUnmarshaller, 
  AWS.SES.Exception;

type
  IPutConfigurationSetDeliveryOptionsResponseUnmarshaller = IResponseUnmarshaller;
  
  TPutConfigurationSetDeliveryOptionsResponseUnmarshaller = class(TXmlResponseUnmarshaller, IPutConfigurationSetDeliveryOptionsResponseUnmarshaller)
  strict private
    class var FInstance: IPutConfigurationSetDeliveryOptionsResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TPutConfigurationSetDeliveryOptionsResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IPutConfigurationSetDeliveryOptionsResponseUnmarshaller; static;
  end;
  
implementation

{ TPutConfigurationSetDeliveryOptionsResponseUnmarshaller }

function TPutConfigurationSetDeliveryOptionsResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TPutConfigurationSetDeliveryOptionsResponse;
  TargetDepth: Integer;
begin
  Response := TPutConfigurationSetDeliveryOptionsResponse.Create;
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.IsStartElement then
      begin
        if AContext.TestExpression('PutConfigurationSetDeliveryOptionsResult', 2) then
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

class procedure TPutConfigurationSetDeliveryOptionsResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TPutConfigurationSetDeliveryOptionsResponse);
var
  OriginalDepth: Integer;
begin
  OriginalDepth := AContext.CurrentDepth;
  while AContext.ReadAtDepth(OriginalDepth) do
    if AContext.IsStartElement or AContext.IsAttribute then
    begin
    end;
end;

function TPutConfigurationSetDeliveryOptionsResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'InvalidDeliveryOptions' then
          Exit(TInvalidDeliveryOptionsExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TPutConfigurationSetDeliveryOptionsResponseUnmarshaller.Create;
begin
  FInstance := TPutConfigurationSetDeliveryOptionsResponseUnmarshaller.Create;
end;

class function TPutConfigurationSetDeliveryOptionsResponseUnmarshaller.Instance: IPutConfigurationSetDeliveryOptionsResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
