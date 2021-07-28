unit AWS.SES.Transform.VerifyDomainDkimResponseUnmarshaller;

interface

uses
  AWS.Runtime.Model, 
  AWS.SES.Model.VerifyDomainDkimResponse, 
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
  IVerifyDomainDkimResponseUnmarshaller = IResponseUnmarshaller;
  
  TVerifyDomainDkimResponseUnmarshaller = class(TXmlResponseUnmarshaller, IVerifyDomainDkimResponseUnmarshaller)
  strict private
    class var FInstance: IVerifyDomainDkimResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TVerifyDomainDkimResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IVerifyDomainDkimResponseUnmarshaller; static;
  end;
  
implementation

{ TVerifyDomainDkimResponseUnmarshaller }

function TVerifyDomainDkimResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TVerifyDomainDkimResponse;
  TargetDepth: Integer;
begin
  Response := TVerifyDomainDkimResponse.Create;
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.IsStartElement then
      begin
        if AContext.TestExpression('VerifyDomainDkimResult', 2) then
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

class procedure TVerifyDomainDkimResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TVerifyDomainDkimResponse);
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
      if AContext.TestExpression('DkimTokens/member', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.DkimTokens.Add(Unmarshaller.Unmarshall(AContext));
        Continue;
      end;
end;

function TVerifyDomainDkimResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TVerifyDomainDkimResponseUnmarshaller.Create;
begin
  FInstance := TVerifyDomainDkimResponseUnmarshaller.Create;
end;

class function TVerifyDomainDkimResponseUnmarshaller.Instance: IVerifyDomainDkimResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
