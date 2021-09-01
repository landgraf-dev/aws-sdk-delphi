unit AWS.Translate.Transform.GetTerminologyResponseUnmarshaller;

interface

uses
  AWS.Translate.Model.GetTerminologyResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Translate.Transform.TerminologyDataLocationUnmarshaller, 
  AWS.Translate.Transform.TerminologyPropertiesUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.Translate.Transform.InternalServerExceptionUnmarshaller, 
  AWS.Translate.Transform.InvalidParameterValueExceptionUnmarshaller, 
  AWS.Translate.Transform.ResourceNotFoundExceptionUnmarshaller, 
  AWS.Translate.Transform.TooManyRequestsExceptionUnmarshaller, 
  AWS.Translate.Exception;

type
  IGetTerminologyResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetTerminologyResponseUnmarshaller = class(TJsonResponseUnmarshaller, IGetTerminologyResponseUnmarshaller)
  strict private
    class var FInstance: IGetTerminologyResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetTerminologyResponseUnmarshaller; static;
  end;
  
implementation

{ TGetTerminologyResponseUnmarshaller }

function TGetTerminologyResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetTerminologyResponse;
begin
  Response := TGetTerminologyResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('TerminologyDataLocation', TargetDepth) then
      begin
        var Unmarshaller := TTerminologyDataLocationUnmarshaller.JsonInstance;
        Response.TerminologyDataLocation := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TerminologyProperties', TargetDepth) then
      begin
        var Unmarshaller := TTerminologyPropertiesUnmarshaller.JsonInstance;
        Response.TerminologyProperties := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TGetTerminologyResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'InvalidParameterValueException' then
          Exit(TInvalidParameterValueExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TGetTerminologyResponseUnmarshaller.Create;
begin
  FInstance := TGetTerminologyResponseUnmarshaller.Create;
end;

class function TGetTerminologyResponseUnmarshaller.Instance: IGetTerminologyResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
