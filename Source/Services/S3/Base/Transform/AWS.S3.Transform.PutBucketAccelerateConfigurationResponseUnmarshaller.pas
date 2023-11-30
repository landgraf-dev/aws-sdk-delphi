unit AWS.S3.Transform.PutBucketAccelerateConfigurationResponseUnmarshaller;

interface

uses
  AWS.S3.Model.PutBucketAccelerateConfigurationResponse, 
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
  IPutBucketAccelerateConfigurationResponseUnmarshaller = IResponseUnmarshaller;
  
  TPutBucketAccelerateConfigurationResponseUnmarshaller = class(TXmlResponseUnmarshaller, IPutBucketAccelerateConfigurationResponseUnmarshaller)
  strict private
    class var FInstance: IPutBucketAccelerateConfigurationResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IPutBucketAccelerateConfigurationResponseUnmarshaller; static;
  end;
  
implementation

{ TPutBucketAccelerateConfigurationResponseUnmarshaller }

function TPutBucketAccelerateConfigurationResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TPutBucketAccelerateConfigurationResponse;
begin
  Response := TPutBucketAccelerateConfigurationResponse.Create;
  try
    Result := Response;
  except
    Response.Free;
    raise;
  end;
end;

function TPutBucketAccelerateConfigurationResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TPutBucketAccelerateConfigurationResponseUnmarshaller.Create;
begin
  FInstance := TPutBucketAccelerateConfigurationResponseUnmarshaller.Create;
end;

class function TPutBucketAccelerateConfigurationResponseUnmarshaller.Instance: IPutBucketAccelerateConfigurationResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
