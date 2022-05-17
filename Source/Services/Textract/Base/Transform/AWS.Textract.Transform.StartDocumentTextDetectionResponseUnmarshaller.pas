unit AWS.Textract.Transform.StartDocumentTextDetectionResponseUnmarshaller;

interface

uses
  AWS.Textract.Model.StartDocumentTextDetectionResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.Textract.Transform.AccessDeniedExceptionUnmarshaller, 
  AWS.Textract.Transform.BadDocumentExceptionUnmarshaller, 
  AWS.Textract.Transform.DocumentTooLargeExceptionUnmarshaller, 
  AWS.Textract.Transform.IdempotentParameterMismatchExceptionUnmarshaller, 
  AWS.Textract.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.Textract.Transform.InvalidKMSKeyExceptionUnmarshaller, 
  AWS.Textract.Transform.InvalidParameterExceptionUnmarshaller, 
  AWS.Textract.Transform.InvalidS3ObjectExceptionUnmarshaller, 
  AWS.Textract.Transform.LimitExceededExceptionUnmarshaller, 
  AWS.Textract.Transform.ProvisionedThroughputExceededExceptionUnmarshaller, 
  AWS.Textract.Transform.ThrottlingExceptionUnmarshaller, 
  AWS.Textract.Transform.UnsupportedDocumentExceptionUnmarshaller, 
  AWS.Textract.Exception;

type
  IStartDocumentTextDetectionResponseUnmarshaller = IResponseUnmarshaller;
  
  TStartDocumentTextDetectionResponseUnmarshaller = class(TJsonResponseUnmarshaller, IStartDocumentTextDetectionResponseUnmarshaller)
  strict private
    class var FInstance: IStartDocumentTextDetectionResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IStartDocumentTextDetectionResponseUnmarshaller; static;
  end;
  
implementation

{ TStartDocumentTextDetectionResponseUnmarshaller }

function TStartDocumentTextDetectionResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TStartDocumentTextDetectionResponse;
begin
  Response := TStartDocumentTextDetectionResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('JobId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.JobId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TStartDocumentTextDetectionResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'AccessDeniedException' then
          Exit(TAccessDeniedExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'BadDocumentException' then
          Exit(TBadDocumentExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'DocumentTooLargeException' then
          Exit(TDocumentTooLargeExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'IdempotentParameterMismatchException' then
          Exit(TIdempotentParameterMismatchExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InternalServerErrorException' then
          Exit(TInternalServerErrorExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidKMSKeyException' then
          Exit(TInvalidKMSKeyExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidParameterException' then
          Exit(TInvalidParameterExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidS3ObjectException' then
          Exit(TInvalidS3ObjectExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'LimitExceededException' then
          Exit(TLimitExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ProvisionedThroughputExceededException' then
          Exit(TProvisionedThroughputExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ThrottlingException' then
          Exit(TThrottlingExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'UnsupportedDocumentException' then
          Exit(TUnsupportedDocumentExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
      finally
        ContextCopy.Free;
      end;
    finally
      StreamCopy.Free;
    end;
    Exit(EAmazonTextractException.Create(ErrorResponse.Message, AInnerException, ErrorResponse.ErrorType, ErrorResponse.Code, ErrorResponse.RequestId, AStatusCode));
  finally
    ErrorResponse.Free;
  end;
end;

class constructor TStartDocumentTextDetectionResponseUnmarshaller.Create;
begin
  FInstance := TStartDocumentTextDetectionResponseUnmarshaller.Create;
end;

class function TStartDocumentTextDetectionResponseUnmarshaller.Instance: IStartDocumentTextDetectionResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
