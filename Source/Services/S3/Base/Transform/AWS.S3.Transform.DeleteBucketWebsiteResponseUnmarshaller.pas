unit AWS.S3.Transform.DeleteBucketWebsiteResponseUnmarshaller;

interface

uses
  AWS.S3.Model.DeleteBucketWebsiteResponse, 
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
  IDeleteBucketWebsiteResponseUnmarshaller = IResponseUnmarshaller;
  
  TDeleteBucketWebsiteResponseUnmarshaller = class(TXmlResponseUnmarshaller, IDeleteBucketWebsiteResponseUnmarshaller)
  strict private
    class var FInstance: IDeleteBucketWebsiteResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDeleteBucketWebsiteResponseUnmarshaller; static;
  end;
  
implementation

{ TDeleteBucketWebsiteResponseUnmarshaller }

function TDeleteBucketWebsiteResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDeleteBucketWebsiteResponse;
begin
  Response := TDeleteBucketWebsiteResponse.Create;
  try
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TDeleteBucketWebsiteResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TDeleteBucketWebsiteResponseUnmarshaller.Create;
begin
  FInstance := TDeleteBucketWebsiteResponseUnmarshaller.Create;
end;

class function TDeleteBucketWebsiteResponseUnmarshaller.Instance: IDeleteBucketWebsiteResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
