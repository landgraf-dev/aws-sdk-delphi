unit AWS.S3.Transform.DeleteBucketAnalyticsConfigurationResponseUnmarshaller;

interface

uses
  AWS.S3.Model.DeleteBucketAnalyticsConfigurationResponse, 
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
  IDeleteBucketAnalyticsConfigurationResponseUnmarshaller = IResponseUnmarshaller;
  
  TDeleteBucketAnalyticsConfigurationResponseUnmarshaller = class(TXmlResponseUnmarshaller, IDeleteBucketAnalyticsConfigurationResponseUnmarshaller)
  strict private
    class var FInstance: IDeleteBucketAnalyticsConfigurationResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDeleteBucketAnalyticsConfigurationResponseUnmarshaller; static;
  end;
  
implementation

{ TDeleteBucketAnalyticsConfigurationResponseUnmarshaller }

function TDeleteBucketAnalyticsConfigurationResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDeleteBucketAnalyticsConfigurationResponse;
begin
  Response := TDeleteBucketAnalyticsConfigurationResponse.Create;
  try
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TDeleteBucketAnalyticsConfigurationResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TDeleteBucketAnalyticsConfigurationResponseUnmarshaller.Create;
begin
  FInstance := TDeleteBucketAnalyticsConfigurationResponseUnmarshaller.Create;
end;

class function TDeleteBucketAnalyticsConfigurationResponseUnmarshaller.Instance: IDeleteBucketAnalyticsConfigurationResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
