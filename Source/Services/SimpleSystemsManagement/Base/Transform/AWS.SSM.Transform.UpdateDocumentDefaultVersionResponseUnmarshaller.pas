unit AWS.SSM.Transform.UpdateDocumentDefaultVersionResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.UpdateDocumentDefaultVersionResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Transform.DocumentDefaultVersionDescriptionUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidDocumentExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidDocumentSchemaVersionExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidDocumentVersionExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IUpdateDocumentDefaultVersionResponseUnmarshaller = IResponseUnmarshaller;
  
  TUpdateDocumentDefaultVersionResponseUnmarshaller = class(TJsonResponseUnmarshaller, IUpdateDocumentDefaultVersionResponseUnmarshaller)
  strict private
    class var FInstance: IUpdateDocumentDefaultVersionResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IUpdateDocumentDefaultVersionResponseUnmarshaller; static;
  end;
  
implementation

{ TUpdateDocumentDefaultVersionResponseUnmarshaller }

function TUpdateDocumentDefaultVersionResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TUpdateDocumentDefaultVersionResponse;
begin
  Response := TUpdateDocumentDefaultVersionResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('Description', TargetDepth) then
      begin
        var Unmarshaller := TDocumentDefaultVersionDescriptionUnmarshaller.JsonInstance;
        Response.Description := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TUpdateDocumentDefaultVersionResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'InvalidDocumentException' then
          Exit(TInvalidDocumentExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidDocumentSchemaVersionException' then
          Exit(TInvalidDocumentSchemaVersionExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidDocumentVersionException' then
          Exit(TInvalidDocumentVersionExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TUpdateDocumentDefaultVersionResponseUnmarshaller.Create;
begin
  FInstance := TUpdateDocumentDefaultVersionResponseUnmarshaller.Create;
end;

class function TUpdateDocumentDefaultVersionResponseUnmarshaller.Instance: IUpdateDocumentDefaultVersionResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
