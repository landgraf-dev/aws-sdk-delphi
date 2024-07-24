unit AWS.SSM.Transform.GetParameterHistoryResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.GetParameterHistoryResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.ParameterHistoryUnmarshaller, 
  AWS.SSM.Model.ParameterHistory, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidKeyIdExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidNextTokenExceptionUnmarshaller, 
  AWS.SSM.Transform.ParameterNotFoundExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IGetParameterHistoryResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetParameterHistoryResponseUnmarshaller = class(TJsonResponseUnmarshaller, IGetParameterHistoryResponseUnmarshaller)
  strict private
    class var FInstance: IGetParameterHistoryResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetParameterHistoryResponseUnmarshaller; static;
  end;
  
implementation

{ TGetParameterHistoryResponseUnmarshaller }

function TGetParameterHistoryResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetParameterHistoryResponse;
begin
  Response := TGetParameterHistoryResponse.Create;
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
        var Unmarshaller := TJsonObjectListUnmarshaller<TParameterHistory, IParameterHistoryUnmarshaller>.JsonNew(TParameterHistoryUnmarshaller.JsonInstance);
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

function TGetParameterHistoryResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'InvalidNextTokenException' then
          Exit(TInvalidNextTokenExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ParameterNotFoundException' then
          Exit(TParameterNotFoundExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TGetParameterHistoryResponseUnmarshaller.Create;
begin
  FInstance := TGetParameterHistoryResponseUnmarshaller.Create;
end;

class function TGetParameterHistoryResponseUnmarshaller.Instance: IGetParameterHistoryResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
