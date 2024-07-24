unit AWS.SSM.Transform.CancelCommandResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.CancelCommandResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.DuplicateInstanceIdExceptionUnmarshaller, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidCommandIdExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidInstanceIdExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  ICancelCommandResponseUnmarshaller = IResponseUnmarshaller;
  
  TCancelCommandResponseUnmarshaller = class(TJsonResponseUnmarshaller, ICancelCommandResponseUnmarshaller)
  strict private
    class var FInstance: ICancelCommandResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: ICancelCommandResponseUnmarshaller; static;
  end;
  
implementation

{ TCancelCommandResponseUnmarshaller }

function TCancelCommandResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TCancelCommandResponse;
begin
  Response := TCancelCommandResponse.Create;
  try
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TCancelCommandResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'DuplicateInstanceIdException' then
          Exit(TDuplicateInstanceIdExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InternalServerErrorException' then
          Exit(TInternalServerErrorExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidCommandIdException' then
          Exit(TInvalidCommandIdExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidInstanceIdException' then
          Exit(TInvalidInstanceIdExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TCancelCommandResponseUnmarshaller.Create;
begin
  FInstance := TCancelCommandResponseUnmarshaller.Create;
end;

class function TCancelCommandResponseUnmarshaller.Instance: ICancelCommandResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
