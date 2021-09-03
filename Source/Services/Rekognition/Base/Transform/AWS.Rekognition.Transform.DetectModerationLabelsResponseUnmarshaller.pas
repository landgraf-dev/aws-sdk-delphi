unit AWS.Rekognition.Transform.DetectModerationLabelsResponseUnmarshaller;

interface

uses
  AWS.Rekognition.Model.DetectModerationLabelsResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Rekognition.Transform.HumanLoopActivationOutputUnmarshaller, 
  AWS.Rekognition.Transform.ModerationLabelUnmarshaller, 
  AWS.Rekognition.Model.ModerationLabel, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.Rekognition.Transform.AccessDeniedExceptionUnmarshaller, 
  AWS.Rekognition.Transform.HumanLoopQuotaExceededExceptionUnmarshaller, 
  AWS.Rekognition.Transform.ImageTooLargeExceptionUnmarshaller, 
  AWS.Rekognition.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.Rekognition.Transform.InvalidImageFormatExceptionUnmarshaller, 
  AWS.Rekognition.Transform.InvalidParameterExceptionUnmarshaller, 
  AWS.Rekognition.Transform.InvalidS3ObjectExceptionUnmarshaller, 
  AWS.Rekognition.Transform.ProvisionedThroughputExceededExceptionUnmarshaller, 
  AWS.Rekognition.Transform.ThrottlingExceptionUnmarshaller, 
  AWS.Rekognition.Exception;

type
  IDetectModerationLabelsResponseUnmarshaller = IResponseUnmarshaller;
  
  TDetectModerationLabelsResponseUnmarshaller = class(TJsonResponseUnmarshaller, IDetectModerationLabelsResponseUnmarshaller)
  strict private
    class var FInstance: IDetectModerationLabelsResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDetectModerationLabelsResponseUnmarshaller; static;
  end;
  
implementation

{ TDetectModerationLabelsResponseUnmarshaller }

function TDetectModerationLabelsResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDetectModerationLabelsResponse;
begin
  Response := TDetectModerationLabelsResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('HumanLoopActivationOutput', TargetDepth) then
      begin
        var Unmarshaller := THumanLoopActivationOutputUnmarshaller.JsonInstance;
        Response.HumanLoopActivationOutput := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ModerationLabels', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TModerationLabel, IModerationLabelUnmarshaller>.JsonNew(TModerationLabelUnmarshaller.JsonInstance);
        Response.ModerationLabels := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ModerationModelVersion', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.ModerationModelVersion := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TDetectModerationLabelsResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'HumanLoopQuotaExceededException' then
          Exit(THumanLoopQuotaExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ImageTooLargeException' then
          Exit(TImageTooLargeExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InternalServerErrorException' then
          Exit(TInternalServerErrorExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidImageFormatException' then
          Exit(TInvalidImageFormatExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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
    Exit(EAmazonRekognitionException.Create(ErrorResponse.Message, AInnerException, ErrorResponse.ErrorType, ErrorResponse.Code, ErrorResponse.RequestId, AStatusCode));
  finally
    ErrorResponse.Free;
  end;
end;

class constructor TDetectModerationLabelsResponseUnmarshaller.Create;
begin
  FInstance := TDetectModerationLabelsResponseUnmarshaller.Create;
end;

class function TDetectModerationLabelsResponseUnmarshaller.Instance: IDetectModerationLabelsResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
