unit AWS.SSM.Transform.GetServiceSettingResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.GetServiceSettingResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Transform.ServiceSettingUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.ServiceSettingNotFoundExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IGetServiceSettingResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetServiceSettingResponseUnmarshaller = class(TJsonResponseUnmarshaller, IGetServiceSettingResponseUnmarshaller)
  strict private
    class var FInstance: IGetServiceSettingResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetServiceSettingResponseUnmarshaller; static;
  end;
  
implementation

{ TGetServiceSettingResponseUnmarshaller }

function TGetServiceSettingResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetServiceSettingResponse;
begin
  Response := TGetServiceSettingResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('ServiceSetting', TargetDepth) then
      begin
        var Unmarshaller := TServiceSettingUnmarshaller.JsonInstance;
        Response.ServiceSetting := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TGetServiceSettingResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'ServiceSettingNotFoundException' then
          Exit(TServiceSettingNotFoundExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TGetServiceSettingResponseUnmarshaller.Create;
begin
  FInstance := TGetServiceSettingResponseUnmarshaller.Create;
end;

class function TGetServiceSettingResponseUnmarshaller.Instance: IGetServiceSettingResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
