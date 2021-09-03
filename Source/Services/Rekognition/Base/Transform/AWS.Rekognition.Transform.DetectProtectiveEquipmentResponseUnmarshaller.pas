unit AWS.Rekognition.Transform.DetectProtectiveEquipmentResponseUnmarshaller;

interface

uses
  AWS.Rekognition.Model.DetectProtectiveEquipmentResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Rekognition.Transform.ProtectiveEquipmentPersonUnmarshaller, 
  AWS.Rekognition.Model.ProtectiveEquipmentPerson, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Rekognition.Transform.ProtectiveEquipmentSummaryUnmarshaller, 
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
  IDetectProtectiveEquipmentResponseUnmarshaller = IResponseUnmarshaller;
  
  TDetectProtectiveEquipmentResponseUnmarshaller = class(TJsonResponseUnmarshaller, IDetectProtectiveEquipmentResponseUnmarshaller)
  strict private
    class var FInstance: IDetectProtectiveEquipmentResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDetectProtectiveEquipmentResponseUnmarshaller; static;
  end;
  
implementation

{ TDetectProtectiveEquipmentResponseUnmarshaller }

function TDetectProtectiveEquipmentResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDetectProtectiveEquipmentResponse;
begin
  Response := TDetectProtectiveEquipmentResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Persons', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TProtectiveEquipmentPerson, IProtectiveEquipmentPersonUnmarshaller>.JsonNew(TProtectiveEquipmentPersonUnmarshaller.JsonInstance);
        Response.Persons := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ProtectiveEquipmentModelVersion', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.ProtectiveEquipmentModelVersion := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Summary', TargetDepth) then
      begin
        var Unmarshaller := TProtectiveEquipmentSummaryUnmarshaller.JsonInstance;
        Response.Summary := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TDetectProtectiveEquipmentResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TDetectProtectiveEquipmentResponseUnmarshaller.Create;
begin
  FInstance := TDetectProtectiveEquipmentResponseUnmarshaller.Create;
end;

class function TDetectProtectiveEquipmentResponseUnmarshaller.Instance: IDetectProtectiveEquipmentResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
