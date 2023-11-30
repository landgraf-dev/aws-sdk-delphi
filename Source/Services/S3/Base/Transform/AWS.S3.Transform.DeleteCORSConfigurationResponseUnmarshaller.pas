unit AWS.S3.Transform.DeleteCORSConfigurationResponseUnmarshaller;

interface

uses
  AWS.S3.Model.DeleteCORSConfigurationResponse, 
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
  IDeleteCORSConfigurationResponseUnmarshaller = IResponseUnmarshaller;
  
  TDeleteCORSConfigurationResponseUnmarshaller = class(TXmlResponseUnmarshaller, IDeleteCORSConfigurationResponseUnmarshaller)
  strict private
    class var FInstance: IDeleteCORSConfigurationResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDeleteCORSConfigurationResponseUnmarshaller; static;
  end;
  
implementation

{ TDeleteCORSConfigurationResponseUnmarshaller }

function TDeleteCORSConfigurationResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDeleteCORSConfigurationResponse;
begin
  Response := TDeleteCORSConfigurationResponse.Create;
  try
    Result := Response;
  except
    Response.Free;
    raise;
  end;
end;

function TDeleteCORSConfigurationResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TDeleteCORSConfigurationResponseUnmarshaller.Create;
begin
  FInstance := TDeleteCORSConfigurationResponseUnmarshaller.Create;
end;

class function TDeleteCORSConfigurationResponseUnmarshaller.Instance: IDeleteCORSConfigurationResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
