unit AWS.S3Control.Transform.PutStorageLensConfigurationResponseUnmarshaller;

interface

uses
  AWS.S3Control.Model.PutStorageLensConfigurationResponse, 
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
  IPutStorageLensConfigurationResponseUnmarshaller = IResponseUnmarshaller;
  
  TPutStorageLensConfigurationResponseUnmarshaller = class(TXmlResponseUnmarshaller, IPutStorageLensConfigurationResponseUnmarshaller)
  strict private
    class var FInstance: IPutStorageLensConfigurationResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IPutStorageLensConfigurationResponseUnmarshaller; static;
  end;
  
implementation

{ TPutStorageLensConfigurationResponseUnmarshaller }

function TPutStorageLensConfigurationResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TPutStorageLensConfigurationResponse;
begin
  Response := TPutStorageLensConfigurationResponse.Create;
  try
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TPutStorageLensConfigurationResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TPutStorageLensConfigurationResponseUnmarshaller.Create;
begin
  FInstance := TPutStorageLensConfigurationResponseUnmarshaller.Create;
end;

class function TPutStorageLensConfigurationResponseUnmarshaller.Instance: IPutStorageLensConfigurationResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
