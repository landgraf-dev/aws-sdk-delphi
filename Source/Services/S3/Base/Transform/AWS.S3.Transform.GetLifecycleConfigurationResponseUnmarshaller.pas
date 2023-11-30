unit AWS.S3.Transform.GetLifecycleConfigurationResponseUnmarshaller;

interface

uses
  AWS.S3.Model.GetLifecycleConfigurationResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.S3.Transform.LifecycleRuleUnmarshaller, 
  AWS.S3.Model.LifecycleRule, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3.Exception;

type
  IGetLifecycleConfigurationResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetLifecycleConfigurationResponseUnmarshaller = class(TXmlResponseUnmarshaller, IGetLifecycleConfigurationResponseUnmarshaller)
  strict private
    class var FInstance: IGetLifecycleConfigurationResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetLifecycleConfigurationResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetLifecycleConfigurationResponseUnmarshaller; static;
  end;
  
implementation

{ TGetLifecycleConfigurationResponseUnmarshaller }

function TGetLifecycleConfigurationResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetLifecycleConfigurationResponse;
begin
  Response := TGetLifecycleConfigurationResponse.Create;
  try
    Result := Response;
    UnmarshallResult(AContext, Response);
  except
    Response.Free;
    raise;
  end;
end;

class procedure TGetLifecycleConfigurationResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetLifecycleConfigurationResponse);
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
begin
  OriginalDepth := AContext.CurrentDepth;
  TargetDepth := OriginalDepth + 1;
  if AContext.IsStartOfDocument then
    Inc(TargetDepth, 1);
  while AContext.Read do
    if AContext.IsStartElement or AContext.IsAttribute then
      if AContext.TestExpression('member', TargetDepth) then
      begin
        var Unmarshaller := TLifecycleRuleUnmarshaller.Instance;
        AResponse.Rules.Add(Unmarshaller.Unmarshall(AContext));
        Continue;
      end
    else
      if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
        Exit;
end;

function TGetLifecycleConfigurationResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
    Exit(EAmazonS3Exception.Create(ErrorResponse.Message, AInnerException, ErrorResponse.ErrorType, ErrorResponse.Code, ErrorResponse.RequestId, AStatusCode));
  finally
    ErrorResponse.Free;
  end;
end;

class constructor TGetLifecycleConfigurationResponseUnmarshaller.Create;
begin
  FInstance := TGetLifecycleConfigurationResponseUnmarshaller.Create;
end;

class function TGetLifecycleConfigurationResponseUnmarshaller.Instance: IGetLifecycleConfigurationResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
