unit AWS.S3.Transform.PutBucketEncryptionResponseUnmarshaller;

interface

uses
  AWS.S3.Model.PutBucketEncryptionResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3.Exception;

type
  IPutBucketEncryptionResponseUnmarshaller = IResponseUnmarshaller;
  
  TPutBucketEncryptionResponseUnmarshaller = class(TXmlResponseUnmarshaller, IPutBucketEncryptionResponseUnmarshaller)
  strict private
    class var FInstance: IPutBucketEncryptionResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IPutBucketEncryptionResponseUnmarshaller; static;
  end;
  
implementation

{ TPutBucketEncryptionResponseUnmarshaller }

function TPutBucketEncryptionResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TPutBucketEncryptionResponse;
begin
  Response := TPutBucketEncryptionResponse.Create;
  try
    Result := Response;
  except
    Response.Free;
    raise;
  end;
end;

function TPutBucketEncryptionResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TPutBucketEncryptionResponseUnmarshaller.Create;
begin
  FInstance := TPutBucketEncryptionResponseUnmarshaller.Create;
end;

class function TPutBucketEncryptionResponseUnmarshaller.Instance: IPutBucketEncryptionResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
