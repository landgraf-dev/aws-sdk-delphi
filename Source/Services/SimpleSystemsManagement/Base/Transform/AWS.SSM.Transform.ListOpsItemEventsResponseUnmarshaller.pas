unit AWS.SSM.Transform.ListOpsItemEventsResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.ListOpsItemEventsResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.OpsItemEventSummaryUnmarshaller, 
  AWS.SSM.Model.OpsItemEventSummary, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.OpsItemInvalidParameterExceptionUnmarshaller, 
  AWS.SSM.Transform.OpsItemLimitExceededExceptionUnmarshaller, 
  AWS.SSM.Transform.OpsItemNotFoundExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IListOpsItemEventsResponseUnmarshaller = IResponseUnmarshaller;
  
  TListOpsItemEventsResponseUnmarshaller = class(TJsonResponseUnmarshaller, IListOpsItemEventsResponseUnmarshaller)
  strict private
    class var FInstance: IListOpsItemEventsResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IListOpsItemEventsResponseUnmarshaller; static;
  end;
  
implementation

{ TListOpsItemEventsResponseUnmarshaller }

function TListOpsItemEventsResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TListOpsItemEventsResponse;
begin
  Response := TListOpsItemEventsResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('NextToken', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.NextToken := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Summaries', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TOpsItemEventSummary, IOpsItemEventSummaryUnmarshaller>.JsonNew(TOpsItemEventSummaryUnmarshaller.JsonInstance);
        Response.Summaries := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TListOpsItemEventsResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TListOpsItemEventsResponseUnmarshaller.Create;
begin
  FInstance := TListOpsItemEventsResponseUnmarshaller.Create;
end;

class function TListOpsItemEventsResponseUnmarshaller.Instance: IListOpsItemEventsResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
