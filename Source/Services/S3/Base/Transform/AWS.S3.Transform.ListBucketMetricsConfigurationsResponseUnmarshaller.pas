unit AWS.S3.Transform.ListBucketMetricsConfigurationsResponseUnmarshaller;

interface

uses
  AWS.S3.Model.ListBucketMetricsConfigurationsResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.S3.Transform.MetricsConfigurationUnmarshaller, 
  AWS.S3.Model.MetricsConfiguration, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3.Exception;

type
  IListBucketMetricsConfigurationsResponseUnmarshaller = IResponseUnmarshaller;
  
  TListBucketMetricsConfigurationsResponseUnmarshaller = class(TXmlResponseUnmarshaller, IListBucketMetricsConfigurationsResponseUnmarshaller)
  strict private
    class var FInstance: IListBucketMetricsConfigurationsResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TListBucketMetricsConfigurationsResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IListBucketMetricsConfigurationsResponseUnmarshaller; static;
  end;
  
implementation

{ TListBucketMetricsConfigurationsResponseUnmarshaller }

function TListBucketMetricsConfigurationsResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TListBucketMetricsConfigurationsResponse;
begin
  Response := TListBucketMetricsConfigurationsResponse.Create;
  try
    Result := Response;
    UnmarshallResult(AContext, Response);
  except
    Response.Free;
    raise;
  end;
end;

class procedure TListBucketMetricsConfigurationsResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TListBucketMetricsConfigurationsResponse);
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
begin
  OriginalDepth := AContext.CurrentDepth;
  TargetDepth := OriginalDepth + 1;
  if AContext.IsStartOfDocument then
    Inc(TargetDepth, 1);
  while AContext.Read do
    if AContext.IsStartElement or AContext.IsAttribute then
    begin
      if AContext.TestExpression('ContinuationToken', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.ContinuationToken := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('IsTruncated', TargetDepth) then
      begin
        var Unmarshaller := TBooleanUnmarshaller.Instance;
        AResponse.IsTruncated := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('member', TargetDepth) then
      begin
        var Unmarshaller := TMetricsConfigurationUnmarshaller.Instance;
        AResponse.MetricsConfigurationList.Add(Unmarshaller.Unmarshall(AContext));
        Continue;
      end;
      if AContext.TestExpression('NextContinuationToken', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.NextContinuationToken := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end
    else
      if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
        Exit;
end;

function TListBucketMetricsConfigurationsResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TListBucketMetricsConfigurationsResponseUnmarshaller.Create;
begin
  FInstance := TListBucketMetricsConfigurationsResponseUnmarshaller.Create;
end;

class function TListBucketMetricsConfigurationsResponseUnmarshaller.Instance: IListBucketMetricsConfigurationsResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
