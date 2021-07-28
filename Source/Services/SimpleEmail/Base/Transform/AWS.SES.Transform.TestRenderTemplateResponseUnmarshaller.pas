unit AWS.SES.Transform.TestRenderTemplateResponseUnmarshaller;

interface

uses
  AWS.Runtime.Model, 
  AWS.SES.Model.TestRenderTemplateResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SES.Transform.InvalidRenderingParameterExceptionUnmarshaller, 
  AWS.SES.Transform.MissingRenderingAttributeExceptionUnmarshaller, 
  AWS.SES.Transform.TemplateDoesNotExistExceptionUnmarshaller, 
  AWS.SES.Exception;

type
  ITestRenderTemplateResponseUnmarshaller = IResponseUnmarshaller;
  
  TTestRenderTemplateResponseUnmarshaller = class(TXmlResponseUnmarshaller, ITestRenderTemplateResponseUnmarshaller)
  strict private
    class var FInstance: ITestRenderTemplateResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TTestRenderTemplateResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: ITestRenderTemplateResponseUnmarshaller; static;
  end;
  
implementation

{ TTestRenderTemplateResponseUnmarshaller }

function TTestRenderTemplateResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TTestRenderTemplateResponse;
  TargetDepth: Integer;
begin
  Response := TTestRenderTemplateResponse.Create;
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.IsStartElement then
      begin
        if AContext.TestExpression('TestRenderTemplateResult', 2) then
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

class procedure TTestRenderTemplateResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TTestRenderTemplateResponse);
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
      if AContext.TestExpression('RenderedTemplate', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.RenderedTemplate := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
end;

function TTestRenderTemplateResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'InvalidRenderingParameter' then
          Exit(TInvalidRenderingParameterExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'MissingRenderingAttribute' then
          Exit(TMissingRenderingAttributeExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'TemplateDoesNotExist' then
          Exit(TTemplateDoesNotExistExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TTestRenderTemplateResponseUnmarshaller.Create;
begin
  FInstance := TTestRenderTemplateResponseUnmarshaller.Create;
end;

class function TTestRenderTemplateResponseUnmarshaller.Instance: ITestRenderTemplateResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
