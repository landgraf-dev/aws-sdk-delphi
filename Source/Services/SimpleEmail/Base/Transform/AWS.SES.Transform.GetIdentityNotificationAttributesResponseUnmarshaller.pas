unit AWS.SES.Transform.GetIdentityNotificationAttributesResponseUnmarshaller;

interface

uses
  AWS.Runtime.Model, 
  AWS.SES.Model.GetIdentityNotificationAttributesResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SES.Transform.IdentityNotificationAttributesUnmarshaller, 
  AWS.SES.Model.IdentityNotificationAttributes, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SES.Exception;

type
  IGetIdentityNotificationAttributesResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetIdentityNotificationAttributesResponseUnmarshaller = class(TXmlResponseUnmarshaller, IGetIdentityNotificationAttributesResponseUnmarshaller)
  strict private
    class var FInstance: IGetIdentityNotificationAttributesResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetIdentityNotificationAttributesResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetIdentityNotificationAttributesResponseUnmarshaller; static;
  end;
  
implementation

{ TGetIdentityNotificationAttributesResponseUnmarshaller }

function TGetIdentityNotificationAttributesResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetIdentityNotificationAttributesResponse;
  TargetDepth: Integer;
begin
  Response := TGetIdentityNotificationAttributesResponse.Create;
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.IsStartElement then
      begin
        if AContext.TestExpression('GetIdentityNotificationAttributesResult', 2) then
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

class procedure TGetIdentityNotificationAttributesResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetIdentityNotificationAttributesResponse);
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
      if AContext.TestExpression('NotificationAttributes/entry', TargetDepth) then
      begin
        var Unmarshaller := TKeyValueUnmarshaller<string, TIdentityNotificationAttributes, IStringUnmarshaller, IIdentityNotificationAttributesUnmarshaller>.Create(TStringUnmarshaller.Instance, TIdentityNotificationAttributesUnmarshaller.Instance);
        var item := Unmarshaller.Unmarshall(AContext);
        AResponse.NotificationAttributes.Add(item.Key, item.Value);
        Continue;
      end;
end;

function TGetIdentityNotificationAttributesResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TGetIdentityNotificationAttributesResponseUnmarshaller.Create;
begin
  FInstance := TGetIdentityNotificationAttributesResponseUnmarshaller.Create;
end;

class function TGetIdentityNotificationAttributesResponseUnmarshaller.Instance: IGetIdentityNotificationAttributesResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
