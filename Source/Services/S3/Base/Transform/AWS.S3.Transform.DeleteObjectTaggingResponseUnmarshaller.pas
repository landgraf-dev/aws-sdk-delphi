unit AWS.S3.Transform.DeleteObjectTaggingResponseUnmarshaller;

interface

uses
  AWS.S3.Model.DeleteObjectTaggingResponse, 
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
  IDeleteObjectTaggingResponseUnmarshaller = IResponseUnmarshaller;
  
  TDeleteObjectTaggingResponseUnmarshaller = class(TXmlResponseUnmarshaller, IDeleteObjectTaggingResponseUnmarshaller)
  strict private
    class var FInstance: IDeleteObjectTaggingResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDeleteObjectTaggingResponseUnmarshaller; static;
  end;
  
implementation

{ TDeleteObjectTaggingResponseUnmarshaller }

function TDeleteObjectTaggingResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDeleteObjectTaggingResponse;
begin
  Response := TDeleteObjectTaggingResponse.Create;
  try
    if AContext.ResponseData.IsHeaderPresent('x-amz-version-id') then
      Response.VersionId := AContext.ResponseData.GetHeaderValue('x-amz-version-id');
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TDeleteObjectTaggingResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TDeleteObjectTaggingResponseUnmarshaller.Create;
begin
  FInstance := TDeleteObjectTaggingResponseUnmarshaller.Create;
end;

class function TDeleteObjectTaggingResponseUnmarshaller.Instance: IDeleteObjectTaggingResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
