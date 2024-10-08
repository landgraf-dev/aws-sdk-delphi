unit AWS.SSM.Transform.ListOpsItemRelatedItemsResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.ListOpsItemRelatedItemsResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.OpsItemRelatedItemSummaryUnmarshaller, 
  AWS.SSM.Model.OpsItemRelatedItemSummary, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.OpsItemInvalidParameterExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IListOpsItemRelatedItemsResponseUnmarshaller = IResponseUnmarshaller;
  
  TListOpsItemRelatedItemsResponseUnmarshaller = class(TJsonResponseUnmarshaller, IListOpsItemRelatedItemsResponseUnmarshaller)
  strict private
    class var FInstance: IListOpsItemRelatedItemsResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IListOpsItemRelatedItemsResponseUnmarshaller; static;
  end;
  
implementation

{ TListOpsItemRelatedItemsResponseUnmarshaller }

function TListOpsItemRelatedItemsResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TListOpsItemRelatedItemsResponse;
begin
  Response := TListOpsItemRelatedItemsResponse.Create;
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
        var Unmarshaller := TJsonObjectListUnmarshaller<TOpsItemRelatedItemSummary, IOpsItemRelatedItemSummaryUnmarshaller>.JsonNew(TOpsItemRelatedItemSummaryUnmarshaller.JsonInstance);
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

function TListOpsItemRelatedItemsResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TListOpsItemRelatedItemsResponseUnmarshaller.Create;
begin
  FInstance := TListOpsItemRelatedItemsResponseUnmarshaller.Create;
end;

class function TListOpsItemRelatedItemsResponseUnmarshaller.Instance: IListOpsItemRelatedItemsResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
