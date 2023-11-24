unit AWS.S3.Transform.PutBucketRequestPaymentResponseUnmarshaller;

interface

uses
  AWS.S3.Model.PutBucketRequestPaymentResponse, 
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
  IPutBucketRequestPaymentResponseUnmarshaller = IResponseUnmarshaller;
  
  TPutBucketRequestPaymentResponseUnmarshaller = class(TXmlResponseUnmarshaller, IPutBucketRequestPaymentResponseUnmarshaller)
  strict private
    class var FInstance: IPutBucketRequestPaymentResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IPutBucketRequestPaymentResponseUnmarshaller; static;
  end;
  
implementation

{ TPutBucketRequestPaymentResponseUnmarshaller }

function TPutBucketRequestPaymentResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TPutBucketRequestPaymentResponse;
begin
  Response := TPutBucketRequestPaymentResponse.Create;
  try
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TPutBucketRequestPaymentResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TPutBucketRequestPaymentResponseUnmarshaller.Create;
begin
  FInstance := TPutBucketRequestPaymentResponseUnmarshaller.Create;
end;

class function TPutBucketRequestPaymentResponseUnmarshaller.Instance: IPutBucketRequestPaymentResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
