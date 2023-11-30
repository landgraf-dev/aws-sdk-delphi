unit AWS.S3Control.Transform.GetJobTaggingResponseUnmarshaller;

interface

uses
  AWS.S3Control.Model.GetJobTaggingResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.S3Control.Transform.S3TagUnmarshaller, 
  AWS.S3Control.Model.S3Tag, 
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
  IGetJobTaggingResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetJobTaggingResponseUnmarshaller = class(TXmlResponseUnmarshaller, IGetJobTaggingResponseUnmarshaller)
  strict private
    class var FInstance: IGetJobTaggingResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetJobTaggingResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetJobTaggingResponseUnmarshaller; static;
  end;
  
implementation

{ TGetJobTaggingResponseUnmarshaller }

function TGetJobTaggingResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetJobTaggingResponse;
begin
  Response := TGetJobTaggingResponse.Create;
  try
    Result := Response;
    UnmarshallResult(AContext, Response);
  except
    Response.Free;
    raise;
  end;
end;

class procedure TGetJobTaggingResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetJobTaggingResponse);
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
begin
  OriginalDepth := AContext.CurrentDepth;
  TargetDepth := OriginalDepth + 1;
  if AContext.IsStartOfDocument then
    Inc(TargetDepth, 1);
  while AContext.Read do
    if AContext.IsStartElement or AContext.IsAttribute then
      if AContext.TestExpression('Tags/member', TargetDepth) then
      begin
        var Unmarshaller := TS3TagUnmarshaller.Instance;
        AResponse.Tags.Add(Unmarshaller.Unmarshall(AContext));
        Continue;
      end
    else
      if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
        Exit;
end;

function TGetJobTaggingResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TGetJobTaggingResponseUnmarshaller.Create;
begin
  FInstance := TGetJobTaggingResponseUnmarshaller.Create;
end;

class function TGetJobTaggingResponseUnmarshaller.Instance: IGetJobTaggingResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
