unit AWS.S3Control.Transform.GetAccessPointConfigurationForObjectLambdaResponseUnmarshaller;

interface

uses
  AWS.S3Control.Model.GetAccessPointConfigurationForObjectLambdaResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.S3Control.Transform.ObjectLambdaConfigurationUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3Control.Exception;

type
  IGetAccessPointConfigurationForObjectLambdaResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetAccessPointConfigurationForObjectLambdaResponseUnmarshaller = class(TXmlResponseUnmarshaller, IGetAccessPointConfigurationForObjectLambdaResponseUnmarshaller)
  strict private
    class var FInstance: IGetAccessPointConfigurationForObjectLambdaResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetAccessPointConfigurationForObjectLambdaResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetAccessPointConfigurationForObjectLambdaResponseUnmarshaller; static;
  end;
  
implementation

{ TGetAccessPointConfigurationForObjectLambdaResponseUnmarshaller }

function TGetAccessPointConfigurationForObjectLambdaResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetAccessPointConfigurationForObjectLambdaResponse;
begin
  Response := TGetAccessPointConfigurationForObjectLambdaResponse.Create;
  try
    Result := Response;
    UnmarshallResult(AContext, Response);
  except
    Response.Free;
    raise;
  end;
end;

class procedure TGetAccessPointConfigurationForObjectLambdaResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetAccessPointConfigurationForObjectLambdaResponse);
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
      if AContext.TestExpression('Configuration', TargetDepth) then
      begin
        var Unmarshaller := TObjectLambdaConfigurationUnmarshaller.Instance;
        AResponse.Configuration := Unmarshaller.Unmarshall(AContext);
        Continue;
      end
    else
      if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
        Exit;
end;

function TGetAccessPointConfigurationForObjectLambdaResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
    Exit(EAmazonS3ControlException.Create(ErrorResponse.Message, AInnerException, ErrorResponse.ErrorType, ErrorResponse.Code, ErrorResponse.RequestId, AStatusCode));
  finally
    ErrorResponse.Free;
  end;
end;

class constructor TGetAccessPointConfigurationForObjectLambdaResponseUnmarshaller.Create;
begin
  FInstance := TGetAccessPointConfigurationForObjectLambdaResponseUnmarshaller.Create;
end;

class function TGetAccessPointConfigurationForObjectLambdaResponseUnmarshaller.Instance: IGetAccessPointConfigurationForObjectLambdaResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
