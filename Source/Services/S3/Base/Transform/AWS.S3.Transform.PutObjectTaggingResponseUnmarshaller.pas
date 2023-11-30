unit AWS.S3.Transform.PutObjectTaggingResponseUnmarshaller;

interface

uses
  AWS.S3.Model.PutObjectTaggingResponse, 
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
  IPutObjectTaggingResponseUnmarshaller = IResponseUnmarshaller;
  
  TPutObjectTaggingResponseUnmarshaller = class(TXmlResponseUnmarshaller, IPutObjectTaggingResponseUnmarshaller)
  strict private
    class var FInstance: IPutObjectTaggingResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IPutObjectTaggingResponseUnmarshaller; static;
  end;
  
implementation

{ TPutObjectTaggingResponseUnmarshaller }

function TPutObjectTaggingResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TPutObjectTaggingResponse;
begin
  Response := TPutObjectTaggingResponse.Create;
  try
    Result := Response;
    if AContext.ResponseData.IsHeaderPresent('x-amz-version-id') then
      Response.VersionId := AContext.ResponseData.GetHeaderValue('x-amz-version-id');
  except
    Response.Free;
    raise;
  end;
end;

function TPutObjectTaggingResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TPutObjectTaggingResponseUnmarshaller.Create;
begin
  FInstance := TPutObjectTaggingResponseUnmarshaller.Create;
end;

class function TPutObjectTaggingResponseUnmarshaller.Instance: IPutObjectTaggingResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
