unit AWS.S3Control.Transform.PutJobTaggingResponseUnmarshaller;

interface

uses
  AWS.S3Control.Model.PutJobTaggingResponse, 
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
  AWS.S3Control.Transform.TooManyTagsExceptionUnmarshaller, 
  AWS.S3Control.Exception;

type
  IPutJobTaggingResponseUnmarshaller = IResponseUnmarshaller;
  
  TPutJobTaggingResponseUnmarshaller = class(TXmlResponseUnmarshaller, IPutJobTaggingResponseUnmarshaller)
  strict private
    class var FInstance: IPutJobTaggingResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IPutJobTaggingResponseUnmarshaller; static;
  end;
  
implementation

{ TPutJobTaggingResponseUnmarshaller }

function TPutJobTaggingResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TPutJobTaggingResponse;
begin
  Response := TPutJobTaggingResponse.Create;
  try
    Result := Response;
  except
    Response.Free;
    raise;
  end;
end;

function TPutJobTaggingResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'TooManyTagsException' then
          Exit(TTooManyTagsExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TPutJobTaggingResponseUnmarshaller.Create;
begin
  FInstance := TPutJobTaggingResponseUnmarshaller.Create;
end;

class function TPutJobTaggingResponseUnmarshaller.Instance: IPutJobTaggingResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
