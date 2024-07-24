unit AWS.SSM.Transform.PutParameterResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.PutParameterResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.HierarchyLevelLimitExceededExceptionUnmarshaller, 
  AWS.SSM.Transform.HierarchyTypeMismatchExceptionUnmarshaller, 
  AWS.SSM.Transform.IncompatiblePolicyExceptionUnmarshaller, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidAllowedPatternExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidKeyIdExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidPolicyAttributeExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidPolicyTypeExceptionUnmarshaller, 
  AWS.SSM.Transform.ParameterAlreadyExistsExceptionUnmarshaller, 
  AWS.SSM.Transform.ParameterLimitExceededExceptionUnmarshaller, 
  AWS.SSM.Transform.ParameterMaxVersionLimitExceededExceptionUnmarshaller, 
  AWS.SSM.Transform.ParameterPatternMismatchExceptionUnmarshaller, 
  AWS.SSM.Transform.PoliciesLimitExceededExceptionUnmarshaller, 
  AWS.SSM.Transform.TooManyUpdatesExceptionUnmarshaller, 
  AWS.SSM.Transform.UnsupportedParameterTypeExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IPutParameterResponseUnmarshaller = IResponseUnmarshaller;
  
  TPutParameterResponseUnmarshaller = class(TJsonResponseUnmarshaller, IPutParameterResponseUnmarshaller)
  strict private
    class var FInstance: IPutParameterResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IPutParameterResponseUnmarshaller; static;
  end;
  
implementation

{ TPutParameterResponseUnmarshaller }

function TPutParameterResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TPutParameterResponse;
begin
  Response := TPutParameterResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Tier', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.Tier := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Version', TargetDepth) then
      begin
        var Unmarshaller := TInt64Unmarshaller.JsonInstance;
        Response.Version := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TPutParameterResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'HierarchyLevelLimitExceededException' then
          Exit(THierarchyLevelLimitExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'HierarchyTypeMismatchException' then
          Exit(THierarchyTypeMismatchExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'IncompatiblePolicyException' then
          Exit(TIncompatiblePolicyExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InternalServerErrorException' then
          Exit(TInternalServerErrorExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidAllowedPatternException' then
          Exit(TInvalidAllowedPatternExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidKeyIdException' then
          Exit(TInvalidKeyIdExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidPolicyAttributeException' then
          Exit(TInvalidPolicyAttributeExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidPolicyTypeException' then
          Exit(TInvalidPolicyTypeExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ParameterAlreadyExistsException' then
          Exit(TParameterAlreadyExistsExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ParameterLimitExceededException' then
          Exit(TParameterLimitExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ParameterMaxVersionLimitExceededException' then
          Exit(TParameterMaxVersionLimitExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ParameterPatternMismatchException' then
          Exit(TParameterPatternMismatchExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'PoliciesLimitExceededException' then
          Exit(TPoliciesLimitExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'TooManyUpdatesException' then
          Exit(TTooManyUpdatesExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'UnsupportedParameterTypeException' then
          Exit(TUnsupportedParameterTypeExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TPutParameterResponseUnmarshaller.Create;
begin
  FInstance := TPutParameterResponseUnmarshaller.Create;
end;

class function TPutParameterResponseUnmarshaller.Instance: IPutParameterResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
