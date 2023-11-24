unit AWS.S3.Transform.RestoreObjectResponseUnmarshaller;

interface

uses
  AWS.S3.Model.RestoreObjectResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3.Transform.ObjectAlreadyInActiveTierErrorExceptionUnmarshaller, 
  AWS.S3.Exception;

type
  IRestoreObjectResponseUnmarshaller = IResponseUnmarshaller;
  
  TRestoreObjectResponseUnmarshaller = class(TXmlResponseUnmarshaller, IRestoreObjectResponseUnmarshaller)
  strict private
    class var FInstance: IRestoreObjectResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IRestoreObjectResponseUnmarshaller; static;
  end;
  
implementation

{ TRestoreObjectResponseUnmarshaller }

function TRestoreObjectResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TRestoreObjectResponse;
begin
  Response := TRestoreObjectResponse.Create;
  try
    if AContext.ResponseData.IsHeaderPresent('x-amz-request-charged') then
      Response.RequestCharged := AContext.ResponseData.GetHeaderValue('x-amz-request-charged');
    if AContext.ResponseData.IsHeaderPresent('x-amz-restore-output-path') then
      Response.RestoreOutputPath := AContext.ResponseData.GetHeaderValue('x-amz-restore-output-path');
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TRestoreObjectResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'ObjectAlreadyInActiveTierErrorException' then
          Exit(TObjectAlreadyInActiveTierErrorExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TRestoreObjectResponseUnmarshaller.Create;
begin
  FInstance := TRestoreObjectResponseUnmarshaller.Create;
end;

class function TRestoreObjectResponseUnmarshaller.Instance: IRestoreObjectResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
