unit AWS.S3Control.Transform.UpdateJobPriorityResponseUnmarshaller;

interface

uses
  AWS.S3Control.Model.UpdateJobPriorityResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3Control.Transform.BadRequestExceptionUnmarshaller, 
  AWS.S3Control.Transform.InternalServiceExceptionUnmarshaller, 
  AWS.S3Control.Transform.NotFoundExceptionUnmarshaller, 
  AWS.S3Control.Transform.TooManyRequestsExceptionUnmarshaller, 
  AWS.S3Control.Exception;

type
  IUpdateJobPriorityResponseUnmarshaller = IResponseUnmarshaller;
  
  TUpdateJobPriorityResponseUnmarshaller = class(TXmlResponseUnmarshaller, IUpdateJobPriorityResponseUnmarshaller)
  strict private
    class var FInstance: IUpdateJobPriorityResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TUpdateJobPriorityResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IUpdateJobPriorityResponseUnmarshaller; static;
  end;
  
implementation

{ TUpdateJobPriorityResponseUnmarshaller }

function TUpdateJobPriorityResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TUpdateJobPriorityResponse;
begin
  Response := TUpdateJobPriorityResponse.Create;
  try
    UnmarshallResult(AContext, Response);
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class procedure TUpdateJobPriorityResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TUpdateJobPriorityResponse);
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
    begin
      if AContext.TestExpression('JobId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.JobId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Priority', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.Instance;
        AResponse.Priority := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end
    else
      if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
        Exit;
end;

function TUpdateJobPriorityResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'BadRequestException' then
          Exit(TBadRequestExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TUpdateJobPriorityResponseUnmarshaller.Create;
begin
  FInstance := TUpdateJobPriorityResponseUnmarshaller.Create;
end;

class function TUpdateJobPriorityResponseUnmarshaller.Instance: IUpdateJobPriorityResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
