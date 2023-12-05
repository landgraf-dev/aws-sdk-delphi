unit AWS.S3.Transform.UploadPartResponseUnmarshaller;

interface

uses
  System.SysUtils, 
  AWS.S3.Model.UploadPartResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Runtime.Exceptions, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3.Exception;

type
  IUploadPartResponseUnmarshaller = IResponseUnmarshaller;
  
  TUploadPartResponseUnmarshaller = class(TXmlResponseUnmarshaller, IUploadPartResponseUnmarshaller)
  strict private
    class var FInstance: IUploadPartResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IUploadPartResponseUnmarshaller; static;
  end;
  
implementation

{ TUploadPartResponseUnmarshaller }

function TUploadPartResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TUploadPartResponse;
begin
  Response := TUploadPartResponse.Create;
  try
    Result := Response;
    if AContext.ResponseData.IsHeaderPresent('x-amz-server-side-encryption-bucket-key-enabled') then
      Response.BucketKeyEnabled := StrToBool(AContext.ResponseData.GetHeaderValue('x-amz-server-side-encryption-bucket-key-enabled'));
    if AContext.ResponseData.IsHeaderPresent('ETag') then
      Response.ETag := AContext.ResponseData.GetHeaderValue('ETag');
    if AContext.ResponseData.IsHeaderPresent('x-amz-request-charged') then
      Response.RequestCharged := AContext.ResponseData.GetHeaderValue('x-amz-request-charged');
    if AContext.ResponseData.IsHeaderPresent('x-amz-server-side-encryption-customer-algorithm') then
      Response.SSECustomerAlgorithm := AContext.ResponseData.GetHeaderValue('x-amz-server-side-encryption-customer-algorithm');
    if AContext.ResponseData.IsHeaderPresent('x-amz-server-side-encryption-customer-key-MD5') then
      Response.SSECustomerKeyMD5 := AContext.ResponseData.GetHeaderValue('x-amz-server-side-encryption-customer-key-MD5');
    if AContext.ResponseData.IsHeaderPresent('x-amz-server-side-encryption-aws-kms-key-id') then
      Response.SSEKMSKeyId := AContext.ResponseData.GetHeaderValue('x-amz-server-side-encryption-aws-kms-key-id');
    if AContext.ResponseData.IsHeaderPresent('x-amz-server-side-encryption') then
      Response.ServerSideEncryption := AContext.ResponseData.GetHeaderValue('x-amz-server-side-encryption');
  except
    Response.Free;
    raise;
  end;
end;

function TUploadPartResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TUploadPartResponseUnmarshaller.Create;
begin
  FInstance := TUploadPartResponseUnmarshaller.Create;
end;

class function TUploadPartResponseUnmarshaller.Instance: IUploadPartResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
