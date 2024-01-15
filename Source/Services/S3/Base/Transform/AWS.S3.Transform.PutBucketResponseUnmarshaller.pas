unit AWS.S3.Transform.PutBucketResponseUnmarshaller;

interface

uses
  AWS.Transform.ResponseUnmarshaller, 
  AWS.S3.Model.PutBucketResponse, 
  AWS.S3.Transform.S3ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3.Transform.BucketAlreadyExistsExceptionUnmarshaller, 
  AWS.S3.Transform.BucketAlreadyOwnedByYouExceptionUnmarshaller, 
  AWS.S3.Exception;

type
  IPutBucketResponseUnmarshaller = IResponseUnmarshaller;
  
  TPutBucketResponseUnmarshaller = class(TS3ResponseUnmarshaller, IPutBucketResponseUnmarshaller)
  strict private
    class var FInstance: IPutBucketResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IPutBucketResponseUnmarshaller; static;
  end;
  
implementation

{ TPutBucketResponseUnmarshaller }

function TPutBucketResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TPutBucketResponse;
begin
  Response := TPutBucketResponse.Create;
  try
    Result := Response;
    if AContext.ResponseData.IsHeaderPresent('Location') then
      Response.Location := AContext.ResponseData.GetHeaderValue('Location');
  except
    Response.Free;
    raise;
  end;
end;

function TPutBucketResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'BucketAlreadyExistsException' then
          Exit(TBucketAlreadyExistsExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'BucketAlreadyOwnedByYouException' then
          Exit(TBucketAlreadyOwnedByYouExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TPutBucketResponseUnmarshaller.Create;
begin
  FInstance := TPutBucketResponseUnmarshaller.Create;
end;

class function TPutBucketResponseUnmarshaller.Instance: IPutBucketResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
