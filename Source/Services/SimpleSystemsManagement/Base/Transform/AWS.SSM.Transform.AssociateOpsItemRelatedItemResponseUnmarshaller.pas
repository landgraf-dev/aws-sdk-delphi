unit AWS.SSM.Transform.AssociateOpsItemRelatedItemResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.AssociateOpsItemRelatedItemResponse, 
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
  AWS.SSM.Transform.OpsItemInvalidParameterExceptionUnmarshaller, 
  AWS.SSM.Transform.OpsItemLimitExceededExceptionUnmarshaller, 
  AWS.SSM.Transform.OpsItemNotFoundExceptionUnmarshaller, 
  AWS.SSM.Transform.OpsItemRelatedItemAlreadyExistsExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IAssociateOpsItemRelatedItemResponseUnmarshaller = IResponseUnmarshaller;
  
  TAssociateOpsItemRelatedItemResponseUnmarshaller = class(TJsonResponseUnmarshaller, IAssociateOpsItemRelatedItemResponseUnmarshaller)
  strict private
    class var FInstance: IAssociateOpsItemRelatedItemResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IAssociateOpsItemRelatedItemResponseUnmarshaller; static;
  end;
  
implementation

{ TAssociateOpsItemRelatedItemResponseUnmarshaller }

function TAssociateOpsItemRelatedItemResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TAssociateOpsItemRelatedItemResponse;
begin
  Response := TAssociateOpsItemRelatedItemResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('AssociationId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.AssociationId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TAssociateOpsItemRelatedItemResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'OpsItemLimitExceededException' then
          Exit(TOpsItemLimitExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'OpsItemNotFoundException' then
          Exit(TOpsItemNotFoundExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'OpsItemRelatedItemAlreadyExistsException' then
          Exit(TOpsItemRelatedItemAlreadyExistsExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TAssociateOpsItemRelatedItemResponseUnmarshaller.Create;
begin
  FInstance := TAssociateOpsItemRelatedItemResponseUnmarshaller.Create;
end;

class function TAssociateOpsItemRelatedItemResponseUnmarshaller.Instance: IAssociateOpsItemRelatedItemResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
