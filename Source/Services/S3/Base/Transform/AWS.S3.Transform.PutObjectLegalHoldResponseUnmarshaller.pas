unit AWS.S3.Transform.PutObjectLegalHoldResponseUnmarshaller;

interface

uses
  AWS.S3.Model.PutObjectLegalHoldResponse, 
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
  IPutObjectLegalHoldResponseUnmarshaller = IResponseUnmarshaller;
  
  TPutObjectLegalHoldResponseUnmarshaller = class(TXmlResponseUnmarshaller, IPutObjectLegalHoldResponseUnmarshaller)
  strict private
    class var FInstance: IPutObjectLegalHoldResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IPutObjectLegalHoldResponseUnmarshaller; static;
  end;
  
implementation

{ TPutObjectLegalHoldResponseUnmarshaller }

function TPutObjectLegalHoldResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TPutObjectLegalHoldResponse;
begin
  Response := TPutObjectLegalHoldResponse.Create;
  try
    if AContext.ResponseData.IsHeaderPresent('x-amz-request-charged') then
      Response.RequestCharged := AContext.ResponseData.GetHeaderValue('x-amz-request-charged');
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TPutObjectLegalHoldResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TPutObjectLegalHoldResponseUnmarshaller.Create;
begin
  FInstance := TPutObjectLegalHoldResponseUnmarshaller.Create;
end;

class function TPutObjectLegalHoldResponseUnmarshaller.Instance: IPutObjectLegalHoldResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
