unit AWS.SSM.Transform.UpdateResourceDataSyncResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.UpdateResourceDataSyncResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.ResourceDataSyncConflictExceptionUnmarshaller, 
  AWS.SSM.Transform.ResourceDataSyncInvalidConfigurationExceptionUnmarshaller, 
  AWS.SSM.Transform.ResourceDataSyncNotFoundExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IUpdateResourceDataSyncResponseUnmarshaller = IResponseUnmarshaller;
  
  TUpdateResourceDataSyncResponseUnmarshaller = class(TJsonResponseUnmarshaller, IUpdateResourceDataSyncResponseUnmarshaller)
  strict private
    class var FInstance: IUpdateResourceDataSyncResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IUpdateResourceDataSyncResponseUnmarshaller; static;
  end;
  
implementation

{ TUpdateResourceDataSyncResponseUnmarshaller }

function TUpdateResourceDataSyncResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TUpdateResourceDataSyncResponse;
begin
  Response := TUpdateResourceDataSyncResponse.Create;
  try
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TUpdateResourceDataSyncResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'ResourceDataSyncConflictException' then
          Exit(TResourceDataSyncConflictExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ResourceDataSyncInvalidConfigurationException' then
          Exit(TResourceDataSyncInvalidConfigurationExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ResourceDataSyncNotFoundException' then
          Exit(TResourceDataSyncNotFoundExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TUpdateResourceDataSyncResponseUnmarshaller.Create;
begin
  FInstance := TUpdateResourceDataSyncResponseUnmarshaller.Create;
end;

class function TUpdateResourceDataSyncResponseUnmarshaller.Instance: IUpdateResourceDataSyncResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
