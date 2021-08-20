unit AWS.Polly.Transform.ListLexiconsResponseUnmarshaller;

interface

uses
  AWS.Polly.Model.ListLexiconsResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Polly.Transform.LexiconDescriptionUnmarshaller, 
  AWS.Polly.Model.LexiconDescription, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.Polly.Transform.InvalidNextTokenExceptionUnmarshaller, 
  AWS.Polly.Transform.ServiceFailureExceptionUnmarshaller, 
  AWS.Polly.Exception;

type
  IListLexiconsResponseUnmarshaller = IResponseUnmarshaller;
  
  TListLexiconsResponseUnmarshaller = class(TJsonResponseUnmarshaller, IListLexiconsResponseUnmarshaller)
  strict private
    class var FInstance: IListLexiconsResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IListLexiconsResponseUnmarshaller; static;
  end;
  
implementation

{ TListLexiconsResponseUnmarshaller }

function TListLexiconsResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TListLexiconsResponse;
begin
  Response := TListLexiconsResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Lexicons', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TLexiconDescription, ILexiconDescriptionUnmarshaller>.JsonNew(TLexiconDescriptionUnmarshaller.JsonInstance);
        Response.Lexicons := Unmarshaller.Unmarshall(AContext);
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

function TListLexiconsResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TListLexiconsResponseUnmarshaller.Create;
begin
  FInstance := TListLexiconsResponseUnmarshaller.Create;
end;

class function TListLexiconsResponseUnmarshaller.Instance: IListLexiconsResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
