unit AWS.S3.Transform.PutBucketMetricsConfigurationResponseUnmarshaller;

interface

uses
  AWS.S3.Model.PutBucketMetricsConfigurationResponse, 
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
  IPutBucketMetricsConfigurationResponseUnmarshaller = IResponseUnmarshaller;
  
  TPutBucketMetricsConfigurationResponseUnmarshaller = class(TXmlResponseUnmarshaller, IPutBucketMetricsConfigurationResponseUnmarshaller)
  strict private
    class var FInstance: IPutBucketMetricsConfigurationResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IPutBucketMetricsConfigurationResponseUnmarshaller; static;
  end;
  
implementation

{ TPutBucketMetricsConfigurationResponseUnmarshaller }

function TPutBucketMetricsConfigurationResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TPutBucketMetricsConfigurationResponse;
begin
  Response := TPutBucketMetricsConfigurationResponse.Create;
  try
    Result := Response;
  except
    Response.Free;
    raise;
  end;
end;

function TPutBucketMetricsConfigurationResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TPutBucketMetricsConfigurationResponseUnmarshaller.Create;
begin
  FInstance := TPutBucketMetricsConfigurationResponseUnmarshaller.Create;
end;

class function TPutBucketMetricsConfigurationResponseUnmarshaller.Instance: IPutBucketMetricsConfigurationResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
