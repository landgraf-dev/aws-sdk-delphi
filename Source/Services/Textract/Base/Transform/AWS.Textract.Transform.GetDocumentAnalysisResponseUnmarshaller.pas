unit AWS.Textract.Transform.GetDocumentAnalysisResponseUnmarshaller;

interface

uses
  AWS.Textract.Model.GetDocumentAnalysisResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Textract.Transform.BlockUnmarshaller, 
  AWS.Textract.Model.Block, 
  AWS.Textract.Transform.DocumentMetadataUnmarshaller, 
  AWS.Textract.Transform.WarningUnmarshaller, 
  AWS.Textract.Model.Warning, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.Textract.Transform.AccessDeniedExceptionUnmarshaller, 
  AWS.Textract.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.Textract.Transform.InvalidJobIdExceptionUnmarshaller, 
  AWS.Textract.Transform.InvalidKMSKeyExceptionUnmarshaller, 
  AWS.Textract.Transform.InvalidParameterExceptionUnmarshaller, 
  AWS.Textract.Transform.InvalidS3ObjectExceptionUnmarshaller, 
  AWS.Textract.Transform.ProvisionedThroughputExceededExceptionUnmarshaller, 
  AWS.Textract.Transform.ThrottlingExceptionUnmarshaller, 
  AWS.Textract.Exception;

type
  IGetDocumentAnalysisResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetDocumentAnalysisResponseUnmarshaller = class(TJsonResponseUnmarshaller, IGetDocumentAnalysisResponseUnmarshaller)
  strict private
    class var FInstance: IGetDocumentAnalysisResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetDocumentAnalysisResponseUnmarshaller; static;
  end;
  
implementation

{ TGetDocumentAnalysisResponseUnmarshaller }

function TGetDocumentAnalysisResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetDocumentAnalysisResponse;
begin
  Response := TGetDocumentAnalysisResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('AnalyzeDocumentModelVersion', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.AnalyzeDocumentModelVersion := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Blocks', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TBlock, IBlockUnmarshaller>.JsonNew(TBlockUnmarshaller.JsonInstance);
        Response.Blocks := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('DocumentMetadata', TargetDepth) then
      begin
        var Unmarshaller := TDocumentMetadataUnmarshaller.JsonInstance;
        Response.DocumentMetadata := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('JobStatus', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.JobStatus := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('NextToken', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.NextToken := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('StatusMessage', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.StatusMessage := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Warnings', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TWarning, IWarningUnmarshaller>.JsonNew(TWarningUnmarshaller.JsonInstance);
        Response.Warnings := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TGetDocumentAnalysisResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'InternalServerErrorException' then
          Exit(TInternalServerErrorExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidJobIdException' then
          Exit(TInvalidJobIdExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidKMSKeyException' then
          Exit(TInvalidKMSKeyExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidParameterException' then
          Exit(TInvalidParameterExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidS3ObjectException' then
          Exit(TInvalidS3ObjectExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ProvisionedThroughputExceededException' then
          Exit(TProvisionedThroughputExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ThrottlingException' then
          Exit(TThrottlingExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TGetDocumentAnalysisResponseUnmarshaller.Create;
begin
  FInstance := TGetDocumentAnalysisResponseUnmarshaller.Create;
end;

class function TGetDocumentAnalysisResponseUnmarshaller.Instance: IGetDocumentAnalysisResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
