unit AWS.SSM.Transform.DescribeInstancePatchStatesForPatchGroupResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.DescribeInstancePatchStatesForPatchGroupResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Transform.InstancePatchStateUnmarshaller, 
  AWS.SSM.Model.InstancePatchState, 
  AWS.Transform.SimpleTypeUnmarshaller, 
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
  IDescribeInstancePatchStatesForPatchGroupResponseUnmarshaller = IResponseUnmarshaller;
  
  TDescribeInstancePatchStatesForPatchGroupResponseUnmarshaller = class(TJsonResponseUnmarshaller, IDescribeInstancePatchStatesForPatchGroupResponseUnmarshaller)
  strict private
    class var FInstance: IDescribeInstancePatchStatesForPatchGroupResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDescribeInstancePatchStatesForPatchGroupResponseUnmarshaller; static;
  end;
  
implementation

{ TDescribeInstancePatchStatesForPatchGroupResponseUnmarshaller }

function TDescribeInstancePatchStatesForPatchGroupResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDescribeInstancePatchStatesForPatchGroupResponse;
begin
  Response := TDescribeInstancePatchStatesForPatchGroupResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('InstancePatchStates', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TInstancePatchState, IInstancePatchStateUnmarshaller>.JsonNew(TInstancePatchStateUnmarshaller.JsonInstance);
        Response.InstancePatchStates := Unmarshaller.Unmarshall(AContext);
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

function TDescribeInstancePatchStatesForPatchGroupResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TDescribeInstancePatchStatesForPatchGroupResponseUnmarshaller.Create;
begin
  FInstance := TDescribeInstancePatchStatesForPatchGroupResponseUnmarshaller.Create;
end;

class function TDescribeInstancePatchStatesForPatchGroupResponseUnmarshaller.Instance: IDescribeInstancePatchStatesForPatchGroupResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
