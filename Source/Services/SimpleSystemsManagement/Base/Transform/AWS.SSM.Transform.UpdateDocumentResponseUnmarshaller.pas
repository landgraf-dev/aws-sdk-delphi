unit AWS.SSM.Transform.UpdateDocumentResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.UpdateDocumentResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Transform.DocumentDescriptionUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.DocumentVersionLimitExceededExceptionUnmarshaller, 
  AWS.SSM.Transform.DuplicateDocumentContentExceptionUnmarshaller, 
  AWS.SSM.Transform.DuplicateDocumentVersionNameExceptionUnmarshaller, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidDocumentContentExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidDocumentExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidDocumentOperationExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidDocumentSchemaVersionExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidDocumentVersionExceptionUnmarshaller, 
  AWS.SSM.Transform.MaxDocumentSizeExceededExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IUpdateDocumentResponseUnmarshaller = IResponseUnmarshaller;
  
  TUpdateDocumentResponseUnmarshaller = class(TJsonResponseUnmarshaller, IUpdateDocumentResponseUnmarshaller)
  strict private
    class var FInstance: IUpdateDocumentResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IUpdateDocumentResponseUnmarshaller; static;
  end;
  
implementation

{ TUpdateDocumentResponseUnmarshaller }

function TUpdateDocumentResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TUpdateDocumentResponse;
begin
  Response := TUpdateDocumentResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('DocumentDescription', TargetDepth) then
      begin
        var Unmarshaller := TDocumentDescriptionUnmarshaller.JsonInstance;
        Response.DocumentDescription := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TUpdateDocumentResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'DocumentVersionLimitExceededException' then
          Exit(TDocumentVersionLimitExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'DuplicateDocumentContentException' then
          Exit(TDuplicateDocumentContentExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'DuplicateDocumentVersionNameException' then
          Exit(TDuplicateDocumentVersionNameExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InternalServerErrorException' then
          Exit(TInternalServerErrorExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidDocumentContentException' then
          Exit(TInvalidDocumentContentExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidDocumentException' then
          Exit(TInvalidDocumentExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidDocumentOperationException' then
          Exit(TInvalidDocumentOperationExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidDocumentSchemaVersionException' then
          Exit(TInvalidDocumentSchemaVersionExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidDocumentVersionException' then
          Exit(TInvalidDocumentVersionExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'MaxDocumentSizeExceededException' then
          Exit(TMaxDocumentSizeExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TUpdateDocumentResponseUnmarshaller.Create;
begin
  FInstance := TUpdateDocumentResponseUnmarshaller.Create;
end;

class function TUpdateDocumentResponseUnmarshaller.Instance: IUpdateDocumentResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
