unit AWS.SSM.Transform.UpdateOpsItemResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.UpdateOpsItemResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.OpsItemAlreadyExistsExceptionUnmarshaller, 
  AWS.SSM.Transform.OpsItemInvalidParameterExceptionUnmarshaller, 
  AWS.SSM.Transform.OpsItemLimitExceededExceptionUnmarshaller, 
  AWS.SSM.Transform.OpsItemNotFoundExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IUpdateOpsItemResponseUnmarshaller = IResponseUnmarshaller;
  
  TUpdateOpsItemResponseUnmarshaller = class(TJsonResponseUnmarshaller, IUpdateOpsItemResponseUnmarshaller)
  strict private
    class var FInstance: IUpdateOpsItemResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IUpdateOpsItemResponseUnmarshaller; static;
  end;
  
implementation

{ TUpdateOpsItemResponseUnmarshaller }

function TUpdateOpsItemResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TUpdateOpsItemResponse;
begin
  Response := TUpdateOpsItemResponse.Create;
  try
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TUpdateOpsItemResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'OpsItemAlreadyExistsException' then
          Exit(TOpsItemAlreadyExistsExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'OpsItemInvalidParameterException' then
          Exit(TOpsItemInvalidParameterExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'OpsItemLimitExceededException' then
          Exit(TOpsItemLimitExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'OpsItemNotFoundException' then
          Exit(TOpsItemNotFoundExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TUpdateOpsItemResponseUnmarshaller.Create;
begin
  FInstance := TUpdateOpsItemResponseUnmarshaller.Create;
end;

class function TUpdateOpsItemResponseUnmarshaller.Instance: IUpdateOpsItemResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
