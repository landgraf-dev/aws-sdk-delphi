unit AWS.S3.Transform.ListBucketAnalyticsConfigurationsResponseUnmarshaller;

interface

uses
  AWS.S3.Model.ListBucketAnalyticsConfigurationsResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.S3.Transform.AnalyticsConfigurationUnmarshaller, 
  AWS.S3.Model.AnalyticsConfiguration, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3.Exception;

type
  IListBucketAnalyticsConfigurationsResponseUnmarshaller = IResponseUnmarshaller;
  
  TListBucketAnalyticsConfigurationsResponseUnmarshaller = class(TXmlResponseUnmarshaller, IListBucketAnalyticsConfigurationsResponseUnmarshaller)
  strict private
    class var FInstance: IListBucketAnalyticsConfigurationsResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TListBucketAnalyticsConfigurationsResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IListBucketAnalyticsConfigurationsResponseUnmarshaller; static;
  end;
  
implementation

{ TListBucketAnalyticsConfigurationsResponseUnmarshaller }

function TListBucketAnalyticsConfigurationsResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TListBucketAnalyticsConfigurationsResponse;
begin
  Response := TListBucketAnalyticsConfigurationsResponse.Create;
  try
    Result := Response;
    UnmarshallResult(AContext, Response);
  except
    Response.Free;
    raise;
  end;
end;

class procedure TListBucketAnalyticsConfigurationsResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TListBucketAnalyticsConfigurationsResponse);
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
      if AContext.TestExpression('member', TargetDepth) then
      begin
        var Unmarshaller := TAnalyticsConfigurationUnmarshaller.Instance;
        AResponse.AnalyticsConfigurationList.Add(Unmarshaller.Unmarshall(AContext));
        Continue;
      end;
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

function TListBucketAnalyticsConfigurationsResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TListBucketAnalyticsConfigurationsResponseUnmarshaller.Create;
begin
  FInstance := TListBucketAnalyticsConfigurationsResponseUnmarshaller.Create;
end;

class function TListBucketAnalyticsConfigurationsResponseUnmarshaller.Instance: IListBucketAnalyticsConfigurationsResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
