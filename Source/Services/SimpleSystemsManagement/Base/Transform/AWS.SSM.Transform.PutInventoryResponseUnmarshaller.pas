unit AWS.SSM.Transform.PutInventoryResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.PutInventoryResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.CustomSchemaCountLimitExceededExceptionUnmarshaller, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidInstanceIdExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidInventoryItemContextExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidItemContentExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidTypeNameExceptionUnmarshaller, 
  AWS.SSM.Transform.ItemContentMismatchExceptionUnmarshaller, 
  AWS.SSM.Transform.ItemSizeLimitExceededExceptionUnmarshaller, 
  AWS.SSM.Transform.SubTypeCountLimitExceededExceptionUnmarshaller, 
  AWS.SSM.Transform.TotalSizeLimitExceededExceptionUnmarshaller, 
  AWS.SSM.Transform.UnsupportedInventoryItemContextExceptionUnmarshaller, 
  AWS.SSM.Transform.UnsupportedInventorySchemaVersionExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IPutInventoryResponseUnmarshaller = IResponseUnmarshaller;
  
  TPutInventoryResponseUnmarshaller = class(TJsonResponseUnmarshaller, IPutInventoryResponseUnmarshaller)
  strict private
    class var FInstance: IPutInventoryResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IPutInventoryResponseUnmarshaller; static;
  end;
  
implementation

{ TPutInventoryResponseUnmarshaller }

function TPutInventoryResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TPutInventoryResponse;
begin
  Response := TPutInventoryResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('Message', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.Message := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TPutInventoryResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'CustomSchemaCountLimitExceededException' then
          Exit(TCustomSchemaCountLimitExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InternalServerErrorException' then
          Exit(TInternalServerErrorExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidInstanceIdException' then
          Exit(TInvalidInstanceIdExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidInventoryItemContextException' then
          Exit(TInvalidInventoryItemContextExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidItemContentException' then
          Exit(TInvalidItemContentExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidTypeNameException' then
          Exit(TInvalidTypeNameExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ItemContentMismatchException' then
          Exit(TItemContentMismatchExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ItemSizeLimitExceededException' then
          Exit(TItemSizeLimitExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'SubTypeCountLimitExceededException' then
          Exit(TSubTypeCountLimitExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'TotalSizeLimitExceededException' then
          Exit(TTotalSizeLimitExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'UnsupportedInventoryItemContextException' then
          Exit(TUnsupportedInventoryItemContextExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'UnsupportedInventorySchemaVersionException' then
          Exit(TUnsupportedInventorySchemaVersionExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TPutInventoryResponseUnmarshaller.Create;
begin
  FInstance := TPutInventoryResponseUnmarshaller.Create;
end;

class function TPutInventoryResponseUnmarshaller.Instance: IPutInventoryResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
