unit AWS.S3.Transform.PutCORSConfigurationResponseUnmarshaller;

interface

uses
  AWS.S3.Model.PutCORSConfigurationResponse, 
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
  IPutCORSConfigurationResponseUnmarshaller = IResponseUnmarshaller;
  
  TPutCORSConfigurationResponseUnmarshaller = class(TXmlResponseUnmarshaller, IPutCORSConfigurationResponseUnmarshaller)
  strict private
    class var FInstance: IPutCORSConfigurationResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IPutCORSConfigurationResponseUnmarshaller; static;
  end;
  
implementation

{ TPutCORSConfigurationResponseUnmarshaller }

function TPutCORSConfigurationResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TPutCORSConfigurationResponse;
begin
  Response := TPutCORSConfigurationResponse.Create;
  try
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TPutCORSConfigurationResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TPutCORSConfigurationResponseUnmarshaller.Create;
begin
  FInstance := TPutCORSConfigurationResponseUnmarshaller.Create;
end;

class function TPutCORSConfigurationResponseUnmarshaller.Instance: IPutCORSConfigurationResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
