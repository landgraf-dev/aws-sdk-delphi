unit AWS.Polly.Transform.PutLexiconResponseUnmarshaller;

interface

uses
  AWS.Polly.Model.PutLexiconResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.Polly.Transform.InvalidLexiconExceptionUnmarshaller, 
  AWS.Polly.Transform.LexiconSizeExceededExceptionUnmarshaller, 
  AWS.Polly.Transform.MaxLexemeLengthExceededExceptionUnmarshaller, 
  AWS.Polly.Transform.MaxLexiconsNumberExceededExceptionUnmarshaller, 
  AWS.Polly.Transform.ServiceFailureExceptionUnmarshaller, 
  AWS.Polly.Transform.UnsupportedPlsAlphabetExceptionUnmarshaller, 
  AWS.Polly.Transform.UnsupportedPlsLanguageExceptionUnmarshaller, 
  AWS.Polly.Exception;

type
  IPutLexiconResponseUnmarshaller = IResponseUnmarshaller;
  
  TPutLexiconResponseUnmarshaller = class(TJsonResponseUnmarshaller, IPutLexiconResponseUnmarshaller)
  strict private
    class var FInstance: IPutLexiconResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IPutLexiconResponseUnmarshaller; static;
  end;
  
implementation

{ TPutLexiconResponseUnmarshaller }

function TPutLexiconResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TPutLexiconResponse;
begin
  Response := TPutLexiconResponse.Create;
  try
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TPutLexiconResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'InvalidLexiconException' then
          Exit(TInvalidLexiconExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'LexiconSizeExceededException' then
          Exit(TLexiconSizeExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'MaxLexemeLengthExceededException' then
          Exit(TMaxLexemeLengthExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'MaxLexiconsNumberExceededException' then
          Exit(TMaxLexiconsNumberExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ServiceFailureException' then
          Exit(TServiceFailureExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'UnsupportedPlsAlphabetException' then
          Exit(TUnsupportedPlsAlphabetExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'UnsupportedPlsLanguageException' then
          Exit(TUnsupportedPlsLanguageExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TPutLexiconResponseUnmarshaller.Create;
begin
  FInstance := TPutLexiconResponseUnmarshaller.Create;
end;

class function TPutLexiconResponseUnmarshaller.Instance: IPutLexiconResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
