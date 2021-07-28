unit AWS.SES.Transform.UpdateTemplateResponseUnmarshaller;

interface

uses
  AWS.Runtime.Model, 
  AWS.SES.Model.UpdateTemplateResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SES.Transform.InvalidTemplateExceptionUnmarshaller, 
  AWS.SES.Transform.TemplateDoesNotExistExceptionUnmarshaller, 
  AWS.SES.Exception;

type
  IUpdateTemplateResponseUnmarshaller = IResponseUnmarshaller;
  
  TUpdateTemplateResponseUnmarshaller = class(TXmlResponseUnmarshaller, IUpdateTemplateResponseUnmarshaller)
  strict private
    class var FInstance: IUpdateTemplateResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TUpdateTemplateResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IUpdateTemplateResponseUnmarshaller; static;
  end;
  
implementation

{ TUpdateTemplateResponseUnmarshaller }

function TUpdateTemplateResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TUpdateTemplateResponse;
  TargetDepth: Integer;
begin
  Response := TUpdateTemplateResponse.Create;
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.IsStartElement then
      begin
        if AContext.TestExpression('UpdateTemplateResult', 2) then
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

class procedure TUpdateTemplateResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TUpdateTemplateResponse);
var
  OriginalDepth: Integer;
begin
  OriginalDepth := AContext.CurrentDepth;
  while AContext.ReadAtDepth(OriginalDepth) do
    if AContext.IsStartElement or AContext.IsAttribute then
    begin
    end;
end;

function TUpdateTemplateResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'InvalidTemplate' then
          Exit(TInvalidTemplateExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TUpdateTemplateResponseUnmarshaller.Create;
begin
  FInstance := TUpdateTemplateResponseUnmarshaller.Create;
end;

class function TUpdateTemplateResponseUnmarshaller.Instance: IUpdateTemplateResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
