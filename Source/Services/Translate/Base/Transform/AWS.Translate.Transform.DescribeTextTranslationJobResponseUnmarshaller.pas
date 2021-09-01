unit AWS.Translate.Transform.DescribeTextTranslationJobResponseUnmarshaller;

interface

uses
  AWS.Translate.Model.DescribeTextTranslationJobResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Translate.Transform.TextTranslationJobPropertiesUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.Translate.Transform.InternalServerExceptionUnmarshaller, 
  AWS.Translate.Transform.ResourceNotFoundExceptionUnmarshaller, 
  AWS.Translate.Transform.TooManyRequestsExceptionUnmarshaller, 
  AWS.Translate.Exception;

type
  IDescribeTextTranslationJobResponseUnmarshaller = IResponseUnmarshaller;
  
  TDescribeTextTranslationJobResponseUnmarshaller = class(TJsonResponseUnmarshaller, IDescribeTextTranslationJobResponseUnmarshaller)
  strict private
    class var FInstance: IDescribeTextTranslationJobResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDescribeTextTranslationJobResponseUnmarshaller; static;
  end;
  
implementation

{ TDescribeTextTranslationJobResponseUnmarshaller }

function TDescribeTextTranslationJobResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDescribeTextTranslationJobResponse;
begin
  Response := TDescribeTextTranslationJobResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('TextTranslationJobProperties', TargetDepth) then
      begin
        var Unmarshaller := TTextTranslationJobPropertiesUnmarshaller.JsonInstance;
        Response.TextTranslationJobProperties := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TDescribeTextTranslationJobResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'ResourceNotFoundException' then
          Exit(TResourceNotFoundExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TDescribeTextTranslationJobResponseUnmarshaller.Create;
begin
  FInstance := TDescribeTextTranslationJobResponseUnmarshaller.Create;
end;

class function TDescribeTextTranslationJobResponseUnmarshaller.Instance: IDescribeTextTranslationJobResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
