unit AWS.S3.Transform.DeleteObjectResponseUnmarshaller;

interface

uses
  System.SysUtils, 
  AWS.S3.Model.DeleteObjectResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Runtime.Exceptions, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3.Exception;

type
  IDeleteObjectResponseUnmarshaller = IResponseUnmarshaller;
  
  TDeleteObjectResponseUnmarshaller = class(TXmlResponseUnmarshaller, IDeleteObjectResponseUnmarshaller)
  strict private
    class var FInstance: IDeleteObjectResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDeleteObjectResponseUnmarshaller; static;
  end;
  
implementation

{ TDeleteObjectResponseUnmarshaller }

function TDeleteObjectResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDeleteObjectResponse;
begin
  Response := TDeleteObjectResponse.Create;
  try
    if AContext.ResponseData.IsHeaderPresent('x-amz-delete-marker') then
      Response.DeleteMarker := StrToBool(AContext.ResponseData.GetHeaderValue('x-amz-delete-marker'));
    if AContext.ResponseData.IsHeaderPresent('x-amz-request-charged') then
      Response.RequestCharged := AContext.ResponseData.GetHeaderValue('x-amz-request-charged');
    if AContext.ResponseData.IsHeaderPresent('x-amz-version-id') then
      Response.VersionId := AContext.ResponseData.GetHeaderValue('x-amz-version-id');
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TDeleteObjectResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TDeleteObjectResponseUnmarshaller.Create;
begin
  FInstance := TDeleteObjectResponseUnmarshaller.Create;
end;

class function TDeleteObjectResponseUnmarshaller.Instance: IDeleteObjectResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
