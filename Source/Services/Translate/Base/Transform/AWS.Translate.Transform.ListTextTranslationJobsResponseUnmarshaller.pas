unit AWS.Translate.Transform.ListTextTranslationJobsResponseUnmarshaller;

interface

uses
  AWS.Translate.Model.ListTextTranslationJobsResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Translate.Transform.TextTranslationJobPropertiesUnmarshaller, 
  AWS.Translate.Model.TextTranslationJobProperties, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.Translate.Transform.InternalServerExceptionUnmarshaller, 
  AWS.Translate.Transform.InvalidFilterExceptionUnmarshaller, 
  AWS.Translate.Transform.InvalidRequestExceptionUnmarshaller, 
  AWS.Translate.Transform.TooManyRequestsExceptionUnmarshaller, 
  AWS.Translate.Exception;

type
  IListTextTranslationJobsResponseUnmarshaller = IResponseUnmarshaller;
  
  TListTextTranslationJobsResponseUnmarshaller = class(TJsonResponseUnmarshaller, IListTextTranslationJobsResponseUnmarshaller)
  strict private
    class var FInstance: IListTextTranslationJobsResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IListTextTranslationJobsResponseUnmarshaller; static;
  end;
  
implementation

{ TListTextTranslationJobsResponseUnmarshaller }

function TListTextTranslationJobsResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TListTextTranslationJobsResponse;
begin
  Response := TListTextTranslationJobsResponse.Create;
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
      if AContext.TestExpression('TextTranslationJobPropertiesList', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TTextTranslationJobProperties, ITextTranslationJobPropertiesUnmarshaller>.JsonNew(TTextTranslationJobPropertiesUnmarshaller.JsonInstance);
        Response.TextTranslationJobPropertiesList := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TListTextTranslationJobsResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'InternalServerException' then
          Exit(TInternalServerExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidFilterException' then
          Exit(TInvalidFilterExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidRequestException' then
          Exit(TInvalidRequestExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'TooManyRequestsException' then
          Exit(TTooManyRequestsExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
      finally
        ContextCopy.Free;
      end;
    finally
      StreamCopy.Free;
    end;
    Exit(EAmazonTranslateException.Create(ErrorResponse.Message, AInnerException, ErrorResponse.ErrorType, ErrorResponse.Code, ErrorResponse.RequestId, AStatusCode));
  finally
    ErrorResponse.Free;
  end;
end;

class constructor TListTextTranslationJobsResponseUnmarshaller.Create;
begin
  FInstance := TListTextTranslationJobsResponseUnmarshaller.Create;
end;

class function TListTextTranslationJobsResponseUnmarshaller.Instance: IListTextTranslationJobsResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
