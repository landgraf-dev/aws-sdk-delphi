unit AWS.SES.Transform.CreateConfigurationSetResponseUnmarshaller;

interface

uses
  AWS.Runtime.Model, 
  AWS.SES.Model.CreateConfigurationSetResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SES.Transform.ConfigurationSetAlreadyExistsExceptionUnmarshaller, 
  AWS.SES.Transform.InvalidConfigurationSetExceptionUnmarshaller, 
  AWS.SES.Transform.LimitExceededExceptionUnmarshaller, 
  AWS.SES.Exception;

type
  ICreateConfigurationSetResponseUnmarshaller = IResponseUnmarshaller;
  
  TCreateConfigurationSetResponseUnmarshaller = class(TXmlResponseUnmarshaller, ICreateConfigurationSetResponseUnmarshaller)
  strict private
    class var FInstance: ICreateConfigurationSetResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TCreateConfigurationSetResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: ICreateConfigurationSetResponseUnmarshaller; static;
  end;
  
implementation

{ TCreateConfigurationSetResponseUnmarshaller }

function TCreateConfigurationSetResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TCreateConfigurationSetResponse;
  TargetDepth: Integer;
begin
  Response := TCreateConfigurationSetResponse.Create;
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.IsStartElement then
      begin
        if AContext.TestExpression('CreateConfigurationSetResult', 2) then
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

class procedure TCreateConfigurationSetResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TCreateConfigurationSetResponse);
var
  OriginalDepth: Integer;
begin
  OriginalDepth := AContext.CurrentDepth;
  while AContext.ReadAtDepth(OriginalDepth) do
    if AContext.IsStartElement or AContext.IsAttribute then
    begin
    end;
end;

function TCreateConfigurationSetResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'ConfigurationSetAlreadyExists' then
          Exit(TConfigurationSetAlreadyExistsExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidConfigurationSet' then
          Exit(TInvalidConfigurationSetExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'LimitExceeded' then
          Exit(TLimitExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TCreateConfigurationSetResponseUnmarshaller.Create;
begin
  FInstance := TCreateConfigurationSetResponseUnmarshaller.Create;
end;

class function TCreateConfigurationSetResponseUnmarshaller.Instance: ICreateConfigurationSetResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
