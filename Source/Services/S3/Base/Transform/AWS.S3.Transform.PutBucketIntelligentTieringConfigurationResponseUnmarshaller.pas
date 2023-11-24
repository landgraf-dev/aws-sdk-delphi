unit AWS.S3.Transform.PutBucketIntelligentTieringConfigurationResponseUnmarshaller;

interface

uses
  AWS.S3.Model.PutBucketIntelligentTieringConfigurationResponse, 
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
  IPutBucketIntelligentTieringConfigurationResponseUnmarshaller = IResponseUnmarshaller;
  
  TPutBucketIntelligentTieringConfigurationResponseUnmarshaller = class(TXmlResponseUnmarshaller, IPutBucketIntelligentTieringConfigurationResponseUnmarshaller)
  strict private
    class var FInstance: IPutBucketIntelligentTieringConfigurationResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IPutBucketIntelligentTieringConfigurationResponseUnmarshaller; static;
  end;
  
implementation

{ TPutBucketIntelligentTieringConfigurationResponseUnmarshaller }

function TPutBucketIntelligentTieringConfigurationResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TPutBucketIntelligentTieringConfigurationResponse;
begin
  Response := TPutBucketIntelligentTieringConfigurationResponse.Create;
  try
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TPutBucketIntelligentTieringConfigurationResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TPutBucketIntelligentTieringConfigurationResponseUnmarshaller.Create;
begin
  FInstance := TPutBucketIntelligentTieringConfigurationResponseUnmarshaller.Create;
end;

class function TPutBucketIntelligentTieringConfigurationResponseUnmarshaller.Instance: IPutBucketIntelligentTieringConfigurationResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
