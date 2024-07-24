unit AWS.SSM.Transform.CreateResourceDataSyncResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.CreateResourceDataSyncResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.ResourceDataSyncAlreadyExistsExceptionUnmarshaller, 
  AWS.SSM.Transform.ResourceDataSyncCountExceededExceptionUnmarshaller, 
  AWS.SSM.Transform.ResourceDataSyncInvalidConfigurationExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  ICreateResourceDataSyncResponseUnmarshaller = IResponseUnmarshaller;
  
  TCreateResourceDataSyncResponseUnmarshaller = class(TJsonResponseUnmarshaller, ICreateResourceDataSyncResponseUnmarshaller)
  strict private
    class var FInstance: ICreateResourceDataSyncResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: ICreateResourceDataSyncResponseUnmarshaller; static;
  end;
  
implementation

{ TCreateResourceDataSyncResponseUnmarshaller }

function TCreateResourceDataSyncResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TCreateResourceDataSyncResponse;
begin
  Response := TCreateResourceDataSyncResponse.Create;
  try
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TCreateResourceDataSyncResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'ResourceDataSyncAlreadyExistsException' then
          Exit(TResourceDataSyncAlreadyExistsExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ResourceDataSyncCountExceededException' then
          Exit(TResourceDataSyncCountExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ResourceDataSyncInvalidConfigurationException' then
          Exit(TResourceDataSyncInvalidConfigurationExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TCreateResourceDataSyncResponseUnmarshaller.Create;
begin
  FInstance := TCreateResourceDataSyncResponseUnmarshaller.Create;
end;

class function TCreateResourceDataSyncResponseUnmarshaller.Instance: ICreateResourceDataSyncResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
