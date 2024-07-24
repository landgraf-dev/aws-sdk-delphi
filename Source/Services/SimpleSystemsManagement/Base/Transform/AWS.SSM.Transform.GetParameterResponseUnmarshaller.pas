unit AWS.SSM.Transform.GetParameterResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.GetParameterResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Transform.ParameterUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidKeyIdExceptionUnmarshaller, 
  AWS.SSM.Transform.ParameterNotFoundExceptionUnmarshaller, 
  AWS.SSM.Transform.ParameterVersionNotFoundExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IGetParameterResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetParameterResponseUnmarshaller = class(TJsonResponseUnmarshaller, IGetParameterResponseUnmarshaller)
  strict private
    class var FInstance: IGetParameterResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetParameterResponseUnmarshaller; static;
  end;
  
implementation

{ TGetParameterResponseUnmarshaller }

function TGetParameterResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetParameterResponse;
begin
  Response := TGetParameterResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('Parameter', TargetDepth) then
      begin
        var Unmarshaller := TParameterUnmarshaller.JsonInstance;
        Response.Parameter := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TGetParameterResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'InternalServerErrorException' then
          Exit(TInternalServerErrorExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidKeyIdException' then
          Exit(TInvalidKeyIdExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ParameterNotFoundException' then
          Exit(TParameterNotFoundExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ParameterVersionNotFoundException' then
          Exit(TParameterVersionNotFoundExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
      finally
        ContextCopy.Free;
      end;
    finally
      StreamCopy.Free;
    end;
    Exit(EAmazonSimpleSystemsManagementException.Create(ErrorResponse.Message, AInnerException, ErrorResponse.ErrorType, ErrorResponse.Code, ErrorResponse.RequestId, AStatusCode));
  finally
    ErrorResponse.Free;
  end;
end;

class constructor TGetParameterResponseUnmarshaller.Create;
begin
  FInstance := TGetParameterResponseUnmarshaller.Create;
end;

class function TGetParameterResponseUnmarshaller.Instance: IGetParameterResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
