unit AWS.S3.Transform.PutBucketWebsiteResponseUnmarshaller;

interface

uses
  AWS.S3.Model.PutBucketWebsiteResponse, 
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
  IPutBucketWebsiteResponseUnmarshaller = IResponseUnmarshaller;
  
  TPutBucketWebsiteResponseUnmarshaller = class(TXmlResponseUnmarshaller, IPutBucketWebsiteResponseUnmarshaller)
  strict private
    class var FInstance: IPutBucketWebsiteResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IPutBucketWebsiteResponseUnmarshaller; static;
  end;
  
implementation

{ TPutBucketWebsiteResponseUnmarshaller }

function TPutBucketWebsiteResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TPutBucketWebsiteResponse;
begin
  Response := TPutBucketWebsiteResponse.Create;
  try
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TPutBucketWebsiteResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TPutBucketWebsiteResponseUnmarshaller.Create;
begin
  FInstance := TPutBucketWebsiteResponseUnmarshaller.Create;
end;

class function TPutBucketWebsiteResponseUnmarshaller.Instance: IPutBucketWebsiteResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
