unit AWS.SSM.Transform.DescribeInventoryDeletionsResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.DescribeInventoryDeletionsResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Transform.InventoryDeletionStatusItemUnmarshaller, 
  AWS.SSM.Model.InventoryDeletionStatusItem, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidDeletionIdExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidNextTokenExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IDescribeInventoryDeletionsResponseUnmarshaller = IResponseUnmarshaller;
  
  TDescribeInventoryDeletionsResponseUnmarshaller = class(TJsonResponseUnmarshaller, IDescribeInventoryDeletionsResponseUnmarshaller)
  strict private
    class var FInstance: IDescribeInventoryDeletionsResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDescribeInventoryDeletionsResponseUnmarshaller; static;
  end;
  
implementation

{ TDescribeInventoryDeletionsResponseUnmarshaller }

function TDescribeInventoryDeletionsResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDescribeInventoryDeletionsResponse;
begin
  Response := TDescribeInventoryDeletionsResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('InventoryDeletions', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TInventoryDeletionStatusItem, IInventoryDeletionStatusItemUnmarshaller>.JsonNew(TInventoryDeletionStatusItemUnmarshaller.JsonInstance);
        Response.InventoryDeletions := Unmarshaller.Unmarshall(AContext);
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

function TDescribeInventoryDeletionsResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'InvalidDeletionIdException' then
          Exit(TInvalidDeletionIdExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TDescribeInventoryDeletionsResponseUnmarshaller.Create;
begin
  FInstance := TDescribeInventoryDeletionsResponseUnmarshaller.Create;
end;

class function TDescribeInventoryDeletionsResponseUnmarshaller.Instance: IDescribeInventoryDeletionsResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
