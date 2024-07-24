unit AWS.SSM.Transform.GetOpsItemResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.GetOpsItemResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Transform.OpsItemUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.OpsItemNotFoundExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IGetOpsItemResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetOpsItemResponseUnmarshaller = class(TJsonResponseUnmarshaller, IGetOpsItemResponseUnmarshaller)
  strict private
    class var FInstance: IGetOpsItemResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetOpsItemResponseUnmarshaller; static;
  end;
  
implementation

{ TGetOpsItemResponseUnmarshaller }

function TGetOpsItemResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetOpsItemResponse;
begin
  Response := TGetOpsItemResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('OpsItem', TargetDepth) then
      begin
        var Unmarshaller := TOpsItemUnmarshaller.JsonInstance;
        Response.OpsItem := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TGetOpsItemResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'OpsItemNotFoundException' then
          Exit(TOpsItemNotFoundExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TGetOpsItemResponseUnmarshaller.Create;
begin
  FInstance := TGetOpsItemResponseUnmarshaller.Create;
end;

class function TGetOpsItemResponseUnmarshaller.Instance: IGetOpsItemResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
