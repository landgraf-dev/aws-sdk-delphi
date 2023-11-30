unit AWS.S3.Transform.PutBucketInventoryConfigurationResponseUnmarshaller;

interface

uses
  AWS.S3.Model.PutBucketInventoryConfigurationResponse, 
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
  IPutBucketInventoryConfigurationResponseUnmarshaller = IResponseUnmarshaller;
  
  TPutBucketInventoryConfigurationResponseUnmarshaller = class(TXmlResponseUnmarshaller, IPutBucketInventoryConfigurationResponseUnmarshaller)
  strict private
    class var FInstance: IPutBucketInventoryConfigurationResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IPutBucketInventoryConfigurationResponseUnmarshaller; static;
  end;
  
implementation

{ TPutBucketInventoryConfigurationResponseUnmarshaller }

function TPutBucketInventoryConfigurationResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TPutBucketInventoryConfigurationResponse;
begin
  Response := TPutBucketInventoryConfigurationResponse.Create;
  try
    Result := Response;
  except
    Response.Free;
    raise;
  end;
end;

function TPutBucketInventoryConfigurationResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TPutBucketInventoryConfigurationResponseUnmarshaller.Create;
begin
  FInstance := TPutBucketInventoryConfigurationResponseUnmarshaller.Create;
end;

class function TPutBucketInventoryConfigurationResponseUnmarshaller.Instance: IPutBucketInventoryConfigurationResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
