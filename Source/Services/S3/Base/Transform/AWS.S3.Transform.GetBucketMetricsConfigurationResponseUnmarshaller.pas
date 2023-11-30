unit AWS.S3.Transform.GetBucketMetricsConfigurationResponseUnmarshaller;

interface

uses
  AWS.S3.Model.GetBucketMetricsConfigurationResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.S3.Transform.MetricsConfigurationUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3.Exception;

type
  IGetBucketMetricsConfigurationResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetBucketMetricsConfigurationResponseUnmarshaller = class(TXmlResponseUnmarshaller, IGetBucketMetricsConfigurationResponseUnmarshaller)
  strict private
    class var FInstance: IGetBucketMetricsConfigurationResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetBucketMetricsConfigurationResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetBucketMetricsConfigurationResponseUnmarshaller; static;
  end;
  
implementation

{ TGetBucketMetricsConfigurationResponseUnmarshaller }

function TGetBucketMetricsConfigurationResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetBucketMetricsConfigurationResponse;
begin
  Response := TGetBucketMetricsConfigurationResponse.Create;
  try
    Result := Response;
    UnmarshallResult(AContext, Response);
  except
    Response.Free;
    raise;
  end;
end;

class procedure TGetBucketMetricsConfigurationResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetBucketMetricsConfigurationResponse);
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
begin
  OriginalDepth := AContext.CurrentDepth;
  TargetDepth := OriginalDepth + 1;
  while AContext.Read do
    if AContext.IsStartElement or AContext.IsAttribute then
      if AContext.TestExpression('MetricsConfiguration', TargetDepth) then
      begin
        var Unmarshaller := TMetricsConfigurationUnmarshaller.Instance;
        AResponse.MetricsConfiguration := Unmarshaller.Unmarshall(AContext);
        Continue;
      end
    else
      if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
        Exit;
end;

function TGetBucketMetricsConfigurationResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
    Exit(EAmazonS3Exception.Create(ErrorResponse.Message, AInnerException, ErrorResponse.ErrorType, ErrorResponse.Code, ErrorResponse.RequestId, AStatusCode));
  finally
    ErrorResponse.Free;
  end;
end;

class constructor TGetBucketMetricsConfigurationResponseUnmarshaller.Create;
begin
  FInstance := TGetBucketMetricsConfigurationResponseUnmarshaller.Create;
end;

class function TGetBucketMetricsConfigurationResponseUnmarshaller.Instance: IGetBucketMetricsConfigurationResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
