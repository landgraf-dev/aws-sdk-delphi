unit AWS.SESv2.Transform.ListDomainDeliverabilityCampaignsResponseUnmarshaller;

interface

uses
  AWS.SESv2.Model.ListDomainDeliverabilityCampaignsResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SESv2.Transform.DomainDeliverabilityCampaignUnmarshaller, 
  AWS.SESv2.Model.DomainDeliverabilityCampaign, 
  AWS.Transform.SimpleTypeUnmarshaller, 
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
  IListDomainDeliverabilityCampaignsResponseUnmarshaller = IResponseUnmarshaller;
  
  TListDomainDeliverabilityCampaignsResponseUnmarshaller = class(TJsonResponseUnmarshaller, IListDomainDeliverabilityCampaignsResponseUnmarshaller)
  strict private
    class var FInstance: IListDomainDeliverabilityCampaignsResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IListDomainDeliverabilityCampaignsResponseUnmarshaller; static;
  end;
  
implementation

{ TListDomainDeliverabilityCampaignsResponseUnmarshaller }

function TListDomainDeliverabilityCampaignsResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TListDomainDeliverabilityCampaignsResponse;
begin
  Response := TListDomainDeliverabilityCampaignsResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('DomainDeliverabilityCampaigns', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TDomainDeliverabilityCampaign, IDomainDeliverabilityCampaignUnmarshaller>.JsonNew(TDomainDeliverabilityCampaignUnmarshaller.JsonInstance);
        Response.DomainDeliverabilityCampaigns := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('NextToken', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.NextToken := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TListDomainDeliverabilityCampaignsResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TListDomainDeliverabilityCampaignsResponseUnmarshaller.Create;
begin
  FInstance := TListDomainDeliverabilityCampaignsResponseUnmarshaller.Create;
end;

class function TListDomainDeliverabilityCampaignsResponseUnmarshaller.Instance: IListDomainDeliverabilityCampaignsResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
