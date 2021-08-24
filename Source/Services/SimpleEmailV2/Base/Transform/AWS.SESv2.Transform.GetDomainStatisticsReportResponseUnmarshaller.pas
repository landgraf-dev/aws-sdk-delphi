unit AWS.SESv2.Transform.GetDomainStatisticsReportResponseUnmarshaller;

interface

uses
  AWS.SESv2.Model.GetDomainStatisticsReportResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SESv2.Transform.DailyVolumeUnmarshaller, 
  AWS.SESv2.Model.DailyVolume, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SESv2.Transform.OverallVolumeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SESv2.Transform.BadRequestExceptionUnmarshaller, 
  AWS.SESv2.Transform.NotFoundExceptionUnmarshaller, 
  AWS.SESv2.Transform.TooManyRequestsExceptionUnmarshaller, 
  AWS.SESv2.Exception;

type
  IGetDomainStatisticsReportResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetDomainStatisticsReportResponseUnmarshaller = class(TJsonResponseUnmarshaller, IGetDomainStatisticsReportResponseUnmarshaller)
  strict private
    class var FInstance: IGetDomainStatisticsReportResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetDomainStatisticsReportResponseUnmarshaller; static;
  end;
  
implementation

{ TGetDomainStatisticsReportResponseUnmarshaller }

function TGetDomainStatisticsReportResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetDomainStatisticsReportResponse;
begin
  Response := TGetDomainStatisticsReportResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('DailyVolumes', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TDailyVolume, IDailyVolumeUnmarshaller>.JsonNew(TDailyVolumeUnmarshaller.JsonInstance);
        Response.DailyVolumes := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('OverallVolume', TargetDepth) then
      begin
        var Unmarshaller := TOverallVolumeUnmarshaller.JsonInstance;
        Response.OverallVolume := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TGetDomainStatisticsReportResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'BadRequestException' then
          Exit(TBadRequestExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'NotFoundException' then
          Exit(TNotFoundExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'TooManyRequestsException' then
          Exit(TTooManyRequestsExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
      finally
        ContextCopy.Free;
      end;
    finally
      StreamCopy.Free;
    end;
    Exit(EAmazonSimpleEmailServiceV2Exception.Create(ErrorResponse.Message, AInnerException, ErrorResponse.ErrorType, ErrorResponse.Code, ErrorResponse.RequestId, AStatusCode));
  finally
    ErrorResponse.Free;
  end;
end;

class constructor TGetDomainStatisticsReportResponseUnmarshaller.Create;
begin
  FInstance := TGetDomainStatisticsReportResponseUnmarshaller.Create;
end;

class function TGetDomainStatisticsReportResponseUnmarshaller.Instance: IGetDomainStatisticsReportResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
