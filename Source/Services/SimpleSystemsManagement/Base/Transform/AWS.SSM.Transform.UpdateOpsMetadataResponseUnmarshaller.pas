unit AWS.SSM.Transform.UpdateOpsMetadataResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.UpdateOpsMetadataResponse, 
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
  AWS.SSM.Transform.OpsMetadataInvalidArgumentExceptionUnmarshaller, 
  AWS.SSM.Transform.OpsMetadataKeyLimitExceededExceptionUnmarshaller, 
  AWS.SSM.Transform.OpsMetadataNotFoundExceptionUnmarshaller, 
  AWS.SSM.Transform.OpsMetadataTooManyUpdatesExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IUpdateOpsMetadataResponseUnmarshaller = IResponseUnmarshaller;
  
  TUpdateOpsMetadataResponseUnmarshaller = class(TJsonResponseUnmarshaller, IUpdateOpsMetadataResponseUnmarshaller)
  strict private
    class var FInstance: IUpdateOpsMetadataResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IUpdateOpsMetadataResponseUnmarshaller; static;
  end;
  
implementation

{ TUpdateOpsMetadataResponseUnmarshaller }

function TUpdateOpsMetadataResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TUpdateOpsMetadataResponse;
begin
  Response := TUpdateOpsMetadataResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('OpsMetadataArn', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.OpsMetadataArn := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TUpdateOpsMetadataResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'OpsMetadataInvalidArgumentException' then
          Exit(TOpsMetadataInvalidArgumentExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'OpsMetadataKeyLimitExceededException' then
          Exit(TOpsMetadataKeyLimitExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'OpsMetadataNotFoundException' then
          Exit(TOpsMetadataNotFoundExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'OpsMetadataTooManyUpdatesException' then
          Exit(TOpsMetadataTooManyUpdatesExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TUpdateOpsMetadataResponseUnmarshaller.Create;
begin
  FInstance := TUpdateOpsMetadataResponseUnmarshaller.Create;
end;

class function TUpdateOpsMetadataResponseUnmarshaller.Instance: IUpdateOpsMetadataResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
