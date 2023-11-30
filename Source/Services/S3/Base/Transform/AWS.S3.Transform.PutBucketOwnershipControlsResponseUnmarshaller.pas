unit AWS.S3.Transform.PutBucketOwnershipControlsResponseUnmarshaller;

interface

uses
  AWS.S3.Model.PutBucketOwnershipControlsResponse, 
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
  IPutBucketOwnershipControlsResponseUnmarshaller = IResponseUnmarshaller;
  
  TPutBucketOwnershipControlsResponseUnmarshaller = class(TXmlResponseUnmarshaller, IPutBucketOwnershipControlsResponseUnmarshaller)
  strict private
    class var FInstance: IPutBucketOwnershipControlsResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IPutBucketOwnershipControlsResponseUnmarshaller; static;
  end;
  
implementation

{ TPutBucketOwnershipControlsResponseUnmarshaller }

function TPutBucketOwnershipControlsResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TPutBucketOwnershipControlsResponse;
begin
  Response := TPutBucketOwnershipControlsResponse.Create;
  try
    Result := Response;
  except
    Response.Free;
    raise;
  end;
end;

function TPutBucketOwnershipControlsResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TPutBucketOwnershipControlsResponseUnmarshaller.Create;
begin
  FInstance := TPutBucketOwnershipControlsResponseUnmarshaller.Create;
end;

class function TPutBucketOwnershipControlsResponseUnmarshaller.Instance: IPutBucketOwnershipControlsResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
