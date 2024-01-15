unit AWS.S3.Transform.DeleteBucketResponseUnmarshaller;

interface

uses
  AWS.Transform.ResponseUnmarshaller, 
  AWS.S3.Model.DeleteBucketResponse, 
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
  IDeleteBucketResponseUnmarshaller = IResponseUnmarshaller;
  
  TDeleteBucketResponseUnmarshaller = class(TS3ResponseUnmarshaller, IDeleteBucketResponseUnmarshaller)
  strict private
    class var FInstance: IDeleteBucketResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDeleteBucketResponseUnmarshaller; static;
  end;
  
implementation

{ TDeleteBucketResponseUnmarshaller }

function TDeleteBucketResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDeleteBucketResponse;
begin
  Response := TDeleteBucketResponse.Create;
  try
    Result := Response;
  except
    Response.Free;
    raise;
  end;
end;

function TDeleteBucketResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TDeleteBucketResponseUnmarshaller.Create;
begin
  FInstance := TDeleteBucketResponseUnmarshaller.Create;
end;

class function TDeleteBucketResponseUnmarshaller.Instance: IDeleteBucketResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
