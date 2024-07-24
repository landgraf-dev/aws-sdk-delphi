unit AWS.SSM.Transform.DeleteOpsMetadataResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.DeleteOpsMetadataResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.OpsMetadataInvalidArgumentExceptionUnmarshaller, 
  AWS.SSM.Transform.OpsMetadataNotFoundExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IDeleteOpsMetadataResponseUnmarshaller = IResponseUnmarshaller;
  
  TDeleteOpsMetadataResponseUnmarshaller = class(TJsonResponseUnmarshaller, IDeleteOpsMetadataResponseUnmarshaller)
  strict private
    class var FInstance: IDeleteOpsMetadataResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDeleteOpsMetadataResponseUnmarshaller; static;
  end;
  
implementation

{ TDeleteOpsMetadataResponseUnmarshaller }

function TDeleteOpsMetadataResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDeleteOpsMetadataResponse;
begin
  Response := TDeleteOpsMetadataResponse.Create;
  try
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TDeleteOpsMetadataResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'OpsMetadataNotFoundException' then
          Exit(TOpsMetadataNotFoundExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TDeleteOpsMetadataResponseUnmarshaller.Create;
begin
  FInstance := TDeleteOpsMetadataResponseUnmarshaller.Create;
end;

class function TDeleteOpsMetadataResponseUnmarshaller.Instance: IDeleteOpsMetadataResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
