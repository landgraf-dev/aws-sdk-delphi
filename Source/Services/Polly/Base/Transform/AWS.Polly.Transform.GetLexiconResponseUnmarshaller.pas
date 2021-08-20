unit AWS.Polly.Transform.GetLexiconResponseUnmarshaller;

interface

uses
  AWS.Polly.Model.GetLexiconResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Polly.Transform.LexiconUnmarshaller, 
  AWS.Polly.Transform.LexiconAttributesUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.Polly.Transform.LexiconNotFoundExceptionUnmarshaller, 
  AWS.Polly.Transform.ServiceFailureExceptionUnmarshaller, 
  AWS.Polly.Exception;

type
  IGetLexiconResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetLexiconResponseUnmarshaller = class(TJsonResponseUnmarshaller, IGetLexiconResponseUnmarshaller)
  strict private
    class var FInstance: IGetLexiconResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetLexiconResponseUnmarshaller; static;
  end;
  
implementation

{ TGetLexiconResponseUnmarshaller }

function TGetLexiconResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetLexiconResponse;
begin
  Response := TGetLexiconResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Lexicon', TargetDepth) then
      begin
        var Unmarshaller := TLexiconUnmarshaller.JsonInstance;
        Response.Lexicon := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LexiconAttributes', TargetDepth) then
      begin
        var Unmarshaller := TLexiconAttributesUnmarshaller.JsonInstance;
        Response.LexiconAttributes := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TGetLexiconResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'LexiconNotFoundException' then
          Exit(TLexiconNotFoundExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TGetLexiconResponseUnmarshaller.Create;
begin
  FInstance := TGetLexiconResponseUnmarshaller.Create;
end;

class function TGetLexiconResponseUnmarshaller.Instance: IGetLexiconResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
