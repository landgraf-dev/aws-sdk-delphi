unit AWS.SSM.Transform.GetOpsSummaryResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.GetOpsSummaryResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Transform.OpsEntityUnmarshaller, 
  AWS.SSM.Model.OpsEntity, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidAggregatorExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidFilterExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidNextTokenExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidTypeNameExceptionUnmarshaller, 
  AWS.SSM.Transform.ResourceDataSyncNotFoundExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IGetOpsSummaryResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetOpsSummaryResponseUnmarshaller = class(TJsonResponseUnmarshaller, IGetOpsSummaryResponseUnmarshaller)
  strict private
    class var FInstance: IGetOpsSummaryResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetOpsSummaryResponseUnmarshaller; static;
  end;
  
implementation

{ TGetOpsSummaryResponseUnmarshaller }

function TGetOpsSummaryResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetOpsSummaryResponse;
begin
  Response := TGetOpsSummaryResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Entities', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TOpsEntity, IOpsEntityUnmarshaller>.JsonNew(TOpsEntityUnmarshaller.JsonInstance);
        Response.Entities := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('NextToken', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.NextToken := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TGetOpsSummaryResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'InvalidAggregatorException' then
          Exit(TInvalidAggregatorExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidFilterException' then
          Exit(TInvalidFilterExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidNextTokenException' then
          Exit(TInvalidNextTokenExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidTypeNameException' then
          Exit(TInvalidTypeNameExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TGetOpsSummaryResponseUnmarshaller.Create;
begin
  FInstance := TGetOpsSummaryResponseUnmarshaller.Create;
end;

class function TGetOpsSummaryResponseUnmarshaller.Instance: IGetOpsSummaryResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
