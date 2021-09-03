unit AWS.Rekognition.Transform.GetSegmentDetectionResponseUnmarshaller;

interface

uses
  AWS.Rekognition.Model.GetSegmentDetectionResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Rekognition.Transform.AudioMetadataUnmarshaller, 
  AWS.Rekognition.Model.AudioMetadata, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Rekognition.Transform.SegmentDetectionUnmarshaller, 
  AWS.Rekognition.Model.SegmentDetection, 
  AWS.Rekognition.Transform.SegmentTypeInfoUnmarshaller, 
  AWS.Rekognition.Model.SegmentTypeInfo, 
  AWS.Rekognition.Transform.VideoMetadataUnmarshaller, 
  AWS.Rekognition.Model.VideoMetadata, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.Rekognition.Transform.AccessDeniedExceptionUnmarshaller, 
  AWS.Rekognition.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.Rekognition.Transform.InvalidPaginationTokenExceptionUnmarshaller, 
  AWS.Rekognition.Transform.InvalidParameterExceptionUnmarshaller, 
  AWS.Rekognition.Transform.ProvisionedThroughputExceededExceptionUnmarshaller, 
  AWS.Rekognition.Transform.ResourceNotFoundExceptionUnmarshaller, 
  AWS.Rekognition.Transform.ThrottlingExceptionUnmarshaller, 
  AWS.Rekognition.Exception;

type
  IGetSegmentDetectionResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetSegmentDetectionResponseUnmarshaller = class(TJsonResponseUnmarshaller, IGetSegmentDetectionResponseUnmarshaller)
  strict private
    class var FInstance: IGetSegmentDetectionResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetSegmentDetectionResponseUnmarshaller; static;
  end;
  
implementation

{ TGetSegmentDetectionResponseUnmarshaller }

function TGetSegmentDetectionResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetSegmentDetectionResponse;
begin
  Response := TGetSegmentDetectionResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('AudioMetadata', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TAudioMetadata, IAudioMetadataUnmarshaller>.JsonNew(TAudioMetadataUnmarshaller.JsonInstance);
        Response.AudioMetadata := Unmarshaller.Unmarshall(AContext);
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
      if AContext.TestExpression('Segments', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TSegmentDetection, ISegmentDetectionUnmarshaller>.JsonNew(TSegmentDetectionUnmarshaller.JsonInstance);
        Response.Segments := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SelectedSegmentTypes', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TSegmentTypeInfo, ISegmentTypeInfoUnmarshaller>.JsonNew(TSegmentTypeInfoUnmarshaller.JsonInstance);
        Response.SelectedSegmentTypes := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('StatusMessage', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.StatusMessage := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('VideoMetadata', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TVideoMetadata, IVideoMetadataUnmarshaller>.JsonNew(TVideoMetadataUnmarshaller.JsonInstance);
        Response.VideoMetadata := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TGetSegmentDetectionResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'InvalidPaginationTokenException' then
          Exit(TInvalidPaginationTokenExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidParameterException' then
          Exit(TInvalidParameterExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ProvisionedThroughputExceededException' then
          Exit(TProvisionedThroughputExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ResourceNotFoundException' then
          Exit(TResourceNotFoundExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TGetSegmentDetectionResponseUnmarshaller.Create;
begin
  FInstance := TGetSegmentDetectionResponseUnmarshaller.Create;
end;

class function TGetSegmentDetectionResponseUnmarshaller.Instance: IGetSegmentDetectionResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
