unit AWS.S3.Transform.DeleteLifecycleConfigurationResponseUnmarshaller;

interface

uses
  AWS.S3.Model.DeleteLifecycleConfigurationResponse, 
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
  IDeleteLifecycleConfigurationResponseUnmarshaller = IResponseUnmarshaller;
  
  TDeleteLifecycleConfigurationResponseUnmarshaller = class(TXmlResponseUnmarshaller, IDeleteLifecycleConfigurationResponseUnmarshaller)
  strict private
    class var FInstance: IDeleteLifecycleConfigurationResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDeleteLifecycleConfigurationResponseUnmarshaller; static;
  end;
  
implementation

{ TDeleteLifecycleConfigurationResponseUnmarshaller }

function TDeleteLifecycleConfigurationResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDeleteLifecycleConfigurationResponse;
begin
  Response := TDeleteLifecycleConfigurationResponse.Create;
  try
    Result := Response;
  except
    Response.Free;
    raise;
  end;
end;

function TDeleteLifecycleConfigurationResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TDeleteLifecycleConfigurationResponseUnmarshaller.Create;
begin
  FInstance := TDeleteLifecycleConfigurationResponseUnmarshaller.Create;
end;

class function TDeleteLifecycleConfigurationResponseUnmarshaller.Instance: IDeleteLifecycleConfigurationResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
