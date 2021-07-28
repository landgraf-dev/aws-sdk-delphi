unit AWS.SES.Transform.DescribeConfigurationSetResponseUnmarshaller;

interface

uses
  AWS.Runtime.Model, 
  AWS.SES.Model.DescribeConfigurationSetResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SES.Transform.ConfigurationSetUnmarshaller, 
  AWS.SES.Transform.DeliveryOptionsUnmarshaller, 
  AWS.SES.Transform.EventDestinationUnmarshaller, 
  AWS.SES.Model.EventDestination, 
  AWS.SES.Transform.ReputationOptionsUnmarshaller, 
  AWS.SES.Transform.TrackingOptionsUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SES.Transform.ConfigurationSetDoesNotExistExceptionUnmarshaller, 
  AWS.SES.Exception;

type
  IDescribeConfigurationSetResponseUnmarshaller = IResponseUnmarshaller;
  
  TDescribeConfigurationSetResponseUnmarshaller = class(TXmlResponseUnmarshaller, IDescribeConfigurationSetResponseUnmarshaller)
  strict private
    class var FInstance: IDescribeConfigurationSetResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TDescribeConfigurationSetResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDescribeConfigurationSetResponseUnmarshaller; static;
  end;
  
implementation

{ TDescribeConfigurationSetResponseUnmarshaller }

function TDescribeConfigurationSetResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDescribeConfigurationSetResponse;
  TargetDepth: Integer;
begin
  Response := TDescribeConfigurationSetResponse.Create;
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.IsStartElement then
      begin
        if AContext.TestExpression('DescribeConfigurationSetResult', 2) then
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

class procedure TDescribeConfigurationSetResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TDescribeConfigurationSetResponse);
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
    begin
      if AContext.TestExpression('ConfigurationSet', TargetDepth) then
      begin
        var Unmarshaller := TConfigurationSetUnmarshaller.Instance;
        AResponse.ConfigurationSet := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('DeliveryOptions', TargetDepth) then
      begin
        var Unmarshaller := TDeliveryOptionsUnmarshaller.Instance;
        AResponse.DeliveryOptions := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('EventDestinations/member', TargetDepth) then
      begin
        var Unmarshaller := TEventDestinationUnmarshaller.Instance;
        AResponse.EventDestinations.Add(Unmarshaller.Unmarshall(AContext));
        Continue;
      end;
      if AContext.TestExpression('ReputationOptions', TargetDepth) then
      begin
        var Unmarshaller := TReputationOptionsUnmarshaller.Instance;
        AResponse.ReputationOptions := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TrackingOptions', TargetDepth) then
      begin
        var Unmarshaller := TTrackingOptionsUnmarshaller.Instance;
        AResponse.TrackingOptions := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
end;

function TDescribeConfigurationSetResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TDescribeConfigurationSetResponseUnmarshaller.Create;
begin
  FInstance := TDescribeConfigurationSetResponseUnmarshaller.Create;
end;

class function TDescribeConfigurationSetResponseUnmarshaller.Instance: IDescribeConfigurationSetResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
