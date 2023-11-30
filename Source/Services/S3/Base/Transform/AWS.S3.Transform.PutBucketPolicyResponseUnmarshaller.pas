unit AWS.S3.Transform.PutBucketPolicyResponseUnmarshaller;

interface

uses
  AWS.S3.Model.PutBucketPolicyResponse, 
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
  IPutBucketPolicyResponseUnmarshaller = IResponseUnmarshaller;
  
  TPutBucketPolicyResponseUnmarshaller = class(TXmlResponseUnmarshaller, IPutBucketPolicyResponseUnmarshaller)
  strict private
    class var FInstance: IPutBucketPolicyResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IPutBucketPolicyResponseUnmarshaller; static;
  end;
  
implementation

{ TPutBucketPolicyResponseUnmarshaller }

function TPutBucketPolicyResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TPutBucketPolicyResponse;
begin
  Response := TPutBucketPolicyResponse.Create;
  try
    Result := Response;
  except
    Response.Free;
    raise;
  end;
end;

function TPutBucketPolicyResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TPutBucketPolicyResponseUnmarshaller.Create;
begin
  FInstance := TPutBucketPolicyResponseUnmarshaller.Create;
end;

class function TPutBucketPolicyResponseUnmarshaller.Instance: IPutBucketPolicyResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
