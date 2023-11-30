unit AWS.S3.Transform.DeleteBucketInventoryConfigurationResponseUnmarshaller;

interface

uses
  AWS.S3.Model.DeleteBucketInventoryConfigurationResponse, 
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
  IDeleteBucketInventoryConfigurationResponseUnmarshaller = IResponseUnmarshaller;
  
  TDeleteBucketInventoryConfigurationResponseUnmarshaller = class(TXmlResponseUnmarshaller, IDeleteBucketInventoryConfigurationResponseUnmarshaller)
  strict private
    class var FInstance: IDeleteBucketInventoryConfigurationResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDeleteBucketInventoryConfigurationResponseUnmarshaller; static;
  end;
  
implementation

{ TDeleteBucketInventoryConfigurationResponseUnmarshaller }

function TDeleteBucketInventoryConfigurationResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDeleteBucketInventoryConfigurationResponse;
begin
  Response := TDeleteBucketInventoryConfigurationResponse.Create;
  try
    Result := Response;
  except
    Response.Free;
    raise;
  end;
end;

function TDeleteBucketInventoryConfigurationResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TDeleteBucketInventoryConfigurationResponseUnmarshaller.Create;
begin
  FInstance := TDeleteBucketInventoryConfigurationResponseUnmarshaller.Create;
end;

class function TDeleteBucketInventoryConfigurationResponseUnmarshaller.Instance: IDeleteBucketInventoryConfigurationResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
