unit AWS.Rekognition.Transform.DistributeDatasetEntriesResponseUnmarshaller;

interface

uses
  AWS.Rekognition.Model.DistributeDatasetEntriesResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.Rekognition.Transform.AccessDeniedExceptionUnmarshaller, 
  AWS.Rekognition.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.Rekognition.Transform.InvalidParameterExceptionUnmarshaller, 
  AWS.Rekognition.Transform.ProvisionedThroughputExceededExceptionUnmarshaller, 
  AWS.Rekognition.Transform.ResourceNotFoundExceptionUnmarshaller, 
  AWS.Rekognition.Transform.ResourceNotReadyExceptionUnmarshaller, 
  AWS.Rekognition.Transform.ThrottlingExceptionUnmarshaller, 
  AWS.Rekognition.Exception;

type
  IDistributeDatasetEntriesResponseUnmarshaller = IResponseUnmarshaller;
  
  TDistributeDatasetEntriesResponseUnmarshaller = class(TJsonResponseUnmarshaller, IDistributeDatasetEntriesResponseUnmarshaller)
  strict private
    class var FInstance: IDistributeDatasetEntriesResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDistributeDatasetEntriesResponseUnmarshaller; static;
  end;
  
implementation

{ TDistributeDatasetEntriesResponseUnmarshaller }

function TDistributeDatasetEntriesResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDistributeDatasetEntriesResponse;
begin
  Response := TDistributeDatasetEntriesResponse.Create;
  try
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TDistributeDatasetEntriesResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'InvalidParameterException' then
          Exit(TInvalidParameterExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ProvisionedThroughputExceededException' then
          Exit(TProvisionedThroughputExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ResourceNotFoundException' then
          Exit(TResourceNotFoundExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ResourceNotReadyException' then
          Exit(TResourceNotReadyExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TDistributeDatasetEntriesResponseUnmarshaller.Create;
begin
  FInstance := TDistributeDatasetEntriesResponseUnmarshaller.Create;
end;

class function TDistributeDatasetEntriesResponseUnmarshaller.Instance: IDistributeDatasetEntriesResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
