unit AWS.S3.Transform.GetBucketWebsiteResponseUnmarshaller;

interface

uses
  AWS.S3.Model.GetBucketWebsiteResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.S3.Transform.ErrorDocumentUnmarshaller, 
  AWS.S3.Transform.IndexDocumentUnmarshaller, 
  AWS.S3.Transform.RedirectAllRequestsToUnmarshaller, 
  AWS.S3.Transform.RoutingRuleUnmarshaller, 
  AWS.S3.Model.RoutingRule, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3.Exception;

type
  IGetBucketWebsiteResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetBucketWebsiteResponseUnmarshaller = class(TXmlResponseUnmarshaller, IGetBucketWebsiteResponseUnmarshaller)
  strict private
    class var FInstance: IGetBucketWebsiteResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetBucketWebsiteResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetBucketWebsiteResponseUnmarshaller; static;
  end;
  
implementation

{ TGetBucketWebsiteResponseUnmarshaller }

function TGetBucketWebsiteResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetBucketWebsiteResponse;
begin
  Response := TGetBucketWebsiteResponse.Create;
  try
    UnmarshallResult(AContext, Response);
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class procedure TGetBucketWebsiteResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetBucketWebsiteResponse);
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
      if AContext.TestExpression('ErrorDocument', TargetDepth) then
      begin
        var Unmarshaller := TErrorDocumentUnmarshaller.Instance;
        AResponse.ErrorDocument := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('IndexDocument', TargetDepth) then
      begin
        var Unmarshaller := TIndexDocumentUnmarshaller.Instance;
        AResponse.IndexDocument := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('RedirectAllRequestsTo', TargetDepth) then
      begin
        var Unmarshaller := TRedirectAllRequestsToUnmarshaller.Instance;
        AResponse.RedirectAllRequestsTo := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('RoutingRules/RoutingRule', TargetDepth) then
      begin
        var Unmarshaller := TRoutingRuleUnmarshaller.Instance;
        AResponse.RoutingRules.Add(Unmarshaller.Unmarshall(AContext));
        Continue;
      end;
    end
    else
      if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
        Exit;
end;

function TGetBucketWebsiteResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TGetBucketWebsiteResponseUnmarshaller.Create;
begin
  FInstance := TGetBucketWebsiteResponseUnmarshaller.Create;
end;

class function TGetBucketWebsiteResponseUnmarshaller.Instance: IGetBucketWebsiteResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
