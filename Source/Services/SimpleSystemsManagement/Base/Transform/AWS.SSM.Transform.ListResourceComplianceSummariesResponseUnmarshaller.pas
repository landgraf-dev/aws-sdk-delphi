unit AWS.SSM.Transform.ListResourceComplianceSummariesResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.ListResourceComplianceSummariesResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.ResourceComplianceSummaryItemUnmarshaller, 
  AWS.SSM.Model.ResourceComplianceSummaryItem, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidFilterExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidNextTokenExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IListResourceComplianceSummariesResponseUnmarshaller = IResponseUnmarshaller;
  
  TListResourceComplianceSummariesResponseUnmarshaller = class(TJsonResponseUnmarshaller, IListResourceComplianceSummariesResponseUnmarshaller)
  strict private
    class var FInstance: IListResourceComplianceSummariesResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IListResourceComplianceSummariesResponseUnmarshaller; static;
  end;
  
implementation

{ TListResourceComplianceSummariesResponseUnmarshaller }

function TListResourceComplianceSummariesResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TListResourceComplianceSummariesResponse;
begin
  Response := TListResourceComplianceSummariesResponse.Create;
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
      if AContext.TestExpression('ResourceComplianceSummaryItems', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TResourceComplianceSummaryItem, IResourceComplianceSummaryItemUnmarshaller>.JsonNew(TResourceComplianceSummaryItemUnmarshaller.JsonInstance);
        Response.ResourceComplianceSummaryItems := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TListResourceComplianceSummariesResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'InvalidFilterException' then
          Exit(TInvalidFilterExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidNextTokenException' then
          Exit(TInvalidNextTokenExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TListResourceComplianceSummariesResponseUnmarshaller.Create;
begin
  FInstance := TListResourceComplianceSummariesResponseUnmarshaller.Create;
end;

class function TListResourceComplianceSummariesResponseUnmarshaller.Instance: IListResourceComplianceSummariesResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
