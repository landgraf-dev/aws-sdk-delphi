unit AWS.S3Control.Transform.DeleteBucketLifecycleConfigurationResponseUnmarshaller;

interface

uses
  AWS.S3Control.Model.DeleteBucketLifecycleConfigurationResponse, 
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
  IDeleteBucketLifecycleConfigurationResponseUnmarshaller = IResponseUnmarshaller;
  
  TDeleteBucketLifecycleConfigurationResponseUnmarshaller = class(TXmlResponseUnmarshaller, IDeleteBucketLifecycleConfigurationResponseUnmarshaller)
  strict private
    class var FInstance: IDeleteBucketLifecycleConfigurationResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDeleteBucketLifecycleConfigurationResponseUnmarshaller; static;
  end;
  
implementation

{ TDeleteBucketLifecycleConfigurationResponseUnmarshaller }

function TDeleteBucketLifecycleConfigurationResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDeleteBucketLifecycleConfigurationResponse;
begin
  Response := TDeleteBucketLifecycleConfigurationResponse.Create;
  try
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TDeleteBucketLifecycleConfigurationResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TDeleteBucketLifecycleConfigurationResponseUnmarshaller.Create;
begin
  FInstance := TDeleteBucketLifecycleConfigurationResponseUnmarshaller.Create;
end;

class function TDeleteBucketLifecycleConfigurationResponseUnmarshaller.Instance: IDeleteBucketLifecycleConfigurationResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
