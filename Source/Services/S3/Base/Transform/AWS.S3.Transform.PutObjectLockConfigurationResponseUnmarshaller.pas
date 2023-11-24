unit AWS.S3.Transform.PutObjectLockConfigurationResponseUnmarshaller;

interface

uses
  AWS.S3.Model.PutObjectLockConfigurationResponse, 
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
  IPutObjectLockConfigurationResponseUnmarshaller = IResponseUnmarshaller;
  
  TPutObjectLockConfigurationResponseUnmarshaller = class(TXmlResponseUnmarshaller, IPutObjectLockConfigurationResponseUnmarshaller)
  strict private
    class var FInstance: IPutObjectLockConfigurationResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IPutObjectLockConfigurationResponseUnmarshaller; static;
  end;
  
implementation

{ TPutObjectLockConfigurationResponseUnmarshaller }

function TPutObjectLockConfigurationResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TPutObjectLockConfigurationResponse;
begin
  Response := TPutObjectLockConfigurationResponse.Create;
  try
    if AContext.ResponseData.IsHeaderPresent('x-amz-request-charged') then
      Response.RequestCharged := AContext.ResponseData.GetHeaderValue('x-amz-request-charged');
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TPutObjectLockConfigurationResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TPutObjectLockConfigurationResponseUnmarshaller.Create;
begin
  FInstance := TPutObjectLockConfigurationResponseUnmarshaller.Create;
end;

class function TPutObjectLockConfigurationResponseUnmarshaller.Instance: IPutObjectLockConfigurationResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
