unit AWS.S3Control.Transform.DeleteStorageLensConfigurationResponseUnmarshaller;

interface

uses
  AWS.S3Control.Model.DeleteStorageLensConfigurationResponse, 
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
  IDeleteStorageLensConfigurationResponseUnmarshaller = IResponseUnmarshaller;
  
  TDeleteStorageLensConfigurationResponseUnmarshaller = class(TXmlResponseUnmarshaller, IDeleteStorageLensConfigurationResponseUnmarshaller)
  strict private
    class var FInstance: IDeleteStorageLensConfigurationResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDeleteStorageLensConfigurationResponseUnmarshaller; static;
  end;
  
implementation

{ TDeleteStorageLensConfigurationResponseUnmarshaller }

function TDeleteStorageLensConfigurationResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDeleteStorageLensConfigurationResponse;
begin
  Response := TDeleteStorageLensConfigurationResponse.Create;
  try
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TDeleteStorageLensConfigurationResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TDeleteStorageLensConfigurationResponseUnmarshaller.Create;
begin
  FInstance := TDeleteStorageLensConfigurationResponseUnmarshaller.Create;
end;

class function TDeleteStorageLensConfigurationResponseUnmarshaller.Instance: IDeleteStorageLensConfigurationResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
