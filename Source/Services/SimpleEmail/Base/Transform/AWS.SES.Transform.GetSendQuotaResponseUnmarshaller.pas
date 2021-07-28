unit AWS.SES.Transform.GetSendQuotaResponseUnmarshaller;

interface

uses
  AWS.Runtime.Model, 
  AWS.SES.Model.GetSendQuotaResponse, 
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
  IGetSendQuotaResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetSendQuotaResponseUnmarshaller = class(TXmlResponseUnmarshaller, IGetSendQuotaResponseUnmarshaller)
  strict private
    class var FInstance: IGetSendQuotaResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetSendQuotaResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetSendQuotaResponseUnmarshaller; static;
  end;
  
implementation

{ TGetSendQuotaResponseUnmarshaller }

function TGetSendQuotaResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetSendQuotaResponse;
  TargetDepth: Integer;
begin
  Response := TGetSendQuotaResponse.Create;
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.IsStartElement then
      begin
        if AContext.TestExpression('GetSendQuotaResult', 2) then
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

class procedure TGetSendQuotaResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetSendQuotaResponse);
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
      if AContext.TestExpression('Max24HourSend', TargetDepth) then
      begin
        var Unmarshaller := TDoubleUnmarshaller.Instance;
        AResponse.Max24HourSend := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('MaxSendRate', TargetDepth) then
      begin
        var Unmarshaller := TDoubleUnmarshaller.Instance;
        AResponse.MaxSendRate := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SentLast24Hours', TargetDepth) then
      begin
        var Unmarshaller := TDoubleUnmarshaller.Instance;
        AResponse.SentLast24Hours := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
end;

function TGetSendQuotaResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TGetSendQuotaResponseUnmarshaller.Create;
begin
  FInstance := TGetSendQuotaResponseUnmarshaller.Create;
end;

class function TGetSendQuotaResponseUnmarshaller.Instance: IGetSendQuotaResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
