unit AWS.S3.Transform.GetBucketPolicyResponseUnmarshaller;

interface

uses
  System.SysUtils, 
  AWS.S3.Model.GetBucketPolicyResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SDKUtils, 
  AWS.Runtime.Exceptions, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3.Exception;

type
  IGetBucketPolicyResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetBucketPolicyResponseUnmarshaller = class(TXmlResponseUnmarshaller, IGetBucketPolicyResponseUnmarshaller)
  strict private
    class var FInstance: IGetBucketPolicyResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetBucketPolicyResponseUnmarshaller; static;
  end;
  
implementation

{ TGetBucketPolicyResponseUnmarshaller }

function TGetBucketPolicyResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetBucketPolicyResponse;
begin
  Response := TGetBucketPolicyResponse.Create;
  try
    Response.Policy := TAWSSDKUtils.StreamToString(AContext.Stream);
    if Response.Policy.StartsWith('<?xml', True) then
      Response.Policy := '';
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TGetBucketPolicyResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TGetBucketPolicyResponseUnmarshaller.Create;
begin
  FInstance := TGetBucketPolicyResponseUnmarshaller.Create;
end;

class function TGetBucketPolicyResponseUnmarshaller.Instance: IGetBucketPolicyResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
