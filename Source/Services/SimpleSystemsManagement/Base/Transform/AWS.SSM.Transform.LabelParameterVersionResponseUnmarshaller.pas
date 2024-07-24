unit AWS.SSM.Transform.LabelParameterVersionResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.LabelParameterVersionResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.ParameterNotFoundExceptionUnmarshaller, 
  AWS.SSM.Transform.ParameterVersionLabelLimitExceededExceptionUnmarshaller, 
  AWS.SSM.Transform.ParameterVersionNotFoundExceptionUnmarshaller, 
  AWS.SSM.Transform.TooManyUpdatesExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  ILabelParameterVersionResponseUnmarshaller = IResponseUnmarshaller;
  
  TLabelParameterVersionResponseUnmarshaller = class(TJsonResponseUnmarshaller, ILabelParameterVersionResponseUnmarshaller)
  strict private
    class var FInstance: ILabelParameterVersionResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: ILabelParameterVersionResponseUnmarshaller; static;
  end;
  
implementation

{ TLabelParameterVersionResponseUnmarshaller }

function TLabelParameterVersionResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TLabelParameterVersionResponse;
begin
  Response := TLabelParameterVersionResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('InvalidLabels', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        Response.InvalidLabels := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ParameterVersion', TargetDepth) then
      begin
        var Unmarshaller := TInt64Unmarshaller.JsonInstance;
        Response.ParameterVersion := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TLabelParameterVersionResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'ParameterNotFoundException' then
          Exit(TParameterNotFoundExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ParameterVersionLabelLimitExceededException' then
          Exit(TParameterVersionLabelLimitExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ParameterVersionNotFoundException' then
          Exit(TParameterVersionNotFoundExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'TooManyUpdatesException' then
          Exit(TTooManyUpdatesExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TLabelParameterVersionResponseUnmarshaller.Create;
begin
  FInstance := TLabelParameterVersionResponseUnmarshaller.Create;
end;

class function TLabelParameterVersionResponseUnmarshaller.Instance: ILabelParameterVersionResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
