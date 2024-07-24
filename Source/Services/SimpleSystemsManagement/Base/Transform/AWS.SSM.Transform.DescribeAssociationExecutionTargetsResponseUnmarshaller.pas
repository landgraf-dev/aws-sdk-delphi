unit AWS.SSM.Transform.DescribeAssociationExecutionTargetsResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.DescribeAssociationExecutionTargetsResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Transform.AssociationExecutionTargetUnmarshaller, 
  AWS.SSM.Model.AssociationExecutionTarget, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.AssociationDoesNotExistExceptionUnmarshaller, 
  AWS.SSM.Transform.AssociationExecutionDoesNotExistExceptionUnmarshaller, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidNextTokenExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IDescribeAssociationExecutionTargetsResponseUnmarshaller = IResponseUnmarshaller;
  
  TDescribeAssociationExecutionTargetsResponseUnmarshaller = class(TJsonResponseUnmarshaller, IDescribeAssociationExecutionTargetsResponseUnmarshaller)
  strict private
    class var FInstance: IDescribeAssociationExecutionTargetsResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDescribeAssociationExecutionTargetsResponseUnmarshaller; static;
  end;
  
implementation

{ TDescribeAssociationExecutionTargetsResponseUnmarshaller }

function TDescribeAssociationExecutionTargetsResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDescribeAssociationExecutionTargetsResponse;
begin
  Response := TDescribeAssociationExecutionTargetsResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('AssociationExecutionTargets', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TAssociationExecutionTarget, IAssociationExecutionTargetUnmarshaller>.JsonNew(TAssociationExecutionTargetUnmarshaller.JsonInstance);
        Response.AssociationExecutionTargets := Unmarshaller.Unmarshall(AContext);
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

function TDescribeAssociationExecutionTargetsResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'AssociationExecutionDoesNotExistException' then
          Exit(TAssociationExecutionDoesNotExistExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TDescribeAssociationExecutionTargetsResponseUnmarshaller.Create;
begin
  FInstance := TDescribeAssociationExecutionTargetsResponseUnmarshaller.Create;
end;

class function TDescribeAssociationExecutionTargetsResponseUnmarshaller.Instance: IDescribeAssociationExecutionTargetsResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
