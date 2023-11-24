unit AWS.S3.Transform.PutBucketReplicationResponseUnmarshaller;

interface

uses
  AWS.S3.Model.PutBucketReplicationResponse, 
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
  IPutBucketReplicationResponseUnmarshaller = IResponseUnmarshaller;
  
  TPutBucketReplicationResponseUnmarshaller = class(TXmlResponseUnmarshaller, IPutBucketReplicationResponseUnmarshaller)
  strict private
    class var FInstance: IPutBucketReplicationResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IPutBucketReplicationResponseUnmarshaller; static;
  end;
  
implementation

{ TPutBucketReplicationResponseUnmarshaller }

function TPutBucketReplicationResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TPutBucketReplicationResponse;
begin
  Response := TPutBucketReplicationResponse.Create;
  try
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TPutBucketReplicationResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TPutBucketReplicationResponseUnmarshaller.Create;
begin
  FInstance := TPutBucketReplicationResponseUnmarshaller.Create;
end;

class function TPutBucketReplicationResponseUnmarshaller.Instance: IPutBucketReplicationResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
