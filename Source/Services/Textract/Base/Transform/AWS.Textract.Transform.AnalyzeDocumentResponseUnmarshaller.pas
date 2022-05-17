unit AWS.Textract.Transform.AnalyzeDocumentResponseUnmarshaller;

interface

uses
  AWS.Textract.Model.AnalyzeDocumentResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Textract.Transform.BlockUnmarshaller, 
  AWS.Textract.Model.Block, 
  AWS.Textract.Transform.DocumentMetadataUnmarshaller, 
  AWS.Textract.Transform.HumanLoopActivationOutputUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.Textract.Transform.AccessDeniedExceptionUnmarshaller, 
  AWS.Textract.Transform.BadDocumentExceptionUnmarshaller, 
  AWS.Textract.Transform.DocumentTooLargeExceptionUnmarshaller, 
  AWS.Textract.Transform.HumanLoopQuotaExceededExceptionUnmarshaller, 
  AWS.Textract.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.Textract.Transform.InvalidParameterExceptionUnmarshaller, 
  AWS.Textract.Transform.InvalidS3ObjectExceptionUnmarshaller, 
  AWS.Textract.Transform.ProvisionedThroughputExceededExceptionUnmarshaller, 
  AWS.Textract.Transform.ThrottlingExceptionUnmarshaller, 
  AWS.Textract.Transform.UnsupportedDocumentExceptionUnmarshaller, 
  AWS.Textract.Exception;

type
  IAnalyzeDocumentResponseUnmarshaller = IResponseUnmarshaller;
  
  TAnalyzeDocumentResponseUnmarshaller = class(TJsonResponseUnmarshaller, IAnalyzeDocumentResponseUnmarshaller)
  strict private
    class var FInstance: IAnalyzeDocumentResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IAnalyzeDocumentResponseUnmarshaller; static;
  end;
  
implementation

{ TAnalyzeDocumentResponseUnmarshaller }

function TAnalyzeDocumentResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TAnalyzeDocumentResponse;
begin
  Response := TAnalyzeDocumentResponse.Create;
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
      if AContext.TestExpression('HumanLoopActivationOutput', TargetDepth) then
      begin
        var Unmarshaller := THumanLoopActivationOutputUnmarshaller.JsonInstance;
        Response.HumanLoopActivationOutput := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TAnalyzeDocumentResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'HumanLoopQuotaExceededException' then
          Exit(THumanLoopQuotaExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TAnalyzeDocumentResponseUnmarshaller.Create;
begin
  FInstance := TAnalyzeDocumentResponseUnmarshaller.Create;
end;

class function TAnalyzeDocumentResponseUnmarshaller.Instance: IAnalyzeDocumentResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
