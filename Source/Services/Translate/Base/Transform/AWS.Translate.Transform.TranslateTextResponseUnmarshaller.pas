unit AWS.Translate.Transform.TranslateTextResponseUnmarshaller;

interface

uses
  AWS.Translate.Model.TranslateTextResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Translate.Transform.TranslationSettingsUnmarshaller, 
  AWS.Translate.Transform.AppliedTerminologyUnmarshaller, 
  AWS.Translate.Model.AppliedTerminology, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.Translate.Transform.DetectedLanguageLowConfidenceExceptionUnmarshaller, 
  AWS.Translate.Transform.InternalServerExceptionUnmarshaller, 
  AWS.Translate.Transform.InvalidRequestExceptionUnmarshaller, 
  AWS.Translate.Transform.ResourceNotFoundExceptionUnmarshaller, 
  AWS.Translate.Transform.ServiceUnavailableExceptionUnmarshaller, 
  AWS.Translate.Transform.TextSizeLimitExceededExceptionUnmarshaller, 
  AWS.Translate.Transform.TooManyRequestsExceptionUnmarshaller, 
  AWS.Translate.Transform.UnsupportedLanguagePairExceptionUnmarshaller, 
  AWS.Translate.Exception;

type
  ITranslateTextResponseUnmarshaller = IResponseUnmarshaller;
  
  TTranslateTextResponseUnmarshaller = class(TJsonResponseUnmarshaller, ITranslateTextResponseUnmarshaller)
  strict private
    class var FInstance: ITranslateTextResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: ITranslateTextResponseUnmarshaller; static;
  end;
  
implementation

{ TTranslateTextResponseUnmarshaller }

function TTranslateTextResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TTranslateTextResponse;
begin
  Response := TTranslateTextResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('AppliedSettings', TargetDepth) then
      begin
        var Unmarshaller := TTranslationSettingsUnmarshaller.JsonInstance;
        Response.AppliedSettings := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('AppliedTerminologies', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TAppliedTerminology, IAppliedTerminologyUnmarshaller>.JsonNew(TAppliedTerminologyUnmarshaller.JsonInstance);
        Response.AppliedTerminologies := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SourceLanguageCode', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.SourceLanguageCode := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TargetLanguageCode', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.TargetLanguageCode := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TranslatedText', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.TranslatedText := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TTranslateTextResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'DetectedLanguageLowConfidenceException' then
          Exit(TDetectedLanguageLowConfidenceExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InternalServerException' then
          Exit(TInternalServerExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidRequestException' then
          Exit(TInvalidRequestExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ResourceNotFoundException' then
          Exit(TResourceNotFoundExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ServiceUnavailableException' then
          Exit(TServiceUnavailableExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'TextSizeLimitExceededException' then
          Exit(TTextSizeLimitExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'TooManyRequestsException' then
          Exit(TTooManyRequestsExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'UnsupportedLanguagePairException' then
          Exit(TUnsupportedLanguagePairExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TTranslateTextResponseUnmarshaller.Create;
begin
  FInstance := TTranslateTextResponseUnmarshaller.Create;
end;

class function TTranslateTextResponseUnmarshaller.Instance: ITranslateTextResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
