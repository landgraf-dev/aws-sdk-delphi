unit AWS.S3Control.Transform.GetBucketLifecycleConfigurationResponseUnmarshaller;

interface

uses
  AWS.S3Control.Model.GetBucketLifecycleConfigurationResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.S3Control.Transform.LifecycleRuleUnmarshaller, 
  AWS.S3Control.Model.LifecycleRule, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3Control.Exception;

type
  IGetBucketLifecycleConfigurationResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetBucketLifecycleConfigurationResponseUnmarshaller = class(TXmlResponseUnmarshaller, IGetBucketLifecycleConfigurationResponseUnmarshaller)
  strict private
    class var FInstance: IGetBucketLifecycleConfigurationResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetBucketLifecycleConfigurationResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetBucketLifecycleConfigurationResponseUnmarshaller; static;
  end;
  
implementation

{ TGetBucketLifecycleConfigurationResponseUnmarshaller }

function TGetBucketLifecycleConfigurationResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetBucketLifecycleConfigurationResponse;
begin
  Response := TGetBucketLifecycleConfigurationResponse.Create;
  try
    UnmarshallResult(AContext, Response);
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class procedure TGetBucketLifecycleConfigurationResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetBucketLifecycleConfigurationResponse);
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
      if AContext.TestExpression('Rules/Rule', TargetDepth) then
      begin
        var Unmarshaller := TLifecycleRuleUnmarshaller.Instance;
        AResponse.Rules.Add(Unmarshaller.Unmarshall(AContext));
        Continue;
      end
    else
      if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
        Exit;
end;

function TGetBucketLifecycleConfigurationResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
    Exit(EAmazonS3ControlException.Create(ErrorResponse.Message, AInnerException, ErrorResponse.ErrorType, ErrorResponse.Code, ErrorResponse.RequestId, AStatusCode));
  finally
    ErrorResponse.Free;
  end;
end;

class constructor TGetBucketLifecycleConfigurationResponseUnmarshaller.Create;
begin
  FInstance := TGetBucketLifecycleConfigurationResponseUnmarshaller.Create;
end;

class function TGetBucketLifecycleConfigurationResponseUnmarshaller.Instance: IGetBucketLifecycleConfigurationResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
