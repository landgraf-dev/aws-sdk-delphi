unit AWS.S3.Transform.DeleteBucketMetricsConfigurationResponseUnmarshaller;

interface

uses
  AWS.S3.Model.DeleteBucketMetricsConfigurationResponse, 
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
  IDeleteBucketMetricsConfigurationResponseUnmarshaller = IResponseUnmarshaller;
  
  TDeleteBucketMetricsConfigurationResponseUnmarshaller = class(TXmlResponseUnmarshaller, IDeleteBucketMetricsConfigurationResponseUnmarshaller)
  strict private
    class var FInstance: IDeleteBucketMetricsConfigurationResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDeleteBucketMetricsConfigurationResponseUnmarshaller; static;
  end;
  
implementation

{ TDeleteBucketMetricsConfigurationResponseUnmarshaller }

function TDeleteBucketMetricsConfigurationResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDeleteBucketMetricsConfigurationResponse;
begin
  Response := TDeleteBucketMetricsConfigurationResponse.Create;
  try
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TDeleteBucketMetricsConfigurationResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TDeleteBucketMetricsConfigurationResponseUnmarshaller.Create;
begin
  FInstance := TDeleteBucketMetricsConfigurationResponseUnmarshaller.Create;
end;

class function TDeleteBucketMetricsConfigurationResponseUnmarshaller.Instance: IDeleteBucketMetricsConfigurationResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
