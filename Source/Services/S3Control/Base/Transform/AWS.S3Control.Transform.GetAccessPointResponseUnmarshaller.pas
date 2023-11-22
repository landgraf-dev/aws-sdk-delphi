unit AWS.S3Control.Transform.GetAccessPointResponseUnmarshaller;

interface

uses
  AWS.S3Control.Model.GetAccessPointResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.S3Control.Transform.PublicAccessBlockConfigurationUnmarshaller, 
  AWS.S3Control.Transform.VpcConfigurationUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3Control.Exception;

type
  IGetAccessPointResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetAccessPointResponseUnmarshaller = class(TXmlResponseUnmarshaller, IGetAccessPointResponseUnmarshaller)
  strict private
    class var FInstance: IGetAccessPointResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetAccessPointResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetAccessPointResponseUnmarshaller; static;
  end;
  
implementation

{ TGetAccessPointResponseUnmarshaller }

function TGetAccessPointResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetAccessPointResponse;
begin
  Response := TGetAccessPointResponse.Create;
  try
    UnmarshallResult(AContext, Response);
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class procedure TGetAccessPointResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetAccessPointResponse);
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
      if AContext.TestExpression('Bucket', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.Bucket := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
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
      if AContext.TestExpression('NetworkOrigin', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.NetworkOrigin := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('PublicAccessBlockConfiguration', TargetDepth) then
      begin
        var Unmarshaller := TPublicAccessBlockConfigurationUnmarshaller.Instance;
        AResponse.PublicAccessBlockConfiguration := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('VpcConfiguration', TargetDepth) then
      begin
        var Unmarshaller := TVpcConfigurationUnmarshaller.Instance;
        AResponse.VpcConfiguration := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end
    else
      if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
        Exit;
end;

function TGetAccessPointResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TGetAccessPointResponseUnmarshaller.Create;
begin
  FInstance := TGetAccessPointResponseUnmarshaller.Create;
end;

class function TGetAccessPointResponseUnmarshaller.Instance: IGetAccessPointResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
