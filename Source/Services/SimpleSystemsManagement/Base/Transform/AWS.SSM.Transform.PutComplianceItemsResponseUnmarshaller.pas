unit AWS.SSM.Transform.PutComplianceItemsResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.PutComplianceItemsResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.ComplianceTypeCountLimitExceededExceptionUnmarshaller, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidItemContentExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidResourceIdExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidResourceTypeExceptionUnmarshaller, 
  AWS.SSM.Transform.ItemSizeLimitExceededExceptionUnmarshaller, 
  AWS.SSM.Transform.TotalSizeLimitExceededExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IPutComplianceItemsResponseUnmarshaller = IResponseUnmarshaller;
  
  TPutComplianceItemsResponseUnmarshaller = class(TJsonResponseUnmarshaller, IPutComplianceItemsResponseUnmarshaller)
  strict private
    class var FInstance: IPutComplianceItemsResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IPutComplianceItemsResponseUnmarshaller; static;
  end;
  
implementation

{ TPutComplianceItemsResponseUnmarshaller }

function TPutComplianceItemsResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TPutComplianceItemsResponse;
begin
  Response := TPutComplianceItemsResponse.Create;
  try
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TPutComplianceItemsResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'ComplianceTypeCountLimitExceededException' then
          Exit(TComplianceTypeCountLimitExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InternalServerErrorException' then
          Exit(TInternalServerErrorExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidItemContentException' then
          Exit(TInvalidItemContentExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidResourceIdException' then
          Exit(TInvalidResourceIdExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidResourceTypeException' then
          Exit(TInvalidResourceTypeExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ItemSizeLimitExceededException' then
          Exit(TItemSizeLimitExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'TotalSizeLimitExceededException' then
          Exit(TTotalSizeLimitExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TPutComplianceItemsResponseUnmarshaller.Create;
begin
  FInstance := TPutComplianceItemsResponseUnmarshaller.Create;
end;

class function TPutComplianceItemsResponseUnmarshaller.Instance: IPutComplianceItemsResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
