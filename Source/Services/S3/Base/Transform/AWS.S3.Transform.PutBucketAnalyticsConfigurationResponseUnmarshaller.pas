unit AWS.S3.Transform.PutBucketAnalyticsConfigurationResponseUnmarshaller;

interface

uses
  AWS.S3.Model.PutBucketAnalyticsConfigurationResponse, 
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
  IPutBucketAnalyticsConfigurationResponseUnmarshaller = IResponseUnmarshaller;
  
  TPutBucketAnalyticsConfigurationResponseUnmarshaller = class(TXmlResponseUnmarshaller, IPutBucketAnalyticsConfigurationResponseUnmarshaller)
  strict private
    class var FInstance: IPutBucketAnalyticsConfigurationResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IPutBucketAnalyticsConfigurationResponseUnmarshaller; static;
  end;
  
implementation

{ TPutBucketAnalyticsConfigurationResponseUnmarshaller }

function TPutBucketAnalyticsConfigurationResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TPutBucketAnalyticsConfigurationResponse;
begin
  Response := TPutBucketAnalyticsConfigurationResponse.Create;
  try
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TPutBucketAnalyticsConfigurationResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TPutBucketAnalyticsConfigurationResponseUnmarshaller.Create;
begin
  FInstance := TPutBucketAnalyticsConfigurationResponseUnmarshaller.Create;
end;

class function TPutBucketAnalyticsConfigurationResponseUnmarshaller.Instance: IPutBucketAnalyticsConfigurationResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
