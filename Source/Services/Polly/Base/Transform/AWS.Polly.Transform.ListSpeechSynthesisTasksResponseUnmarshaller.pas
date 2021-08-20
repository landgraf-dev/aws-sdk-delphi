unit AWS.Polly.Transform.ListSpeechSynthesisTasksResponseUnmarshaller;

interface

uses
  AWS.Polly.Model.ListSpeechSynthesisTasksResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Polly.Transform.SynthesisTaskUnmarshaller, 
  AWS.Polly.Model.SynthesisTask, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.Polly.Transform.InvalidNextTokenExceptionUnmarshaller, 
  AWS.Polly.Transform.ServiceFailureExceptionUnmarshaller, 
  AWS.Polly.Exception;

type
  IListSpeechSynthesisTasksResponseUnmarshaller = IResponseUnmarshaller;
  
  TListSpeechSynthesisTasksResponseUnmarshaller = class(TJsonResponseUnmarshaller, IListSpeechSynthesisTasksResponseUnmarshaller)
  strict private
    class var FInstance: IListSpeechSynthesisTasksResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IListSpeechSynthesisTasksResponseUnmarshaller; static;
  end;
  
implementation

{ TListSpeechSynthesisTasksResponseUnmarshaller }

function TListSpeechSynthesisTasksResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TListSpeechSynthesisTasksResponse;
begin
  Response := TListSpeechSynthesisTasksResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('NextToken', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.NextToken := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SynthesisTasks', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TSynthesisTask, ISynthesisTaskUnmarshaller>.JsonNew(TSynthesisTaskUnmarshaller.JsonInstance);
        Response.SynthesisTasks := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TListSpeechSynthesisTasksResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'InvalidNextTokenException' then
          Exit(TInvalidNextTokenExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ServiceFailureException' then
          Exit(TServiceFailureExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
      finally
        ContextCopy.Free;
      end;
    finally
      StreamCopy.Free;
    end;
    Exit(EAmazonPollyException.Create(ErrorResponse.Message, AInnerException, ErrorResponse.ErrorType, ErrorResponse.Code, ErrorResponse.RequestId, AStatusCode));
  finally
    ErrorResponse.Free;
  end;
end;

class constructor TListSpeechSynthesisTasksResponseUnmarshaller.Create;
begin
  FInstance := TListSpeechSynthesisTasksResponseUnmarshaller.Create;
end;

class function TListSpeechSynthesisTasksResponseUnmarshaller.Instance: IListSpeechSynthesisTasksResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
