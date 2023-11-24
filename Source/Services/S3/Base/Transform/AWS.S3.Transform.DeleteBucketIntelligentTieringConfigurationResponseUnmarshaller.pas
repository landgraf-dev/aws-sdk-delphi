unit AWS.S3.Transform.DeleteBucketIntelligentTieringConfigurationResponseUnmarshaller;

interface

uses
  AWS.S3.Model.DeleteBucketIntelligentTieringConfigurationResponse, 
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
  IDeleteBucketIntelligentTieringConfigurationResponseUnmarshaller = IResponseUnmarshaller;
  
  TDeleteBucketIntelligentTieringConfigurationResponseUnmarshaller = class(TXmlResponseUnmarshaller, IDeleteBucketIntelligentTieringConfigurationResponseUnmarshaller)
  strict private
    class var FInstance: IDeleteBucketIntelligentTieringConfigurationResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDeleteBucketIntelligentTieringConfigurationResponseUnmarshaller; static;
  end;
  
implementation

{ TDeleteBucketIntelligentTieringConfigurationResponseUnmarshaller }

function TDeleteBucketIntelligentTieringConfigurationResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDeleteBucketIntelligentTieringConfigurationResponse;
begin
  Response := TDeleteBucketIntelligentTieringConfigurationResponse.Create;
  try
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TDeleteBucketIntelligentTieringConfigurationResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TDeleteBucketIntelligentTieringConfigurationResponseUnmarshaller.Create;
begin
  FInstance := TDeleteBucketIntelligentTieringConfigurationResponseUnmarshaller.Create;
end;

class function TDeleteBucketIntelligentTieringConfigurationResponseUnmarshaller.Instance: IDeleteBucketIntelligentTieringConfigurationResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
