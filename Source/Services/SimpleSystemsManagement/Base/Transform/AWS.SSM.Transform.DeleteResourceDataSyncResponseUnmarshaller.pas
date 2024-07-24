unit AWS.SSM.Transform.DeleteResourceDataSyncResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.DeleteResourceDataSyncResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.ResourceDataSyncInvalidConfigurationExceptionUnmarshaller, 
  AWS.SSM.Transform.ResourceDataSyncNotFoundExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IDeleteResourceDataSyncResponseUnmarshaller = IResponseUnmarshaller;
  
  TDeleteResourceDataSyncResponseUnmarshaller = class(TJsonResponseUnmarshaller, IDeleteResourceDataSyncResponseUnmarshaller)
  strict private
    class var FInstance: IDeleteResourceDataSyncResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDeleteResourceDataSyncResponseUnmarshaller; static;
  end;
  
implementation

{ TDeleteResourceDataSyncResponseUnmarshaller }

function TDeleteResourceDataSyncResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDeleteResourceDataSyncResponse;
begin
  Response := TDeleteResourceDataSyncResponse.Create;
  try
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TDeleteResourceDataSyncResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TDeleteResourceDataSyncResponseUnmarshaller.Create;
begin
  FInstance := TDeleteResourceDataSyncResponseUnmarshaller.Create;
end;

class function TDeleteResourceDataSyncResponseUnmarshaller.Instance: IDeleteResourceDataSyncResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
