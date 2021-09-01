unit AWS.Translate.Transform.GetParallelDataResponseUnmarshaller;

interface

uses
  AWS.Translate.Model.GetParallelDataResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Translate.Transform.ParallelDataDataLocationUnmarshaller, 
  AWS.Translate.Transform.ParallelDataPropertiesUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.Translate.Transform.InternalServerExceptionUnmarshaller, 
  AWS.Translate.Transform.InvalidParameterValueExceptionUnmarshaller, 
  AWS.Translate.Transform.ResourceNotFoundExceptionUnmarshaller, 
  AWS.Translate.Transform.TooManyRequestsExceptionUnmarshaller, 
  AWS.Translate.Exception;

type
  IGetParallelDataResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetParallelDataResponseUnmarshaller = class(TJsonResponseUnmarshaller, IGetParallelDataResponseUnmarshaller)
  strict private
    class var FInstance: IGetParallelDataResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetParallelDataResponseUnmarshaller; static;
  end;
  
implementation

{ TGetParallelDataResponseUnmarshaller }

function TGetParallelDataResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetParallelDataResponse;
begin
  Response := TGetParallelDataResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('AuxiliaryDataLocation', TargetDepth) then
      begin
        var Unmarshaller := TParallelDataDataLocationUnmarshaller.JsonInstance;
        Response.AuxiliaryDataLocation := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('DataLocation', TargetDepth) then
      begin
        var Unmarshaller := TParallelDataDataLocationUnmarshaller.JsonInstance;
        Response.DataLocation := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LatestUpdateAttemptAuxiliaryDataLocation', TargetDepth) then
      begin
        var Unmarshaller := TParallelDataDataLocationUnmarshaller.JsonInstance;
        Response.LatestUpdateAttemptAuxiliaryDataLocation := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ParallelDataProperties', TargetDepth) then
      begin
        var Unmarshaller := TParallelDataPropertiesUnmarshaller.JsonInstance;
        Response.ParallelDataProperties := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TGetParallelDataResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'InternalServerException' then
          Exit(TInternalServerExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidParameterValueException' then
          Exit(TInvalidParameterValueExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ResourceNotFoundException' then
          Exit(TResourceNotFoundExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'TooManyRequestsException' then
          Exit(TTooManyRequestsExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
      finally
        ContextCopy.Free;
      end;
    finally
      StreamCopy.Free;
    end;
    Exit(EAmazonTranslateException.Create(ErrorResponse.Message, AInnerException, ErrorResponse.ErrorType, ErrorResponse.Code, ErrorResponse.RequestId, AStatusCode));
  finally
    ErrorResponse.Free;
  end;
end;

class constructor TGetParallelDataResponseUnmarshaller.Create;
begin
  FInstance := TGetParallelDataResponseUnmarshaller.Create;
end;

class function TGetParallelDataResponseUnmarshaller.Instance: IGetParallelDataResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
