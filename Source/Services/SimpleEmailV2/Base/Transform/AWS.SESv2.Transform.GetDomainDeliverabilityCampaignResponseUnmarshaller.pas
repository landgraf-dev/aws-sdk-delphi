unit AWS.SESv2.Transform.GetDomainDeliverabilityCampaignResponseUnmarshaller;

interface

uses
  AWS.SESv2.Model.GetDomainDeliverabilityCampaignResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SESv2.Transform.DomainDeliverabilityCampaignUnmarshaller, 
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
  IGetDomainDeliverabilityCampaignResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetDomainDeliverabilityCampaignResponseUnmarshaller = class(TJsonResponseUnmarshaller, IGetDomainDeliverabilityCampaignResponseUnmarshaller)
  strict private
    class var FInstance: IGetDomainDeliverabilityCampaignResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetDomainDeliverabilityCampaignResponseUnmarshaller; static;
  end;
  
implementation

{ TGetDomainDeliverabilityCampaignResponseUnmarshaller }

function TGetDomainDeliverabilityCampaignResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetDomainDeliverabilityCampaignResponse;
begin
  Response := TGetDomainDeliverabilityCampaignResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('DomainDeliverabilityCampaign', TargetDepth) then
      begin
        var Unmarshaller := TDomainDeliverabilityCampaignUnmarshaller.JsonInstance;
        Response.DomainDeliverabilityCampaign := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TGetDomainDeliverabilityCampaignResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TGetDomainDeliverabilityCampaignResponseUnmarshaller.Create;
begin
  FInstance := TGetDomainDeliverabilityCampaignResponseUnmarshaller.Create;
end;

class function TGetDomainDeliverabilityCampaignResponseUnmarshaller.Instance: IGetDomainDeliverabilityCampaignResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
