unit AWS.SSM.Transform.DisassociateOpsItemRelatedItemResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.DisassociateOpsItemRelatedItemResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.OpsItemInvalidParameterExceptionUnmarshaller, 
  AWS.SSM.Transform.OpsItemNotFoundExceptionUnmarshaller, 
  AWS.SSM.Transform.OpsItemRelatedItemAssociationNotFoundExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IDisassociateOpsItemRelatedItemResponseUnmarshaller = IResponseUnmarshaller;
  
  TDisassociateOpsItemRelatedItemResponseUnmarshaller = class(TJsonResponseUnmarshaller, IDisassociateOpsItemRelatedItemResponseUnmarshaller)
  strict private
    class var FInstance: IDisassociateOpsItemRelatedItemResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDisassociateOpsItemRelatedItemResponseUnmarshaller; static;
  end;
  
implementation

{ TDisassociateOpsItemRelatedItemResponseUnmarshaller }

function TDisassociateOpsItemRelatedItemResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDisassociateOpsItemRelatedItemResponse;
begin
  Response := TDisassociateOpsItemRelatedItemResponse.Create;
  try
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TDisassociateOpsItemRelatedItemResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'OpsItemInvalidParameterException' then
          Exit(TOpsItemInvalidParameterExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'OpsItemNotFoundException' then
          Exit(TOpsItemNotFoundExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'OpsItemRelatedItemAssociationNotFoundException' then
          Exit(TOpsItemRelatedItemAssociationNotFoundExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TDisassociateOpsItemRelatedItemResponseUnmarshaller.Create;
begin
  FInstance := TDisassociateOpsItemRelatedItemResponseUnmarshaller.Create;
end;

class function TDisassociateOpsItemRelatedItemResponseUnmarshaller.Instance: IDisassociateOpsItemRelatedItemResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
