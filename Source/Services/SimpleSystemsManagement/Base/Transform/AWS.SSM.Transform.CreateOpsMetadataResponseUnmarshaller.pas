unit AWS.SSM.Transform.CreateOpsMetadataResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.CreateOpsMetadataResponse, 
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
  AWS.SSM.Transform.OpsMetadataAlreadyExistsExceptionUnmarshaller, 
  AWS.SSM.Transform.OpsMetadataInvalidArgumentExceptionUnmarshaller, 
  AWS.SSM.Transform.OpsMetadataLimitExceededExceptionUnmarshaller, 
  AWS.SSM.Transform.OpsMetadataTooManyUpdatesExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  ICreateOpsMetadataResponseUnmarshaller = IResponseUnmarshaller;
  
  TCreateOpsMetadataResponseUnmarshaller = class(TJsonResponseUnmarshaller, ICreateOpsMetadataResponseUnmarshaller)
  strict private
    class var FInstance: ICreateOpsMetadataResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: ICreateOpsMetadataResponseUnmarshaller; static;
  end;
  
implementation

{ TCreateOpsMetadataResponseUnmarshaller }

function TCreateOpsMetadataResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TCreateOpsMetadataResponse;
begin
  Response := TCreateOpsMetadataResponse.Create;
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

function TCreateOpsMetadataResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'OpsMetadataAlreadyExistsException' then
          Exit(TOpsMetadataAlreadyExistsExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'OpsMetadataInvalidArgumentException' then
          Exit(TOpsMetadataInvalidArgumentExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'OpsMetadataLimitExceededException' then
          Exit(TOpsMetadataLimitExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TCreateOpsMetadataResponseUnmarshaller.Create;
begin
  FInstance := TCreateOpsMetadataResponseUnmarshaller.Create;
end;

class function TCreateOpsMetadataResponseUnmarshaller.Instance: ICreateOpsMetadataResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
