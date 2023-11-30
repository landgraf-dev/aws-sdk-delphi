unit AWS.S3.Transform.GetBucketLoggingResponseUnmarshaller;

interface

uses
  AWS.S3.Model.GetBucketLoggingResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.S3.Transform.LoggingEnabledUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3.Exception;

type
  IGetBucketLoggingResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetBucketLoggingResponseUnmarshaller = class(TXmlResponseUnmarshaller, IGetBucketLoggingResponseUnmarshaller)
  strict private
    class var FInstance: IGetBucketLoggingResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetBucketLoggingResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetBucketLoggingResponseUnmarshaller; static;
  end;
  
implementation

{ TGetBucketLoggingResponseUnmarshaller }

function TGetBucketLoggingResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetBucketLoggingResponse;
begin
  Response := TGetBucketLoggingResponse.Create;
  try
    Result := Response;
    UnmarshallResult(AContext, Response);
  except
    Response.Free;
    raise;
  end;
end;

class procedure TGetBucketLoggingResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetBucketLoggingResponse);
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
      if AContext.TestExpression('LoggingEnabled', TargetDepth) then
      begin
        var Unmarshaller := TLoggingEnabledUnmarshaller.Instance;
        AResponse.LoggingEnabled := Unmarshaller.Unmarshall(AContext);
        Continue;
      end
    else
      if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
        Exit;
end;

function TGetBucketLoggingResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TGetBucketLoggingResponseUnmarshaller.Create;
begin
  FInstance := TGetBucketLoggingResponseUnmarshaller.Create;
end;

class function TGetBucketLoggingResponseUnmarshaller.Instance: IGetBucketLoggingResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
