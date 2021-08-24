unit AWS.SESv2.Transform.GetAccountResponseUnmarshaller;

interface

uses
  AWS.SESv2.Model.GetAccountResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SESv2.Transform.AccountDetailsUnmarshaller, 
  AWS.SESv2.Transform.SendQuotaUnmarshaller, 
  AWS.SESv2.Transform.SuppressionAttributesUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SESv2.Transform.BadRequestExceptionUnmarshaller, 
  AWS.SESv2.Transform.TooManyRequestsExceptionUnmarshaller, 
  AWS.SESv2.Exception;

type
  IGetAccountResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetAccountResponseUnmarshaller = class(TJsonResponseUnmarshaller, IGetAccountResponseUnmarshaller)
  strict private
    class var FInstance: IGetAccountResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetAccountResponseUnmarshaller; static;
  end;
  
implementation

{ TGetAccountResponseUnmarshaller }

function TGetAccountResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetAccountResponse;
begin
  Response := TGetAccountResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('DedicatedIpAutoWarmupEnabled', TargetDepth) then
      begin
        var Unmarshaller := TBooleanUnmarshaller.JsonInstance;
        Response.DedicatedIpAutoWarmupEnabled := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Details', TargetDepth) then
      begin
        var Unmarshaller := TAccountDetailsUnmarshaller.JsonInstance;
        Response.Details := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('EnforcementStatus', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.EnforcementStatus := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ProductionAccessEnabled', TargetDepth) then
      begin
        var Unmarshaller := TBooleanUnmarshaller.JsonInstance;
        Response.ProductionAccessEnabled := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SendQuota', TargetDepth) then
      begin
        var Unmarshaller := TSendQuotaUnmarshaller.JsonInstance;
        Response.SendQuota := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SendingEnabled', TargetDepth) then
      begin
        var Unmarshaller := TBooleanUnmarshaller.JsonInstance;
        Response.SendingEnabled := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SuppressionAttributes', TargetDepth) then
      begin
        var Unmarshaller := TSuppressionAttributesUnmarshaller.JsonInstance;
        Response.SuppressionAttributes := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TGetAccountResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TGetAccountResponseUnmarshaller.Create;
begin
  FInstance := TGetAccountResponseUnmarshaller.Create;
end;

class function TGetAccountResponseUnmarshaller.Instance: IGetAccountResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
