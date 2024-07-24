unit AWS.SSM.Transform.RegisterPatchBaselineForPatchGroupResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.RegisterPatchBaselineForPatchGroupResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.AlreadyExistsExceptionUnmarshaller, 
  AWS.SSM.Transform.DoesNotExistExceptionUnmarshaller, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidResourceIdExceptionUnmarshaller, 
  AWS.SSM.Transform.ResourceLimitExceededExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IRegisterPatchBaselineForPatchGroupResponseUnmarshaller = IResponseUnmarshaller;
  
  TRegisterPatchBaselineForPatchGroupResponseUnmarshaller = class(TJsonResponseUnmarshaller, IRegisterPatchBaselineForPatchGroupResponseUnmarshaller)
  strict private
    class var FInstance: IRegisterPatchBaselineForPatchGroupResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IRegisterPatchBaselineForPatchGroupResponseUnmarshaller; static;
  end;
  
implementation

{ TRegisterPatchBaselineForPatchGroupResponseUnmarshaller }

function TRegisterPatchBaselineForPatchGroupResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TRegisterPatchBaselineForPatchGroupResponse;
begin
  Response := TRegisterPatchBaselineForPatchGroupResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('BaselineId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.BaselineId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('PatchGroup', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.PatchGroup := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TRegisterPatchBaselineForPatchGroupResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'AlreadyExistsException' then
          Exit(TAlreadyExistsExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'DoesNotExistException' then
          Exit(TDoesNotExistExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InternalServerErrorException' then
          Exit(TInternalServerErrorExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidResourceIdException' then
          Exit(TInvalidResourceIdExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ResourceLimitExceededException' then
          Exit(TResourceLimitExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TRegisterPatchBaselineForPatchGroupResponseUnmarshaller.Create;
begin
  FInstance := TRegisterPatchBaselineForPatchGroupResponseUnmarshaller.Create;
end;

class function TRegisterPatchBaselineForPatchGroupResponseUnmarshaller.Instance: IRegisterPatchBaselineForPatchGroupResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
