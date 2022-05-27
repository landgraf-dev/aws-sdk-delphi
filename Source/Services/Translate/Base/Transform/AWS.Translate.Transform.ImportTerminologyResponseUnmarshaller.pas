unit AWS.Translate.Transform.ImportTerminologyResponseUnmarshaller;

interface

uses
  AWS.Translate.Model.ImportTerminologyResponse, 
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
  AWS.Translate.Transform.LimitExceededExceptionUnmarshaller, 
  AWS.Translate.Transform.TooManyRequestsExceptionUnmarshaller, 
  AWS.Translate.Exception;

type
  IImportTerminologyResponseUnmarshaller = IResponseUnmarshaller;
  
  TImportTerminologyResponseUnmarshaller = class(TJsonResponseUnmarshaller, IImportTerminologyResponseUnmarshaller)
  strict private
    class var FInstance: IImportTerminologyResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IImportTerminologyResponseUnmarshaller; static;
  end;
  
implementation

{ TImportTerminologyResponseUnmarshaller }

function TImportTerminologyResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TImportTerminologyResponse;
begin
  Response := TImportTerminologyResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('AuxiliaryDataLocation', TargetDepth) then
      begin
        var Unmarshaller := TTerminologyDataLocationUnmarshaller.JsonInstance;
        Response.AuxiliaryDataLocation := Unmarshaller.Unmarshall(AContext);
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

function TImportTerminologyResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'LimitExceededException' then
          Exit(TLimitExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TImportTerminologyResponseUnmarshaller.Create;
begin
  FInstance := TImportTerminologyResponseUnmarshaller.Create;
end;

class function TImportTerminologyResponseUnmarshaller.Instance: IImportTerminologyResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
