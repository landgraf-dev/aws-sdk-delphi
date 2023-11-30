unit AWS.S3Control.Transform.DeleteJobTaggingResponseUnmarshaller;

interface

uses
  AWS.S3Control.Model.DeleteJobTaggingResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3Control.Transform.InternalServiceExceptionUnmarshaller, 
  AWS.S3Control.Transform.NotFoundExceptionUnmarshaller, 
  AWS.S3Control.Transform.TooManyRequestsExceptionUnmarshaller, 
  AWS.S3Control.Exception;

type
  IDeleteJobTaggingResponseUnmarshaller = IResponseUnmarshaller;
  
  TDeleteJobTaggingResponseUnmarshaller = class(TXmlResponseUnmarshaller, IDeleteJobTaggingResponseUnmarshaller)
  strict private
    class var FInstance: IDeleteJobTaggingResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDeleteJobTaggingResponseUnmarshaller; static;
  end;
  
implementation

{ TDeleteJobTaggingResponseUnmarshaller }

function TDeleteJobTaggingResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDeleteJobTaggingResponse;
begin
  Response := TDeleteJobTaggingResponse.Create;
  try
    Result := Response;
  except
    Response.Free;
    raise;
  end;
end;

function TDeleteJobTaggingResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'InternalServiceException' then
          Exit(TInternalServiceExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'NotFoundException' then
          Exit(TNotFoundExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'TooManyRequestsException' then
          Exit(TTooManyRequestsExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
      finally
        ContextCopy.Free;
      end;
    finally
      StreamCopy.Free;
    end;
    Exit(EAmazonS3ControlException.Create(ErrorResponse.Message, AInnerException, ErrorResponse.ErrorType, ErrorResponse.Code, ErrorResponse.RequestId, AStatusCode));
  finally
    ErrorResponse.Free;
  end;
end;

class constructor TDeleteJobTaggingResponseUnmarshaller.Create;
begin
  FInstance := TDeleteJobTaggingResponseUnmarshaller.Create;
end;

class function TDeleteJobTaggingResponseUnmarshaller.Instance: IDeleteJobTaggingResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
