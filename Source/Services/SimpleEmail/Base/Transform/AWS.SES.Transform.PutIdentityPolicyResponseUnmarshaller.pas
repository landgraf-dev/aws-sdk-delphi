unit AWS.SES.Transform.PutIdentityPolicyResponseUnmarshaller;

interface

uses
  AWS.Runtime.Model, 
  AWS.SES.Model.PutIdentityPolicyResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SES.Transform.InvalidPolicyExceptionUnmarshaller, 
  AWS.SES.Exception;

type
  IPutIdentityPolicyResponseUnmarshaller = IResponseUnmarshaller;
  
  TPutIdentityPolicyResponseUnmarshaller = class(TXmlResponseUnmarshaller, IPutIdentityPolicyResponseUnmarshaller)
  strict private
    class var FInstance: IPutIdentityPolicyResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TPutIdentityPolicyResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IPutIdentityPolicyResponseUnmarshaller; static;
  end;
  
implementation

{ TPutIdentityPolicyResponseUnmarshaller }

function TPutIdentityPolicyResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TPutIdentityPolicyResponse;
  TargetDepth: Integer;
begin
  Response := TPutIdentityPolicyResponse.Create;
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.IsStartElement then
      begin
        if AContext.TestExpression('PutIdentityPolicyResult', 2) then
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

class procedure TPutIdentityPolicyResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TPutIdentityPolicyResponse);
var
  OriginalDepth: Integer;
begin
  OriginalDepth := AContext.CurrentDepth;
  while AContext.ReadAtDepth(OriginalDepth) do
    if AContext.IsStartElement or AContext.IsAttribute then
    begin
    end;
end;

function TPutIdentityPolicyResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'InvalidPolicy' then
          Exit(TInvalidPolicyExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TPutIdentityPolicyResponseUnmarshaller.Create;
begin
  FInstance := TPutIdentityPolicyResponseUnmarshaller.Create;
end;

class function TPutIdentityPolicyResponseUnmarshaller.Instance: IPutIdentityPolicyResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
