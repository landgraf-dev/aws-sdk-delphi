unit AWS.SES.Transform.GetIdentityMailFromDomainAttributesResponseUnmarshaller;

interface

uses
  AWS.Runtime.Model, 
  AWS.SES.Model.GetIdentityMailFromDomainAttributesResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SES.Transform.IdentityMailFromDomainAttributesUnmarshaller, 
  AWS.SES.Model.IdentityMailFromDomainAttributes, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SES.Exception;

type
  IGetIdentityMailFromDomainAttributesResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetIdentityMailFromDomainAttributesResponseUnmarshaller = class(TXmlResponseUnmarshaller, IGetIdentityMailFromDomainAttributesResponseUnmarshaller)
  strict private
    class var FInstance: IGetIdentityMailFromDomainAttributesResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetIdentityMailFromDomainAttributesResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetIdentityMailFromDomainAttributesResponseUnmarshaller; static;
  end;
  
implementation

{ TGetIdentityMailFromDomainAttributesResponseUnmarshaller }

function TGetIdentityMailFromDomainAttributesResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetIdentityMailFromDomainAttributesResponse;
  TargetDepth: Integer;
begin
  Response := TGetIdentityMailFromDomainAttributesResponse.Create;
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.IsStartElement then
      begin
        if AContext.TestExpression('GetIdentityMailFromDomainAttributesResult', 2) then
        begin
          UnmarshallResult(AContext, Response);
          Continue;
        end;
        if AContext.TestExpression('ResponseMetadata', 2) then
          Response.ResponseMetadata := TResponseMetadataUnmarshaller.Instance.Unmarshall(AContext);
      end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class procedure TGetIdentityMailFromDomainAttributesResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetIdentityMailFromDomainAttributesResponse);
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
begin
  OriginalDepth := AContext.CurrentDepth;
  TargetDepth := OriginalDepth + 1;
  if AContext.IsStartOfDocument then
    Inc(TargetDepth, 2);
  while AContext.ReadAtDepth(OriginalDepth) do
    if AContext.IsStartElement or AContext.IsAttribute then
      if AContext.TestExpression('MailFromDomainAttributes/entry', TargetDepth) then
      begin
        var Unmarshaller := TKeyValueUnmarshaller<string, TIdentityMailFromDomainAttributes, IStringUnmarshaller, IIdentityMailFromDomainAttributesUnmarshaller>.Create(TStringUnmarshaller.Instance, TIdentityMailFromDomainAttributesUnmarshaller.Instance);
        var item := Unmarshaller.Unmarshall(AContext);
        AResponse.MailFromDomainAttributes.Add(item.Key, item.Value);
        Continue;
      end;
end;

function TGetIdentityMailFromDomainAttributesResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
var
  ErrorResponse: TErrorResponse;
  StreamCopy: TStream;
  ContextCopy: TXmlUnmarshallerContext;
begin
  ErrorResponse := TErrorResponseUnmarshaller.Instance.Unmarshall(AContext);
  try
    ErrorResponse.InnerException := AInnerException;
    ErrorResponse.StatusCode := AStatusCode;
    StreamCopy := TBytesStream.Create(AContext.GetResponseBodyBytes);
    try
      ContextCopy := TXmlUnmarshallerContext.Create(StreamCopy, False, nil);
      try
      finally
        ContextCopy.Free;
      end;
    finally
      StreamCopy.Free;
    end;
    Exit(EAmazonSimpleEmailServiceException.Create(ErrorResponse.Message, AInnerException, ErrorResponse.ErrorType, ErrorResponse.Code, ErrorResponse.RequestId, AStatusCode));
  finally
    ErrorResponse.Free;
  end;
end;

class constructor TGetIdentityMailFromDomainAttributesResponseUnmarshaller.Create;
begin
  FInstance := TGetIdentityMailFromDomainAttributesResponseUnmarshaller.Create;
end;

class function TGetIdentityMailFromDomainAttributesResponseUnmarshaller.Instance: IGetIdentityMailFromDomainAttributesResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
