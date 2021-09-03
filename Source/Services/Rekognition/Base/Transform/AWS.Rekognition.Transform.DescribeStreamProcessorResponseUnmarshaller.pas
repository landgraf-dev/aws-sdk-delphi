unit AWS.Rekognition.Transform.DescribeStreamProcessorResponseUnmarshaller;

interface

uses
  AWS.Rekognition.Model.DescribeStreamProcessorResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Rekognition.Transform.StreamProcessorInputUnmarshaller, 
  AWS.Rekognition.Transform.StreamProcessorOutputUnmarshaller, 
  AWS.Rekognition.Transform.StreamProcessorSettingsUnmarshaller, 
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
  AWS.Rekognition.Transform.ThrottlingExceptionUnmarshaller, 
  AWS.Rekognition.Exception;

type
  IDescribeStreamProcessorResponseUnmarshaller = IResponseUnmarshaller;
  
  TDescribeStreamProcessorResponseUnmarshaller = class(TJsonResponseUnmarshaller, IDescribeStreamProcessorResponseUnmarshaller)
  strict private
    class var FInstance: IDescribeStreamProcessorResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDescribeStreamProcessorResponseUnmarshaller; static;
  end;
  
implementation

{ TDescribeStreamProcessorResponseUnmarshaller }

function TDescribeStreamProcessorResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDescribeStreamProcessorResponse;
begin
  Response := TDescribeStreamProcessorResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('CreationTimestamp', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        Response.CreationTimestamp := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Input', TargetDepth) then
      begin
        var Unmarshaller := TStreamProcessorInputUnmarshaller.JsonInstance;
        Response.Input := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LastUpdateTimestamp', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        Response.LastUpdateTimestamp := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Name', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.Name := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Output', TargetDepth) then
      begin
        var Unmarshaller := TStreamProcessorOutputUnmarshaller.JsonInstance;
        Response.Output := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('RoleArn', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.RoleArn := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Settings', TargetDepth) then
      begin
        var Unmarshaller := TStreamProcessorSettingsUnmarshaller.JsonInstance;
        Response.Settings := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Status', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.Status := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('StatusMessage', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.StatusMessage := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('StreamProcessorArn', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.StreamProcessorArn := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TDescribeStreamProcessorResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TDescribeStreamProcessorResponseUnmarshaller.Create;
begin
  FInstance := TDescribeStreamProcessorResponseUnmarshaller.Create;
end;

class function TDescribeStreamProcessorResponseUnmarshaller.Instance: IDescribeStreamProcessorResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
