unit AWS.S3Control.Transform.DeleteBucketTaggingResponseUnmarshaller;

interface

uses
  AWS.S3Control.Model.DeleteBucketTaggingResponse, 
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
  IDeleteBucketTaggingResponseUnmarshaller = IResponseUnmarshaller;
  
  TDeleteBucketTaggingResponseUnmarshaller = class(TXmlResponseUnmarshaller, IDeleteBucketTaggingResponseUnmarshaller)
  strict private
    class var FInstance: IDeleteBucketTaggingResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDeleteBucketTaggingResponseUnmarshaller; static;
  end;
  
implementation

{ TDeleteBucketTaggingResponseUnmarshaller }

function TDeleteBucketTaggingResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDeleteBucketTaggingResponse;
begin
  Response := TDeleteBucketTaggingResponse.Create;
  try
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TDeleteBucketTaggingResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TDeleteBucketTaggingResponseUnmarshaller.Create;
begin
  FInstance := TDeleteBucketTaggingResponseUnmarshaller.Create;
end;

class function TDeleteBucketTaggingResponseUnmarshaller.Instance: IDeleteBucketTaggingResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
