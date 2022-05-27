unit AWS.Textract.Transform.AnalyzeExpenseResponseUnmarshaller;

interface

uses
  AWS.Textract.Model.AnalyzeExpenseResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Textract.Transform.DocumentMetadataUnmarshaller, 
  AWS.Textract.Transform.ExpenseDocumentUnmarshaller, 
  AWS.Textract.Model.ExpenseDocument, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.Textract.Transform.AccessDeniedExceptionUnmarshaller, 
  AWS.Textract.Transform.BadDocumentExceptionUnmarshaller, 
  AWS.Textract.Transform.DocumentTooLargeExceptionUnmarshaller, 
  AWS.Textract.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.Textract.Transform.InvalidParameterExceptionUnmarshaller, 
  AWS.Textract.Transform.InvalidS3ObjectExceptionUnmarshaller, 
  AWS.Textract.Transform.ProvisionedThroughputExceededExceptionUnmarshaller, 
  AWS.Textract.Transform.ThrottlingExceptionUnmarshaller, 
  AWS.Textract.Transform.UnsupportedDocumentExceptionUnmarshaller, 
  AWS.Textract.Exception;

type
  IAnalyzeExpenseResponseUnmarshaller = IResponseUnmarshaller;
  
  TAnalyzeExpenseResponseUnmarshaller = class(TJsonResponseUnmarshaller, IAnalyzeExpenseResponseUnmarshaller)
  strict private
    class var FInstance: IAnalyzeExpenseResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IAnalyzeExpenseResponseUnmarshaller; static;
  end;
  
implementation

{ TAnalyzeExpenseResponseUnmarshaller }

function TAnalyzeExpenseResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TAnalyzeExpenseResponse;
begin
  Response := TAnalyzeExpenseResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('DocumentMetadata', TargetDepth) then
      begin
        var Unmarshaller := TDocumentMetadataUnmarshaller.JsonInstance;
        Response.DocumentMetadata := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ExpenseDocuments', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TExpenseDocument, IExpenseDocumentUnmarshaller>.JsonNew(TExpenseDocumentUnmarshaller.JsonInstance);
        Response.ExpenseDocuments := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TAnalyzeExpenseResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'AccessDeniedException' then
          Exit(TAccessDeniedExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'BadDocumentException' then
          Exit(TBadDocumentExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'DocumentTooLargeException' then
          Exit(TDocumentTooLargeExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InternalServerErrorException' then
          Exit(TInternalServerErrorExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidParameterException' then
          Exit(TInvalidParameterExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidS3ObjectException' then
          Exit(TInvalidS3ObjectExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ProvisionedThroughputExceededException' then
          Exit(TProvisionedThroughputExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ThrottlingException' then
          Exit(TThrottlingExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'UnsupportedDocumentException' then
          Exit(TUnsupportedDocumentExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
      finally
        ContextCopy.Free;
      end;
    finally
      StreamCopy.Free;
    end;
    Exit(EAmazonTextractException.Create(ErrorResponse.Message, AInnerException, ErrorResponse.ErrorType, ErrorResponse.Code, ErrorResponse.RequestId, AStatusCode));
  finally
    ErrorResponse.Free;
  end;
end;

class constructor TAnalyzeExpenseResponseUnmarshaller.Create;
begin
  FInstance := TAnalyzeExpenseResponseUnmarshaller.Create;
end;

class function TAnalyzeExpenseResponseUnmarshaller.Instance: IAnalyzeExpenseResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
