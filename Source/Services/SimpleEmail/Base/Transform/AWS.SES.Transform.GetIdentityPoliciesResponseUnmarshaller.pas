unit AWS.SES.Transform.GetIdentityPoliciesResponseUnmarshaller;

interface

uses
  AWS.Runtime.Model, 
  AWS.SES.Model.GetIdentityPoliciesResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SES.Exception;

type
  IGetIdentityPoliciesResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetIdentityPoliciesResponseUnmarshaller = class(TXmlResponseUnmarshaller, IGetIdentityPoliciesResponseUnmarshaller)
  strict private
    class var FInstance: IGetIdentityPoliciesResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetIdentityPoliciesResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetIdentityPoliciesResponseUnmarshaller; static;
  end;
  
implementation

{ TGetIdentityPoliciesResponseUnmarshaller }

function TGetIdentityPoliciesResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetIdentityPoliciesResponse;
  TargetDepth: Integer;
begin
  Response := TGetIdentityPoliciesResponse.Create;
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.IsStartElement then
      begin
        if AContext.TestExpression('GetIdentityPoliciesResult', 2) then
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

class procedure TGetIdentityPoliciesResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetIdentityPoliciesResponse);
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
      if AContext.TestExpression('Policies/entry', TargetDepth) then
      begin
        var Unmarshaller := TKeyValueUnmarshaller<string, string, IStringUnmarshaller, IStringUnmarshaller>.New(TStringUnmarshaller.Instance, TStringUnmarshaller.Instance);
        var item := Unmarshaller.Unmarshall(AContext);
        AResponse.Policies.Add(item.Key, item.Value);
        Continue;
      end;
end;

function TGetIdentityPoliciesResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TGetIdentityPoliciesResponseUnmarshaller.Create;
begin
  FInstance := TGetIdentityPoliciesResponseUnmarshaller.Create;
end;

class function TGetIdentityPoliciesResponseUnmarshaller.Instance: IGetIdentityPoliciesResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
