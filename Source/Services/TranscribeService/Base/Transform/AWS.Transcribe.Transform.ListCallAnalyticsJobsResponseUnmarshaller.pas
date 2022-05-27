unit AWS.Transcribe.Transform.ListCallAnalyticsJobsResponseUnmarshaller;

interface

uses
  AWS.Transcribe.Model.ListCallAnalyticsJobsResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transcribe.Transform.CallAnalyticsJobSummaryUnmarshaller, 
  AWS.Transcribe.Model.CallAnalyticsJobSummary, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.Transcribe.Transform.BadRequestExceptionUnmarshaller, 
  AWS.Transcribe.Transform.InternalFailureExceptionUnmarshaller, 
  AWS.Transcribe.Transform.LimitExceededExceptionUnmarshaller, 
  AWS.Transcribe.Exception;

type
  IListCallAnalyticsJobsResponseUnmarshaller = IResponseUnmarshaller;
  
  TListCallAnalyticsJobsResponseUnmarshaller = class(TJsonResponseUnmarshaller, IListCallAnalyticsJobsResponseUnmarshaller)
  strict private
    class var FInstance: IListCallAnalyticsJobsResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IListCallAnalyticsJobsResponseUnmarshaller; static;
  end;
  
implementation

{ TListCallAnalyticsJobsResponseUnmarshaller }

function TListCallAnalyticsJobsResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TListCallAnalyticsJobsResponse;
begin
  Response := TListCallAnalyticsJobsResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('CallAnalyticsJobSummaries', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TCallAnalyticsJobSummary, ICallAnalyticsJobSummaryUnmarshaller>.JsonNew(TCallAnalyticsJobSummaryUnmarshaller.JsonInstance);
        Response.CallAnalyticsJobSummaries := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('NextToken', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.NextToken := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Status', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.Status := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TListCallAnalyticsJobsResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TListCallAnalyticsJobsResponseUnmarshaller.Create;
begin
  FInstance := TListCallAnalyticsJobsResponseUnmarshaller.Create;
end;

class function TListCallAnalyticsJobsResponseUnmarshaller.Instance: IListCallAnalyticsJobsResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
