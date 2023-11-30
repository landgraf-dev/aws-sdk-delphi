unit AWS.S3.Transform.DeleteBucketEncryptionResponseUnmarshaller;

interface

uses
  AWS.S3.Model.DeleteBucketEncryptionResponse, 
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
  IDeleteBucketEncryptionResponseUnmarshaller = IResponseUnmarshaller;
  
  TDeleteBucketEncryptionResponseUnmarshaller = class(TXmlResponseUnmarshaller, IDeleteBucketEncryptionResponseUnmarshaller)
  strict private
    class var FInstance: IDeleteBucketEncryptionResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDeleteBucketEncryptionResponseUnmarshaller; static;
  end;
  
implementation

{ TDeleteBucketEncryptionResponseUnmarshaller }

function TDeleteBucketEncryptionResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDeleteBucketEncryptionResponse;
begin
  Response := TDeleteBucketEncryptionResponse.Create;
  try
    Result := Response;
  except
    Response.Free;
    raise;
  end;
end;

function TDeleteBucketEncryptionResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TDeleteBucketEncryptionResponseUnmarshaller.Create;
begin
  FInstance := TDeleteBucketEncryptionResponseUnmarshaller.Create;
end;

class function TDeleteBucketEncryptionResponseUnmarshaller.Instance: IDeleteBucketEncryptionResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
