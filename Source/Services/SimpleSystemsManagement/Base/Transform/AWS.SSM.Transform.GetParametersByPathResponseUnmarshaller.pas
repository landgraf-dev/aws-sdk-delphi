unit AWS.SSM.Transform.GetParametersByPathResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.GetParametersByPathResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.ParameterUnmarshaller, 
  AWS.SSM.Model.Parameter, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidFilterKeyExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidFilterOptionExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidFilterValueExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidKeyIdExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidNextTokenExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IGetParametersByPathResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetParametersByPathResponseUnmarshaller = class(TJsonResponseUnmarshaller, IGetParametersByPathResponseUnmarshaller)
  strict private
    class var FInstance: IGetParametersByPathResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetParametersByPathResponseUnmarshaller; static;
  end;
  
implementation

{ TGetParametersByPathResponseUnmarshaller }

function TGetParametersByPathResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetParametersByPathResponse;
begin
  Response := TGetParametersByPathResponse.Create;
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
      if AContext.TestExpression('Parameters', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TParameter, IParameterUnmarshaller>.JsonNew(TParameterUnmarshaller.JsonInstance);
        Response.Parameters := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TGetParametersByPathResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'InvalidFilterKeyException' then
          Exit(TInvalidFilterKeyExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidFilterOptionException' then
          Exit(TInvalidFilterOptionExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidFilterValueException' then
          Exit(TInvalidFilterValueExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidKeyIdException' then
          Exit(TInvalidKeyIdExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidNextTokenException' then
          Exit(TInvalidNextTokenExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TGetParametersByPathResponseUnmarshaller.Create;
begin
  FInstance := TGetParametersByPathResponseUnmarshaller.Create;
end;

class function TGetParametersByPathResponseUnmarshaller.Instance: IGetParametersByPathResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
