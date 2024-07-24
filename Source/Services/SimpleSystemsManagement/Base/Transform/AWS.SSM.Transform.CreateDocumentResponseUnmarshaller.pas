unit AWS.SSM.Transform.CreateDocumentResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.CreateDocumentResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Transform.DocumentDescriptionUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.DocumentAlreadyExistsExceptionUnmarshaller, 
  AWS.SSM.Transform.DocumentLimitExceededExceptionUnmarshaller, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidDocumentContentExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidDocumentSchemaVersionExceptionUnmarshaller, 
  AWS.SSM.Transform.MaxDocumentSizeExceededExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  ICreateDocumentResponseUnmarshaller = IResponseUnmarshaller;
  
  TCreateDocumentResponseUnmarshaller = class(TJsonResponseUnmarshaller, ICreateDocumentResponseUnmarshaller)
  strict private
    class var FInstance: ICreateDocumentResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: ICreateDocumentResponseUnmarshaller; static;
  end;
  
implementation

{ TCreateDocumentResponseUnmarshaller }

function TCreateDocumentResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TCreateDocumentResponse;
begin
  Response := TCreateDocumentResponse.Create;
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

function TCreateDocumentResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'DocumentAlreadyExistsException' then
          Exit(TDocumentAlreadyExistsExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'DocumentLimitExceededException' then
          Exit(TDocumentLimitExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InternalServerErrorException' then
          Exit(TInternalServerErrorExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidDocumentContentException' then
          Exit(TInvalidDocumentContentExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidDocumentSchemaVersionException' then
          Exit(TInvalidDocumentSchemaVersionExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TCreateDocumentResponseUnmarshaller.Create;
begin
  FInstance := TCreateDocumentResponseUnmarshaller.Create;
end;

class function TCreateDocumentResponseUnmarshaller.Instance: ICreateDocumentResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
