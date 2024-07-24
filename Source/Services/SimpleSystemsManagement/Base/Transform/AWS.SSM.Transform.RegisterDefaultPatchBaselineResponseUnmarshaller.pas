unit AWS.SSM.Transform.RegisterDefaultPatchBaselineResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.RegisterDefaultPatchBaselineResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.DoesNotExistExceptionUnmarshaller, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidResourceIdExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IRegisterDefaultPatchBaselineResponseUnmarshaller = IResponseUnmarshaller;
  
  TRegisterDefaultPatchBaselineResponseUnmarshaller = class(TJsonResponseUnmarshaller, IRegisterDefaultPatchBaselineResponseUnmarshaller)
  strict private
    class var FInstance: IRegisterDefaultPatchBaselineResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IRegisterDefaultPatchBaselineResponseUnmarshaller; static;
  end;
  
implementation

{ TRegisterDefaultPatchBaselineResponseUnmarshaller }

function TRegisterDefaultPatchBaselineResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TRegisterDefaultPatchBaselineResponse;
begin
  Response := TRegisterDefaultPatchBaselineResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('BaselineId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.BaselineId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TRegisterDefaultPatchBaselineResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'DoesNotExistException' then
          Exit(TDoesNotExistExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InternalServerErrorException' then
          Exit(TInternalServerErrorExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidResourceIdException' then
          Exit(TInvalidResourceIdExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TRegisterDefaultPatchBaselineResponseUnmarshaller.Create;
begin
  FInstance := TRegisterDefaultPatchBaselineResponseUnmarshaller.Create;
end;

class function TRegisterDefaultPatchBaselineResponseUnmarshaller.Instance: IRegisterDefaultPatchBaselineResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
