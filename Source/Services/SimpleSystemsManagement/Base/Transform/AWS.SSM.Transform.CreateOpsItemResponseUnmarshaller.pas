unit AWS.SSM.Transform.CreateOpsItemResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.CreateOpsItemResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.OpsItemAlreadyExistsExceptionUnmarshaller, 
  AWS.SSM.Transform.OpsItemInvalidParameterExceptionUnmarshaller, 
  AWS.SSM.Transform.OpsItemLimitExceededExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  ICreateOpsItemResponseUnmarshaller = IResponseUnmarshaller;
  
  TCreateOpsItemResponseUnmarshaller = class(TJsonResponseUnmarshaller, ICreateOpsItemResponseUnmarshaller)
  strict private
    class var FInstance: ICreateOpsItemResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: ICreateOpsItemResponseUnmarshaller; static;
  end;
  
implementation

{ TCreateOpsItemResponseUnmarshaller }

function TCreateOpsItemResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TCreateOpsItemResponse;
begin
  Response := TCreateOpsItemResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('OpsItemId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.OpsItemId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TCreateOpsItemResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'OpsItemAlreadyExistsException' then
          Exit(TOpsItemAlreadyExistsExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'OpsItemInvalidParameterException' then
          Exit(TOpsItemInvalidParameterExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'OpsItemLimitExceededException' then
          Exit(TOpsItemLimitExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TCreateOpsItemResponseUnmarshaller.Create;
begin
  FInstance := TCreateOpsItemResponseUnmarshaller.Create;
end;

class function TCreateOpsItemResponseUnmarshaller.Instance: ICreateOpsItemResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
