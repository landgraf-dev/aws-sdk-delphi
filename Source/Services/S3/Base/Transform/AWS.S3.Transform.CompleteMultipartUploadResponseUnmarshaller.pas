unit AWS.S3.Transform.CompleteMultipartUploadResponseUnmarshaller;

interface

uses
  System.SysUtils, 
  AWS.S3.Model.CompleteMultipartUploadResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3.Exception;

type
  ICompleteMultipartUploadResponseUnmarshaller = IResponseUnmarshaller;
  
  TCompleteMultipartUploadResponseUnmarshaller = class(TXmlResponseUnmarshaller, ICompleteMultipartUploadResponseUnmarshaller)
  strict private
    class var FInstance: ICompleteMultipartUploadResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TCompleteMultipartUploadResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: ICompleteMultipartUploadResponseUnmarshaller; static;
  end;
  
implementation

{ TCompleteMultipartUploadResponseUnmarshaller }

function TCompleteMultipartUploadResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TCompleteMultipartUploadResponse;
begin
  Response := TCompleteMultipartUploadResponse.Create;
  try
    Result := Response;
    UnmarshallResult(AContext, Response);
    if AContext.ResponseData.IsHeaderPresent('x-amz-server-side-encryption-bucket-key-enabled') then
      Response.BucketKeyEnabled := StrToBool(AContext.ResponseData.GetHeaderValue('x-amz-server-side-encryption-bucket-key-enabled'));
    if AContext.ResponseData.IsHeaderPresent('x-amz-expiration') then
      Response.Expiration := AContext.ResponseData.GetHeaderValue('x-amz-expiration');
    if AContext.ResponseData.IsHeaderPresent('x-amz-request-charged') then
      Response.RequestCharged := AContext.ResponseData.GetHeaderValue('x-amz-request-charged');
    if AContext.ResponseData.IsHeaderPresent('x-amz-server-side-encryption-aws-kms-key-id') then
      Response.SSEKMSKeyId := AContext.ResponseData.GetHeaderValue('x-amz-server-side-encryption-aws-kms-key-id');
    if AContext.ResponseData.IsHeaderPresent('x-amz-server-side-encryption') then
      Response.ServerSideEncryption := AContext.ResponseData.GetHeaderValue('x-amz-server-side-encryption');
    if AContext.ResponseData.IsHeaderPresent('x-amz-version-id') then
      Response.VersionId := AContext.ResponseData.GetHeaderValue('x-amz-version-id');
  except
    Response.Free;
    raise;
  end;
end;

class procedure TCompleteMultipartUploadResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TCompleteMultipartUploadResponse);
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
      if AContext.TestExpression('Bucket', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.BucketName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ETag', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.ETag := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Key', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.Key := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Location', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.Location := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end
    else
      if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
        Exit;
end;

function TCompleteMultipartUploadResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TCompleteMultipartUploadResponseUnmarshaller.Create;
begin
  FInstance := TCompleteMultipartUploadResponseUnmarshaller.Create;
end;

class function TCompleteMultipartUploadResponseUnmarshaller.Instance: ICompleteMultipartUploadResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
