unit AWS.Rekognition.Transform.CompareFacesResponseUnmarshaller;

interface

uses
  AWS.Rekognition.Model.CompareFacesResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Rekognition.Transform.CompareFacesMatchUnmarshaller, 
  AWS.Rekognition.Model.CompareFacesMatch, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Rekognition.Transform.ComparedSourceImageFaceUnmarshaller, 
  AWS.Rekognition.Transform.ComparedFaceUnmarshaller, 
  AWS.Rekognition.Model.ComparedFace, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.Rekognition.Transform.AccessDeniedExceptionUnmarshaller, 
  AWS.Rekognition.Transform.ImageTooLargeExceptionUnmarshaller, 
  AWS.Rekognition.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.Rekognition.Transform.InvalidImageFormatExceptionUnmarshaller, 
  AWS.Rekognition.Transform.InvalidParameterExceptionUnmarshaller, 
  AWS.Rekognition.Transform.InvalidS3ObjectExceptionUnmarshaller, 
  AWS.Rekognition.Transform.ProvisionedThroughputExceededExceptionUnmarshaller, 
  AWS.Rekognition.Transform.ThrottlingExceptionUnmarshaller, 
  AWS.Rekognition.Exception;

type
  ICompareFacesResponseUnmarshaller = IResponseUnmarshaller;
  
  TCompareFacesResponseUnmarshaller = class(TJsonResponseUnmarshaller, ICompareFacesResponseUnmarshaller)
  strict private
    class var FInstance: ICompareFacesResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: ICompareFacesResponseUnmarshaller; static;
  end;
  
implementation

{ TCompareFacesResponseUnmarshaller }

function TCompareFacesResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TCompareFacesResponse;
begin
  Response := TCompareFacesResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('FaceMatches', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TCompareFacesMatch, ICompareFacesMatchUnmarshaller>.JsonNew(TCompareFacesMatchUnmarshaller.JsonInstance);
        Response.FaceMatches := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SourceImageFace', TargetDepth) then
      begin
        var Unmarshaller := TComparedSourceImageFaceUnmarshaller.JsonInstance;
        Response.SourceImageFace := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SourceImageOrientationCorrection', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.SourceImageOrientationCorrection := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TargetImageOrientationCorrection', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.TargetImageOrientationCorrection := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('UnmatchedFaces', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TComparedFace, IComparedFaceUnmarshaller>.JsonNew(TComparedFaceUnmarshaller.JsonInstance);
        Response.UnmatchedFaces := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TCompareFacesResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TCompareFacesResponseUnmarshaller.Create;
begin
  FInstance := TCompareFacesResponseUnmarshaller.Create;
end;

class function TCompareFacesResponseUnmarshaller.Instance: ICompareFacesResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
