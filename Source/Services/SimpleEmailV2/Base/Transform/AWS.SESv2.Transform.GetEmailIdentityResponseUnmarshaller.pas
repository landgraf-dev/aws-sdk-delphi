unit AWS.SESv2.Transform.GetEmailIdentityResponseUnmarshaller;

interface

uses
  AWS.SESv2.Model.GetEmailIdentityResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SESv2.Transform.DkimAttributesUnmarshaller, 
  AWS.SESv2.Transform.MailFromAttributesUnmarshaller, 
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
  IGetEmailIdentityResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetEmailIdentityResponseUnmarshaller = class(TJsonResponseUnmarshaller, IGetEmailIdentityResponseUnmarshaller)
  strict private
    class var FInstance: IGetEmailIdentityResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetEmailIdentityResponseUnmarshaller; static;
  end;
  
implementation

{ TGetEmailIdentityResponseUnmarshaller }

function TGetEmailIdentityResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetEmailIdentityResponse;
begin
  Response := TGetEmailIdentityResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('ConfigurationSetName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.ConfigurationSetName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('DkimAttributes', TargetDepth) then
      begin
        var Unmarshaller := TDkimAttributesUnmarshaller.JsonInstance;
        Response.DkimAttributes := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('FeedbackForwardingStatus', TargetDepth) then
      begin
        var Unmarshaller := TBooleanUnmarshaller.JsonInstance;
        Response.FeedbackForwardingStatus := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('IdentityType', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.IdentityType := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('MailFromAttributes', TargetDepth) then
      begin
        var Unmarshaller := TMailFromAttributesUnmarshaller.JsonInstance;
        Response.MailFromAttributes := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Policies', TargetDepth) then
      begin
        var Unmarshaller := TJsonDictionaryUnmarshaller<string, string, IJsonStringUnmarshaller, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance, TStringUnmarshaller.JsonInstance);
        Response.Policies := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Tags', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TTag, ITagUnmarshaller>.JsonNew(TTagUnmarshaller.JsonInstance);
        Response.Tags := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('VerifiedForSendingStatus', TargetDepth) then
      begin
        var Unmarshaller := TBooleanUnmarshaller.JsonInstance;
        Response.VerifiedForSendingStatus := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TGetEmailIdentityResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TGetEmailIdentityResponseUnmarshaller.Create;
begin
  FInstance := TGetEmailIdentityResponseUnmarshaller.Create;
end;

class function TGetEmailIdentityResponseUnmarshaller.Instance: IGetEmailIdentityResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
