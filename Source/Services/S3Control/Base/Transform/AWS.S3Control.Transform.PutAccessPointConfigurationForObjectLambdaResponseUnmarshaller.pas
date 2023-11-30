unit AWS.S3Control.Transform.PutAccessPointConfigurationForObjectLambdaResponseUnmarshaller;

interface

uses
  AWS.S3Control.Model.PutAccessPointConfigurationForObjectLambdaResponse, 
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
  IPutAccessPointConfigurationForObjectLambdaResponseUnmarshaller = IResponseUnmarshaller;
  
  TPutAccessPointConfigurationForObjectLambdaResponseUnmarshaller = class(TXmlResponseUnmarshaller, IPutAccessPointConfigurationForObjectLambdaResponseUnmarshaller)
  strict private
    class var FInstance: IPutAccessPointConfigurationForObjectLambdaResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IPutAccessPointConfigurationForObjectLambdaResponseUnmarshaller; static;
  end;
  
implementation

{ TPutAccessPointConfigurationForObjectLambdaResponseUnmarshaller }

function TPutAccessPointConfigurationForObjectLambdaResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TPutAccessPointConfigurationForObjectLambdaResponse;
begin
  Response := TPutAccessPointConfigurationForObjectLambdaResponse.Create;
  try
    Result := Response;
  except
    Response.Free;
    raise;
  end;
end;

function TPutAccessPointConfigurationForObjectLambdaResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TPutAccessPointConfigurationForObjectLambdaResponseUnmarshaller.Create;
begin
  FInstance := TPutAccessPointConfigurationForObjectLambdaResponseUnmarshaller.Create;
end;

class function TPutAccessPointConfigurationForObjectLambdaResponseUnmarshaller.Instance: IPutAccessPointConfigurationForObjectLambdaResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
