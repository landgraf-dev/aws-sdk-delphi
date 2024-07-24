unit AWS.SSM.Transform.DescribeOpsItemsResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.DescribeOpsItemsResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.OpsItemSummaryUnmarshaller, 
  AWS.SSM.Model.OpsItemSummary, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IDescribeOpsItemsResponseUnmarshaller = IResponseUnmarshaller;
  
  TDescribeOpsItemsResponseUnmarshaller = class(TJsonResponseUnmarshaller, IDescribeOpsItemsResponseUnmarshaller)
  strict private
    class var FInstance: IDescribeOpsItemsResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDescribeOpsItemsResponseUnmarshaller; static;
  end;
  
implementation

{ TDescribeOpsItemsResponseUnmarshaller }

function TDescribeOpsItemsResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDescribeOpsItemsResponse;
begin
  Response := TDescribeOpsItemsResponse.Create;
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
      if AContext.TestExpression('OpsItemSummaries', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TOpsItemSummary, IOpsItemSummaryUnmarshaller>.JsonNew(TOpsItemSummaryUnmarshaller.JsonInstance);
        Response.OpsItemSummaries := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TDescribeOpsItemsResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TDescribeOpsItemsResponseUnmarshaller.Create;
begin
  FInstance := TDescribeOpsItemsResponseUnmarshaller.Create;
end;

class function TDescribeOpsItemsResponseUnmarshaller.Instance: IDescribeOpsItemsResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
