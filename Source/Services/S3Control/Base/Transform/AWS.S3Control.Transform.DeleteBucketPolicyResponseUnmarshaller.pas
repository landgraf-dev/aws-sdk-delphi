unit AWS.S3Control.Transform.DeleteBucketPolicyResponseUnmarshaller;

interface

uses
  AWS.S3Control.Model.DeleteBucketPolicyResponse, 
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
  IDeleteBucketPolicyResponseUnmarshaller = IResponseUnmarshaller;
  
  TDeleteBucketPolicyResponseUnmarshaller = class(TXmlResponseUnmarshaller, IDeleteBucketPolicyResponseUnmarshaller)
  strict private
    class var FInstance: IDeleteBucketPolicyResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDeleteBucketPolicyResponseUnmarshaller; static;
  end;
  
implementation

{ TDeleteBucketPolicyResponseUnmarshaller }

function TDeleteBucketPolicyResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDeleteBucketPolicyResponse;
begin
  Response := TDeleteBucketPolicyResponse.Create;
  try
    Result := Response;
  except
    Response.Free;
    raise;
  end;
end;

function TDeleteBucketPolicyResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TDeleteBucketPolicyResponseUnmarshaller.Create;
begin
  FInstance := TDeleteBucketPolicyResponseUnmarshaller.Create;
end;

class function TDeleteBucketPolicyResponseUnmarshaller.Instance: IDeleteBucketPolicyResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
