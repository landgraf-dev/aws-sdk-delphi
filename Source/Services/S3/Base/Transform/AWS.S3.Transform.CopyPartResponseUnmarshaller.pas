unit AWS.S3.Transform.CopyPartResponseUnmarshaller;

interface

uses
  System.SysUtils, 
  AWS.S3.Model.CopyPartResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.S3.Transform.CopyPartResultUnmarshaller, 
  AWS.Runtime.Exceptions, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3.Exception;

type
  ICopyPartResponseUnmarshaller = IResponseUnmarshaller;
  
  TCopyPartResponseUnmarshaller = class(TXmlResponseUnmarshaller, ICopyPartResponseUnmarshaller)
  strict private
    class var FInstance: ICopyPartResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TCopyPartResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: ICopyPartResponseUnmarshaller; static;
  end;
  
implementation

{ TCopyPartResponseUnmarshaller }

function TCopyPartResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TCopyPartResponse;
begin
  Response := TCopyPartResponse.Create;
  try
    Result := Response;
    UnmarshallResult(AContext, Response);
    if AContext.ResponseData.IsHeaderPresent('x-amz-server-side-encryption-bucket-key-enabled') then
      Response.BucketKeyEnabled := StrToBool(AContext.ResponseData.GetHeaderValue('x-amz-server-side-encryption-bucket-key-enabled'));
    if AContext.ResponseData.IsHeaderPresent('x-amz-copy-source-version-id') then
      Response.CopySourceVersionId := AContext.ResponseData.GetHeaderValue('x-amz-copy-source-version-id');
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

class procedure TCopyPartResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TCopyPartResponse);
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
begin
  OriginalDepth := AContext.CurrentDepth;
  TargetDepth := OriginalDepth + 1;
  while AContext.Read do
    if AContext.IsStartElement or AContext.IsAttribute then
      if AContext.TestExpression('CopyPartResult', TargetDepth) then
      begin
        var Unmarshaller := TCopyPartResultUnmarshaller.Instance;
        AResponse.CopyPartResult := Unmarshaller.Unmarshall(AContext);
        Continue;
      end
    else
      if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
        Exit;
end;

function TCopyPartResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TCopyPartResponseUnmarshaller.Create;
begin
  FInstance := TCopyPartResponseUnmarshaller.Create;
end;

class function TCopyPartResponseUnmarshaller.Instance: ICopyPartResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
