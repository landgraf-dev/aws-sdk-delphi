unit AWS.S3.Transform.PutObjectRetentionResponseUnmarshaller;

interface

uses
  AWS.S3.Model.PutObjectRetentionResponse, 
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
  IPutObjectRetentionResponseUnmarshaller = IResponseUnmarshaller;
  
  TPutObjectRetentionResponseUnmarshaller = class(TXmlResponseUnmarshaller, IPutObjectRetentionResponseUnmarshaller)
  strict private
    class var FInstance: IPutObjectRetentionResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IPutObjectRetentionResponseUnmarshaller; static;
  end;
  
implementation

{ TPutObjectRetentionResponseUnmarshaller }

function TPutObjectRetentionResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TPutObjectRetentionResponse;
begin
  Response := TPutObjectRetentionResponse.Create;
  try
    if AContext.ResponseData.IsHeaderPresent('x-amz-request-charged') then
      Response.RequestCharged := AContext.ResponseData.GetHeaderValue('x-amz-request-charged');
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TPutObjectRetentionResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TPutObjectRetentionResponseUnmarshaller.Create;
begin
  FInstance := TPutObjectRetentionResponseUnmarshaller.Create;
end;

class function TPutObjectRetentionResponseUnmarshaller.Instance: IPutObjectRetentionResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
