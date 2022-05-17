unit AWS.Transcribe.Transform.ListMedicalTranscriptionJobsResponseUnmarshaller;

interface

uses
  AWS.Transcribe.Model.ListMedicalTranscriptionJobsResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transcribe.Transform.MedicalTranscriptionJobSummaryUnmarshaller, 
  AWS.Transcribe.Model.MedicalTranscriptionJobSummary, 
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
  IListMedicalTranscriptionJobsResponseUnmarshaller = IResponseUnmarshaller;
  
  TListMedicalTranscriptionJobsResponseUnmarshaller = class(TJsonResponseUnmarshaller, IListMedicalTranscriptionJobsResponseUnmarshaller)
  strict private
    class var FInstance: IListMedicalTranscriptionJobsResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IListMedicalTranscriptionJobsResponseUnmarshaller; static;
  end;
  
implementation

{ TListMedicalTranscriptionJobsResponseUnmarshaller }

function TListMedicalTranscriptionJobsResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TListMedicalTranscriptionJobsResponse;
begin
  Response := TListMedicalTranscriptionJobsResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('MedicalTranscriptionJobSummaries', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TMedicalTranscriptionJobSummary, IMedicalTranscriptionJobSummaryUnmarshaller>.JsonNew(TMedicalTranscriptionJobSummaryUnmarshaller.JsonInstance);
        Response.MedicalTranscriptionJobSummaries := Unmarshaller.Unmarshall(AContext);
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

function TListMedicalTranscriptionJobsResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TListMedicalTranscriptionJobsResponseUnmarshaller.Create;
begin
  FInstance := TListMedicalTranscriptionJobsResponseUnmarshaller.Create;
end;

class function TListMedicalTranscriptionJobsResponseUnmarshaller.Instance: IListMedicalTranscriptionJobsResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
