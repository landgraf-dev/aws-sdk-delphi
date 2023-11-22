unit AWS.S3Control.Transform.PutBucketLifecycleConfigurationResponseUnmarshaller;

interface

uses
  AWS.S3Control.Model.PutBucketLifecycleConfigurationResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3Control.Exception;

type
  IPutBucketLifecycleConfigurationResponseUnmarshaller = IResponseUnmarshaller;
  
  TPutBucketLifecycleConfigurationResponseUnmarshaller = class(TXmlResponseUnmarshaller, IPutBucketLifecycleConfigurationResponseUnmarshaller)
  strict private
    class var FInstance: IPutBucketLifecycleConfigurationResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IPutBucketLifecycleConfigurationResponseUnmarshaller; static;
  end;
  
implementation

{ TPutBucketLifecycleConfigurationResponseUnmarshaller }

function TPutBucketLifecycleConfigurationResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TPutBucketLifecycleConfigurationResponse;
begin
  Response := TPutBucketLifecycleConfigurationResponse.Create;
  try
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TPutBucketLifecycleConfigurationResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
    Exit(EAmazonS3ControlException.Create(ErrorResponse.Message, AInnerException, ErrorResponse.ErrorType, ErrorResponse.Code, ErrorResponse.RequestId, AStatusCode));
  finally
    ErrorResponse.Free;
  end;
end;

class constructor TPutBucketLifecycleConfigurationResponseUnmarshaller.Create;
begin
  FInstance := TPutBucketLifecycleConfigurationResponseUnmarshaller.Create;
end;

class function TPutBucketLifecycleConfigurationResponseUnmarshaller.Instance: IPutBucketLifecycleConfigurationResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
