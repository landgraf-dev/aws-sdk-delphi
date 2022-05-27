unit AWS.Transcribe.Transform.ListCallAnalyticsCategoriesResponseUnmarshaller;

interface

uses
  AWS.Transcribe.Model.ListCallAnalyticsCategoriesResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transcribe.Transform.CategoryPropertiesUnmarshaller, 
  AWS.Transcribe.Model.CategoryProperties, 
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
  IListCallAnalyticsCategoriesResponseUnmarshaller = IResponseUnmarshaller;
  
  TListCallAnalyticsCategoriesResponseUnmarshaller = class(TJsonResponseUnmarshaller, IListCallAnalyticsCategoriesResponseUnmarshaller)
  strict private
    class var FInstance: IListCallAnalyticsCategoriesResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IListCallAnalyticsCategoriesResponseUnmarshaller; static;
  end;
  
implementation

{ TListCallAnalyticsCategoriesResponseUnmarshaller }

function TListCallAnalyticsCategoriesResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TListCallAnalyticsCategoriesResponse;
begin
  Response := TListCallAnalyticsCategoriesResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Categories', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TCategoryProperties, ICategoryPropertiesUnmarshaller>.JsonNew(TCategoryPropertiesUnmarshaller.JsonInstance);
        Response.Categories := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('NextToken', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.NextToken := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TListCallAnalyticsCategoriesResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TListCallAnalyticsCategoriesResponseUnmarshaller.Create;
begin
  FInstance := TListCallAnalyticsCategoriesResponseUnmarshaller.Create;
end;

class function TListCallAnalyticsCategoriesResponseUnmarshaller.Instance: IListCallAnalyticsCategoriesResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
