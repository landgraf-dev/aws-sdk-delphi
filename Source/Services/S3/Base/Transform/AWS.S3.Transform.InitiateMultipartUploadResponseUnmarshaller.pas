unit AWS.S3.Transform.InitiateMultipartUploadResponseUnmarshaller;

interface

uses
  System.SysUtils, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.S3.Model.InitiateMultipartUploadResponse, 
  AWS.S3.Transform.S3ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.S3.Internal.S3Transforms, 
  AWS.Runtime.Exceptions, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3.Exception;

type
  IInitiateMultipartUploadResponseUnmarshaller = IResponseUnmarshaller;
  
  TInitiateMultipartUploadResponseUnmarshaller = class(TS3ResponseUnmarshaller, IInitiateMultipartUploadResponseUnmarshaller)
  strict private
    class var FInstance: IInitiateMultipartUploadResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TInitiateMultipartUploadResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IInitiateMultipartUploadResponseUnmarshaller; static;
  end;
  
implementation

{ TInitiateMultipartUploadResponseUnmarshaller }

function TInitiateMultipartUploadResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TInitiateMultipartUploadResponse;
begin
  Response := TInitiateMultipartUploadResponse.Create;
  try
    Result := Response;
    UnmarshallResult(AContext, Response);
    if AContext.ResponseData.IsHeaderPresent('x-amz-abort-date') then
      Response.AbortDate := TS3Transforms.ToDateTime(AContext.ResponseData.GetHeaderValue('x-amz-abort-date'));
    if AContext.ResponseData.IsHeaderPresent('x-amz-abort-rule-id') then
      Response.AbortRuleId := AContext.ResponseData.GetHeaderValue('x-amz-abort-rule-id');
    if AContext.ResponseData.IsHeaderPresent('x-amz-server-side-encryption-bucket-key-enabled') then
      Response.BucketKeyEnabled := StrToBool(AContext.ResponseData.GetHeaderValue('x-amz-server-side-encryption-bucket-key-enabled'));
    if AContext.ResponseData.IsHeaderPresent('x-amz-request-charged') then
      Response.RequestCharged := AContext.ResponseData.GetHeaderValue('x-amz-request-charged');
    if AContext.ResponseData.IsHeaderPresent('x-amz-server-side-encryption-customer-algorithm') then
      Response.SSECustomerAlgorithm := AContext.ResponseData.GetHeaderValue('x-amz-server-side-encryption-customer-algorithm');
    if AContext.ResponseData.IsHeaderPresent('x-amz-server-side-encryption-customer-key-MD5') then
      Response.SSECustomerKeyMD5 := AContext.ResponseData.GetHeaderValue('x-amz-server-side-encryption-customer-key-MD5');
    if AContext.ResponseData.IsHeaderPresent('x-amz-server-side-encryption-context') then
      Response.SSEKMSEncryptionContext := AContext.ResponseData.GetHeaderValue('x-amz-server-side-encryption-context');
    if AContext.ResponseData.IsHeaderPresent('x-amz-server-side-encryption-aws-kms-key-id') then
      Response.SSEKMSKeyId := AContext.ResponseData.GetHeaderValue('x-amz-server-side-encryption-aws-kms-key-id');
    if AContext.ResponseData.IsHeaderPresent('x-amz-server-side-encryption') then
      Response.ServerSideEncryption := AContext.ResponseData.GetHeaderValue('x-amz-server-side-encryption');
  except
    Response.Free;
    raise;
  end;
end;

class procedure TInitiateMultipartUploadResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TInitiateMultipartUploadResponse);
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
      if AContext.TestExpression('Key', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.Key := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('UploadId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.UploadId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end
    else
      if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
        Exit;
end;

function TInitiateMultipartUploadResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TInitiateMultipartUploadResponseUnmarshaller.Create;
begin
  FInstance := TInitiateMultipartUploadResponseUnmarshaller.Create;
end;

class function TInitiateMultipartUploadResponseUnmarshaller.Instance: IInitiateMultipartUploadResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
