unit AWS.SESv2.Transform.GetDeliverabilityTestReportResponseUnmarshaller;

interface

uses
  AWS.SESv2.Model.GetDeliverabilityTestReportResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SESv2.Transform.DeliverabilityTestReportUnmarshaller, 
  AWS.SESv2.Transform.IspPlacementUnmarshaller, 
  AWS.SESv2.Model.IspPlacement, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SESv2.Transform.PlacementStatisticsUnmarshaller, 
  AWS.SESv2.Transform.TagUnmarshaller, 
  AWS.SESv2.Model.Tag, 
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
  IGetDeliverabilityTestReportResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetDeliverabilityTestReportResponseUnmarshaller = class(TJsonResponseUnmarshaller, IGetDeliverabilityTestReportResponseUnmarshaller)
  strict private
    class var FInstance: IGetDeliverabilityTestReportResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetDeliverabilityTestReportResponseUnmarshaller; static;
  end;
  
implementation

{ TGetDeliverabilityTestReportResponseUnmarshaller }

function TGetDeliverabilityTestReportResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetDeliverabilityTestReportResponse;
begin
  Response := TGetDeliverabilityTestReportResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('DeliverabilityTestReport', TargetDepth) then
      begin
        var Unmarshaller := TDeliverabilityTestReportUnmarshaller.JsonInstance;
        Response.DeliverabilityTestReport := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('IspPlacements', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TIspPlacement, IIspPlacementUnmarshaller>.JsonNew(TIspPlacementUnmarshaller.JsonInstance);
        Response.IspPlacements := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Message', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.Message := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('OverallPlacement', TargetDepth) then
      begin
        var Unmarshaller := TPlacementStatisticsUnmarshaller.JsonInstance;
        Response.OverallPlacement := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Tags', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TTag, ITagUnmarshaller>.JsonNew(TTagUnmarshaller.JsonInstance);
        Response.Tags := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TGetDeliverabilityTestReportResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TGetDeliverabilityTestReportResponseUnmarshaller.Create;
begin
  FInstance := TGetDeliverabilityTestReportResponseUnmarshaller.Create;
end;

class function TGetDeliverabilityTestReportResponseUnmarshaller.Instance: IGetDeliverabilityTestReportResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
