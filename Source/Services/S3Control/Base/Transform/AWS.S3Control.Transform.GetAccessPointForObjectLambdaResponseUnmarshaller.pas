unit AWS.S3Control.Transform.GetAccessPointForObjectLambdaResponseUnmarshaller;

interface

uses
  AWS.S3Control.Model.GetAccessPointForObjectLambdaResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.S3Control.Transform.PublicAccessBlockConfigurationUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3Control.Exception;

type
  IGetAccessPointForObjectLambdaResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetAccessPointForObjectLambdaResponseUnmarshaller = class(TXmlResponseUnmarshaller, IGetAccessPointForObjectLambdaResponseUnmarshaller)
  strict private
    class var FInstance: IGetAccessPointForObjectLambdaResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetAccessPointForObjectLambdaResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetAccessPointForObjectLambdaResponseUnmarshaller; static;
  end;
  
implementation

{ TGetAccessPointForObjectLambdaResponseUnmarshaller }

function TGetAccessPointForObjectLambdaResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetAccessPointForObjectLambdaResponse;
begin
  Response := TGetAccessPointForObjectLambdaResponse.Create;
  try
    UnmarshallResult(AContext, Response);
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class procedure TGetAccessPointForObjectLambdaResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetAccessPointForObjectLambdaResponse);
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
    begin
      if AContext.TestExpression('CreationDate', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.Instance;
        AResponse.CreationDate := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Name', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.Name := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('PublicAccessBlockConfiguration', TargetDepth) then
      begin
        var Unmarshaller := TPublicAccessBlockConfigurationUnmarshaller.Instance;
        AResponse.PublicAccessBlockConfiguration := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end
    else
      if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
        Exit;
end;

function TGetAccessPointForObjectLambdaResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TGetAccessPointForObjectLambdaResponseUnmarshaller.Create;
begin
  FInstance := TGetAccessPointForObjectLambdaResponseUnmarshaller.Create;
end;

class function TGetAccessPointForObjectLambdaResponseUnmarshaller.Instance: IGetAccessPointForObjectLambdaResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
