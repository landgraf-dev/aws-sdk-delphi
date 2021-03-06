unit AWS.SES.Transform.GetIdentityVerificationAttributesResponseUnmarshaller;

interface

uses
  AWS.Runtime.Model, 
  AWS.SES.Model.GetIdentityVerificationAttributesResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SES.Transform.IdentityVerificationAttributesUnmarshaller, 
  AWS.SES.Model.IdentityVerificationAttributes, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SES.Exception;

type
  IGetIdentityVerificationAttributesResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetIdentityVerificationAttributesResponseUnmarshaller = class(TXmlResponseUnmarshaller, IGetIdentityVerificationAttributesResponseUnmarshaller)
  strict private
    class var FInstance: IGetIdentityVerificationAttributesResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetIdentityVerificationAttributesResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetIdentityVerificationAttributesResponseUnmarshaller; static;
  end;
  
implementation

{ TGetIdentityVerificationAttributesResponseUnmarshaller }

function TGetIdentityVerificationAttributesResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetIdentityVerificationAttributesResponse;
  TargetDepth: Integer;
begin
  Response := TGetIdentityVerificationAttributesResponse.Create;
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.IsStartElement then
      begin
        if AContext.TestExpression('GetIdentityVerificationAttributesResult', 2) then
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

class procedure TGetIdentityVerificationAttributesResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetIdentityVerificationAttributesResponse);
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
      if AContext.TestExpression('VerificationAttributes/entry', TargetDepth) then
      begin
        var Unmarshaller := TKeyValueUnmarshaller<string, TIdentityVerificationAttributes, IStringUnmarshaller, IIdentityVerificationAttributesUnmarshaller>.New(TStringUnmarshaller.Instance, TIdentityVerificationAttributesUnmarshaller.Instance);
        var item := Unmarshaller.Unmarshall(AContext);
        AResponse.VerificationAttributes.Add(item.Key, item.Value);
        Continue;
      end;
end;

function TGetIdentityVerificationAttributesResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TGetIdentityVerificationAttributesResponseUnmarshaller.Create;
begin
  FInstance := TGetIdentityVerificationAttributesResponseUnmarshaller.Create;
end;

class function TGetIdentityVerificationAttributesResponseUnmarshaller.Instance: IGetIdentityVerificationAttributesResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
