unit AWS.Transcribe.Transform.TagResourceResponseUnmarshaller;

interface

uses
  AWS.Transcribe.Model.TagResourceResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.Transcribe.Transform.BadRequestExceptionUnmarshaller, 
  AWS.Transcribe.Transform.ConflictExceptionUnmarshaller, 
  AWS.Transcribe.Transform.InternalFailureExceptionUnmarshaller, 
  AWS.Transcribe.Transform.LimitExceededExceptionUnmarshaller, 
  AWS.Transcribe.Transform.NotFoundExceptionUnmarshaller, 
  AWS.Transcribe.Exception;

type
  ITagResourceResponseUnmarshaller = IResponseUnmarshaller;
  
  TTagResourceResponseUnmarshaller = class(TJsonResponseUnmarshaller, ITagResourceResponseUnmarshaller)
  strict private
    class var FInstance: ITagResourceResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: ITagResourceResponseUnmarshaller; static;
  end;
  
implementation

{ TTagResourceResponseUnmarshaller }

function TTagResourceResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TTagResourceResponse;
begin
  Response := TTagResourceResponse.Create;
  try
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TTagResourceResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
var
  ErrorResponse: TErrorResponse;
  StreamCopy: TStream;
  ContextCopy: TJsonUnmarshallerContext;
begin
  ErrorResponse := TJsonErrorResponseUnmarshaller.Instance.Unmarshall(AContext);
  try
    ErrorResponse.InnerException := AInnerException;
    ErrorResponse.StatusCode := AStatusCode;
    StreamCopy := TBytesStream.Create(AContext.GetResponseBodyBytes);
    try
      ContextCopy := TJsonUnmarshallerContext.Create(StreamCopy, False, nil);
      try
        if ErrorResponse.Code = 'BadRequestException' then
          Exit(TBadRequestExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ConflictException' then
          Exit(TConflictExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InternalFailureException' then
          Exit(TInternalFailureExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'LimitExceededException' then
          Exit(TLimitExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'NotFoundException' then
          Exit(TNotFoundExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
      finally
        ContextCopy.Free;
      end;
    finally
      StreamCopy.Free;
    end;
    Exit(EAmazonTranscribeServiceException.Create(ErrorResponse.Message, AInnerException, ErrorResponse.ErrorType, ErrorResponse.Code, ErrorResponse.RequestId, AStatusCode));
  finally
    ErrorResponse.Free;
  end;
end;

class constructor TTagResourceResponseUnmarshaller.Create;
begin
  FInstance := TTagResourceResponseUnmarshaller.Create;
end;

class function TTagResourceResponseUnmarshaller.Instance: ITagResourceResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
