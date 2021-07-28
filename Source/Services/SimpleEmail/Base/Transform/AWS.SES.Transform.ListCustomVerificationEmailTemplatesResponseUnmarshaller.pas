unit AWS.SES.Transform.ListCustomVerificationEmailTemplatesResponseUnmarshaller;

interface

uses
  AWS.Runtime.Model, 
  AWS.SES.Model.ListCustomVerificationEmailTemplatesResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SES.Transform.CustomVerificationEmailTemplateUnmarshaller, 
  AWS.SES.Model.CustomVerificationEmailTemplate, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SES.Exception;

type
  IListCustomVerificationEmailTemplatesResponseUnmarshaller = IResponseUnmarshaller;
  
  TListCustomVerificationEmailTemplatesResponseUnmarshaller = class(TXmlResponseUnmarshaller, IListCustomVerificationEmailTemplatesResponseUnmarshaller)
  strict private
    class var FInstance: IListCustomVerificationEmailTemplatesResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TListCustomVerificationEmailTemplatesResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IListCustomVerificationEmailTemplatesResponseUnmarshaller; static;
  end;
  
implementation

{ TListCustomVerificationEmailTemplatesResponseUnmarshaller }

function TListCustomVerificationEmailTemplatesResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TListCustomVerificationEmailTemplatesResponse;
  TargetDepth: Integer;
begin
  Response := TListCustomVerificationEmailTemplatesResponse.Create;
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.IsStartElement then
      begin
        if AContext.TestExpression('ListCustomVerificationEmailTemplatesResult', 2) then
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

class procedure TListCustomVerificationEmailTemplatesResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TListCustomVerificationEmailTemplatesResponse);
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
    begin
      if AContext.TestExpression('CustomVerificationEmailTemplates/member', TargetDepth) then
      begin
        var Unmarshaller := TCustomVerificationEmailTemplateUnmarshaller.Instance;
        AResponse.CustomVerificationEmailTemplates.Add(Unmarshaller.Unmarshall(AContext));
        Continue;
      end;
      if AContext.TestExpression('NextToken', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.NextToken := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
end;

function TListCustomVerificationEmailTemplatesResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TListCustomVerificationEmailTemplatesResponseUnmarshaller.Create;
begin
  FInstance := TListCustomVerificationEmailTemplatesResponseUnmarshaller.Create;
end;

class function TListCustomVerificationEmailTemplatesResponseUnmarshaller.Instance: IListCustomVerificationEmailTemplatesResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
