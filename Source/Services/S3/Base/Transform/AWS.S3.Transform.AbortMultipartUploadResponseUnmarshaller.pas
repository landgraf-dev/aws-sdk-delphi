unit AWS.S3.Transform.AbortMultipartUploadResponseUnmarshaller;

interface

uses
  AWS.Transform.ResponseUnmarshaller, 
  AWS.S3.Model.AbortMultipartUploadResponse, 
  AWS.S3.Transform.S3ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3.Transform.NoSuchUploadExceptionUnmarshaller, 
  AWS.S3.Exception;

type
  IAbortMultipartUploadResponseUnmarshaller = IResponseUnmarshaller;

  TAbortMultipartUploadResponseUnmarshaller = class(TS3ResponseUnmarshaller, IAbortMultipartUploadResponseUnmarshaller)
  strict private
    class var FInstance: IAbortMultipartUploadResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IAbortMultipartUploadResponseUnmarshaller; static;
  end;
  
implementation

{ TAbortMultipartUploadResponseUnmarshaller }

function TAbortMultipartUploadResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TAbortMultipartUploadResponse;
begin
  Response := TAbortMultipartUploadResponse.Create;
  try
    Result := Response;
    if AContext.ResponseData.IsHeaderPresent('x-amz-request-charged') then
      Response.RequestCharged := AContext.ResponseData.GetHeaderValue('x-amz-request-charged');
  except
    Response.Free;
    raise;
  end;
end;

function TAbortMultipartUploadResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'NoSuchUploadException' then
          Exit(TNoSuchUploadExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TAbortMultipartUploadResponseUnmarshaller.Create;
begin
  FInstance := TAbortMultipartUploadResponseUnmarshaller.Create;
end;

class function TAbortMultipartUploadResponseUnmarshaller.Instance: IAbortMultipartUploadResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
