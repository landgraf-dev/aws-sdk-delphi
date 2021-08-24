unit AWS.SESv2.Transform.GetDeliverabilityDashboardOptionsResponseUnmarshaller;

interface

uses
  AWS.SESv2.Model.GetDeliverabilityDashboardOptionsResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SESv2.Transform.DomainDeliverabilityTrackingOptionUnmarshaller, 
  AWS.SESv2.Model.DomainDeliverabilityTrackingOption, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SESv2.Transform.BadRequestExceptionUnmarshaller, 
  AWS.SESv2.Transform.LimitExceededExceptionUnmarshaller, 
  AWS.SESv2.Transform.TooManyRequestsExceptionUnmarshaller, 
  AWS.SESv2.Exception;

type
  IGetDeliverabilityDashboardOptionsResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetDeliverabilityDashboardOptionsResponseUnmarshaller = class(TJsonResponseUnmarshaller, IGetDeliverabilityDashboardOptionsResponseUnmarshaller)
  strict private
    class var FInstance: IGetDeliverabilityDashboardOptionsResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetDeliverabilityDashboardOptionsResponseUnmarshaller; static;
  end;
  
implementation

{ TGetDeliverabilityDashboardOptionsResponseUnmarshaller }

function TGetDeliverabilityDashboardOptionsResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetDeliverabilityDashboardOptionsResponse;
begin
  Response := TGetDeliverabilityDashboardOptionsResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('AccountStatus', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.AccountStatus := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ActiveSubscribedDomains', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TDomainDeliverabilityTrackingOption, IDomainDeliverabilityTrackingOptionUnmarshaller>.JsonNew(TDomainDeliverabilityTrackingOptionUnmarshaller.JsonInstance);
        Response.ActiveSubscribedDomains := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('DashboardEnabled', TargetDepth) then
      begin
        var Unmarshaller := TBooleanUnmarshaller.JsonInstance;
        Response.DashboardEnabled := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('PendingExpirationSubscribedDomains', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TDomainDeliverabilityTrackingOption, IDomainDeliverabilityTrackingOptionUnmarshaller>.JsonNew(TDomainDeliverabilityTrackingOptionUnmarshaller.JsonInstance);
        Response.PendingExpirationSubscribedDomains := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SubscriptionExpiryDate', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        Response.SubscriptionExpiryDate := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TGetDeliverabilityDashboardOptionsResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'LimitExceededException' then
          Exit(TLimitExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TGetDeliverabilityDashboardOptionsResponseUnmarshaller.Create;
begin
  FInstance := TGetDeliverabilityDashboardOptionsResponseUnmarshaller.Create;
end;

class function TGetDeliverabilityDashboardOptionsResponseUnmarshaller.Instance: IGetDeliverabilityDashboardOptionsResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
