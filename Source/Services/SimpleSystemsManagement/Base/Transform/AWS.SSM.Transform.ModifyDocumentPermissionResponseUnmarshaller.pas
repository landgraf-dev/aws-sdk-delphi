unit AWS.SSM.Transform.ModifyDocumentPermissionResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.ModifyDocumentPermissionResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.DocumentLimitExceededExceptionUnmarshaller, 
  AWS.SSM.Transform.DocumentPermissionLimitExceptionUnmarshaller, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidDocumentExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidPermissionTypeExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IModifyDocumentPermissionResponseUnmarshaller = IResponseUnmarshaller;
  
  TModifyDocumentPermissionResponseUnmarshaller = class(TJsonResponseUnmarshaller, IModifyDocumentPermissionResponseUnmarshaller)
  strict private
    class var FInstance: IModifyDocumentPermissionResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IModifyDocumentPermissionResponseUnmarshaller; static;
  end;
  
implementation

{ TModifyDocumentPermissionResponseUnmarshaller }

function TModifyDocumentPermissionResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TModifyDocumentPermissionResponse;
begin
  Response := TModifyDocumentPermissionResponse.Create;
  try
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TModifyDocumentPermissionResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'DocumentLimitExceededException' then
          Exit(TDocumentLimitExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'DocumentPermissionLimitException' then
          Exit(TDocumentPermissionLimitExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InternalServerErrorException' then
          Exit(TInternalServerErrorExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidDocumentException' then
          Exit(TInvalidDocumentExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidPermissionTypeException' then
          Exit(TInvalidPermissionTypeExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TModifyDocumentPermissionResponseUnmarshaller.Create;
begin
  FInstance := TModifyDocumentPermissionResponseUnmarshaller.Create;
end;

class function TModifyDocumentPermissionResponseUnmarshaller.Instance: IModifyDocumentPermissionResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
