unit AWS.S3.Transform.PutBucketVersioningResponseUnmarshaller;

interface

uses
  AWS.Transform.ResponseUnmarshaller, 
  AWS.S3.Model.PutBucketVersioningResponse, 
  AWS.S3.Transform.S3ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3.Exception;

type
  IPutBucketVersioningResponseUnmarshaller = IResponseUnmarshaller;
  
  TPutBucketVersioningResponseUnmarshaller = class(TS3ResponseUnmarshaller, IPutBucketVersioningResponseUnmarshaller)
  strict private
    class var FInstance: IPutBucketVersioningResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IPutBucketVersioningResponseUnmarshaller; static;
  end;
  
implementation

{ TPutBucketVersioningResponseUnmarshaller }

function TPutBucketVersioningResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TPutBucketVersioningResponse;
begin
  Response := TPutBucketVersioningResponse.Create;
  try
    Result := Response;
  except
    Response.Free;
    raise;
  end;
end;

function TPutBucketVersioningResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TPutBucketVersioningResponseUnmarshaller.Create;
begin
  FInstance := TPutBucketVersioningResponseUnmarshaller.Create;
end;

class function TPutBucketVersioningResponseUnmarshaller.Instance: IPutBucketVersioningResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
