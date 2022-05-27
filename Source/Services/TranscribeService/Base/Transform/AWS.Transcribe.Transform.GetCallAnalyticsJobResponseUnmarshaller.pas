unit AWS.Transcribe.Transform.GetCallAnalyticsJobResponseUnmarshaller;

interface

uses
  AWS.Transcribe.Model.GetCallAnalyticsJobResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transcribe.Transform.CallAnalyticsJobUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.Transcribe.Transform.BadRequestExceptionUnmarshaller, 
  AWS.Transcribe.Transform.InternalFailureExceptionUnmarshaller, 
  AWS.Transcribe.Transform.LimitExceededExceptionUnmarshaller, 
  AWS.Transcribe.Transform.NotFoundExceptionUnmarshaller, 
  AWS.Transcribe.Exception;

type
  IGetCallAnalyticsJobResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetCallAnalyticsJobResponseUnmarshaller = class(TJsonResponseUnmarshaller, IGetCallAnalyticsJobResponseUnmarshaller)
  strict private
    class var FInstance: IGetCallAnalyticsJobResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetCallAnalyticsJobResponseUnmarshaller; static;
  end;
  
implementation

{ TGetCallAnalyticsJobResponseUnmarshaller }

function TGetCallAnalyticsJobResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetCallAnalyticsJobResponse;
begin
  Response := TGetCallAnalyticsJobResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('CallAnalyticsJob', TargetDepth) then
      begin
        var Unmarshaller := TCallAnalyticsJobUnmarshaller.JsonInstance;
        Response.CallAnalyticsJob := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TGetCallAnalyticsJobResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TGetCallAnalyticsJobResponseUnmarshaller.Create;
begin
  FInstance := TGetCallAnalyticsJobResponseUnmarshaller.Create;
end;

class function TGetCallAnalyticsJobResponseUnmarshaller.Instance: IGetCallAnalyticsJobResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
