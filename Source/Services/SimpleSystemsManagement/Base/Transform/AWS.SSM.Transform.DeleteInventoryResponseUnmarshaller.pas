unit AWS.SSM.Transform.DeleteInventoryResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.DeleteInventoryResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.InventoryDeletionSummaryUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidDeleteInventoryParametersExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidInventoryRequestExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidOptionExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidTypeNameExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IDeleteInventoryResponseUnmarshaller = IResponseUnmarshaller;
  
  TDeleteInventoryResponseUnmarshaller = class(TJsonResponseUnmarshaller, IDeleteInventoryResponseUnmarshaller)
  strict private
    class var FInstance: IDeleteInventoryResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDeleteInventoryResponseUnmarshaller; static;
  end;
  
implementation

{ TDeleteInventoryResponseUnmarshaller }

function TDeleteInventoryResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDeleteInventoryResponse;
begin
  Response := TDeleteInventoryResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('DeletionId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.DeletionId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('DeletionSummary', TargetDepth) then
      begin
        var Unmarshaller := TInventoryDeletionSummaryUnmarshaller.JsonInstance;
        Response.DeletionSummary := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TypeName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.TypeName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TDeleteInventoryResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'InvalidDeleteInventoryParametersException' then
          Exit(TInvalidDeleteInventoryParametersExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidInventoryRequestException' then
          Exit(TInvalidInventoryRequestExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidOptionException' then
          Exit(TInvalidOptionExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidTypeNameException' then
          Exit(TInvalidTypeNameExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TDeleteInventoryResponseUnmarshaller.Create;
begin
  FInstance := TDeleteInventoryResponseUnmarshaller.Create;
end;

class function TDeleteInventoryResponseUnmarshaller.Instance: IDeleteInventoryResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
