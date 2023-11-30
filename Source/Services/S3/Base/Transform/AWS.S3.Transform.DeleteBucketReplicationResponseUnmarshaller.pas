unit AWS.S3.Transform.DeleteBucketReplicationResponseUnmarshaller;

interface

uses
  AWS.S3.Model.DeleteBucketReplicationResponse, 
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
  IDeleteBucketReplicationResponseUnmarshaller = IResponseUnmarshaller;
  
  TDeleteBucketReplicationResponseUnmarshaller = class(TXmlResponseUnmarshaller, IDeleteBucketReplicationResponseUnmarshaller)
  strict private
    class var FInstance: IDeleteBucketReplicationResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDeleteBucketReplicationResponseUnmarshaller; static;
  end;
  
implementation

{ TDeleteBucketReplicationResponseUnmarshaller }

function TDeleteBucketReplicationResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDeleteBucketReplicationResponse;
begin
  Response := TDeleteBucketReplicationResponse.Create;
  try
    Result := Response;
  except
    Response.Free;
    raise;
  end;
end;

function TDeleteBucketReplicationResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TDeleteBucketReplicationResponseUnmarshaller.Create;
begin
  FInstance := TDeleteBucketReplicationResponseUnmarshaller.Create;
end;

class function TDeleteBucketReplicationResponseUnmarshaller.Instance: IDeleteBucketReplicationResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
