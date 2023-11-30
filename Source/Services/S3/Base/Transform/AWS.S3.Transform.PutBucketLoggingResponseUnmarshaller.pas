unit AWS.S3.Transform.PutBucketLoggingResponseUnmarshaller;

interface

uses
  AWS.S3.Model.PutBucketLoggingResponse, 
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
  IPutBucketLoggingResponseUnmarshaller = IResponseUnmarshaller;
  
  TPutBucketLoggingResponseUnmarshaller = class(TXmlResponseUnmarshaller, IPutBucketLoggingResponseUnmarshaller)
  strict private
    class var FInstance: IPutBucketLoggingResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IPutBucketLoggingResponseUnmarshaller; static;
  end;
  
implementation

{ TPutBucketLoggingResponseUnmarshaller }

function TPutBucketLoggingResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TPutBucketLoggingResponse;
begin
  Response := TPutBucketLoggingResponse.Create;
  try
    Result := Response;
  except
    Response.Free;
    raise;
  end;
end;

function TPutBucketLoggingResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TPutBucketLoggingResponseUnmarshaller.Create;
begin
  FInstance := TPutBucketLoggingResponseUnmarshaller.Create;
end;

class function TPutBucketLoggingResponseUnmarshaller.Instance: IPutBucketLoggingResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
