unit AWS.S3.Transform.PutLifecycleConfigurationResponseUnmarshaller;

interface

uses
  AWS.S3.Model.PutLifecycleConfigurationResponse, 
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
  IPutLifecycleConfigurationResponseUnmarshaller = IResponseUnmarshaller;
  
  TPutLifecycleConfigurationResponseUnmarshaller = class(TXmlResponseUnmarshaller, IPutLifecycleConfigurationResponseUnmarshaller)
  strict private
    class var FInstance: IPutLifecycleConfigurationResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IPutLifecycleConfigurationResponseUnmarshaller; static;
  end;
  
implementation

{ TPutLifecycleConfigurationResponseUnmarshaller }

function TPutLifecycleConfigurationResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TPutLifecycleConfigurationResponse;
begin
  Response := TPutLifecycleConfigurationResponse.Create;
  try
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TPutLifecycleConfigurationResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TPutLifecycleConfigurationResponseUnmarshaller.Create;
begin
  FInstance := TPutLifecycleConfigurationResponseUnmarshaller.Create;
end;

class function TPutLifecycleConfigurationResponseUnmarshaller.Instance: IPutLifecycleConfigurationResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
