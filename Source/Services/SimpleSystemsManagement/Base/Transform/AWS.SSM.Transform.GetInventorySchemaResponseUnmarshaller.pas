unit AWS.SSM.Transform.GetInventorySchemaResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.GetInventorySchemaResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.InventoryItemSchemaUnmarshaller, 
  AWS.SSM.Model.InventoryItemSchema, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidNextTokenExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidTypeNameExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IGetInventorySchemaResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetInventorySchemaResponseUnmarshaller = class(TJsonResponseUnmarshaller, IGetInventorySchemaResponseUnmarshaller)
  strict private
    class var FInstance: IGetInventorySchemaResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetInventorySchemaResponseUnmarshaller; static;
  end;
  
implementation

{ TGetInventorySchemaResponseUnmarshaller }

function TGetInventorySchemaResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetInventorySchemaResponse;
begin
  Response := TGetInventorySchemaResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('NextToken', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.NextToken := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Schemas', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TInventoryItemSchema, IInventoryItemSchemaUnmarshaller>.JsonNew(TInventoryItemSchemaUnmarshaller.JsonInstance);
        Response.Schemas := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TGetInventorySchemaResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TGetInventorySchemaResponseUnmarshaller.Create;
begin
  FInstance := TGetInventorySchemaResponseUnmarshaller.Create;
end;

class function TGetInventorySchemaResponseUnmarshaller.Instance: IGetInventorySchemaResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
