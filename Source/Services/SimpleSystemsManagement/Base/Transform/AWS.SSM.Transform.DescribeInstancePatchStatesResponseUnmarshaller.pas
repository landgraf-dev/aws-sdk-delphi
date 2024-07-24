unit AWS.SSM.Transform.DescribeInstancePatchStatesResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.DescribeInstancePatchStatesResponse, 
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
  AWS.SSM.Transform.InvalidNextTokenExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IDescribeInstancePatchStatesResponseUnmarshaller = IResponseUnmarshaller;
  
  TDescribeInstancePatchStatesResponseUnmarshaller = class(TJsonResponseUnmarshaller, IDescribeInstancePatchStatesResponseUnmarshaller)
  strict private
    class var FInstance: IDescribeInstancePatchStatesResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDescribeInstancePatchStatesResponseUnmarshaller; static;
  end;
  
implementation

{ TDescribeInstancePatchStatesResponseUnmarshaller }

function TDescribeInstancePatchStatesResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDescribeInstancePatchStatesResponse;
begin
  Response := TDescribeInstancePatchStatesResponse.Create;
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

function TDescribeInstancePatchStatesResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TDescribeInstancePatchStatesResponseUnmarshaller.Create;
begin
  FInstance := TDescribeInstancePatchStatesResponseUnmarshaller.Create;
end;

class function TDescribeInstancePatchStatesResponseUnmarshaller.Instance: IDescribeInstancePatchStatesResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
