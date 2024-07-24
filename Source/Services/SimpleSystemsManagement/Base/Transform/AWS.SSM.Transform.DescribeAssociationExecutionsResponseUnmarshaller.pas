unit AWS.SSM.Transform.DescribeAssociationExecutionsResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.DescribeAssociationExecutionsResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Transform.AssociationExecutionUnmarshaller, 
  AWS.SSM.Model.AssociationExecution, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.AssociationDoesNotExistExceptionUnmarshaller, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidNextTokenExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IDescribeAssociationExecutionsResponseUnmarshaller = IResponseUnmarshaller;
  
  TDescribeAssociationExecutionsResponseUnmarshaller = class(TJsonResponseUnmarshaller, IDescribeAssociationExecutionsResponseUnmarshaller)
  strict private
    class var FInstance: IDescribeAssociationExecutionsResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDescribeAssociationExecutionsResponseUnmarshaller; static;
  end;
  
implementation

{ TDescribeAssociationExecutionsResponseUnmarshaller }

function TDescribeAssociationExecutionsResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDescribeAssociationExecutionsResponse;
begin
  Response := TDescribeAssociationExecutionsResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('AssociationExecutions', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TAssociationExecution, IAssociationExecutionUnmarshaller>.JsonNew(TAssociationExecutionUnmarshaller.JsonInstance);
        Response.AssociationExecutions := Unmarshaller.Unmarshall(AContext);
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

function TDescribeAssociationExecutionsResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'AssociationDoesNotExistException' then
          Exit(TAssociationDoesNotExistExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InternalServerErrorException' then
          Exit(TInternalServerErrorExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TDescribeAssociationExecutionsResponseUnmarshaller.Create;
begin
  FInstance := TDescribeAssociationExecutionsResponseUnmarshaller.Create;
end;

class function TDescribeAssociationExecutionsResponseUnmarshaller.Instance: IDescribeAssociationExecutionsResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
