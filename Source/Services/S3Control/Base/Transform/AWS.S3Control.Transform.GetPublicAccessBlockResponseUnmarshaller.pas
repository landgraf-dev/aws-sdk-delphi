unit AWS.S3Control.Transform.GetPublicAccessBlockResponseUnmarshaller;

interface

uses
  AWS.S3Control.Model.GetPublicAccessBlockResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.S3Control.Transform.PublicAccessBlockConfigurationUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3Control.Transform.NoSuchPublicAccessBlockConfigurationExceptionUnmarshaller, 
  AWS.S3Control.Exception;

type
  IGetPublicAccessBlockResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetPublicAccessBlockResponseUnmarshaller = class(TXmlResponseUnmarshaller, IGetPublicAccessBlockResponseUnmarshaller)
  strict private
    class var FInstance: IGetPublicAccessBlockResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetPublicAccessBlockResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetPublicAccessBlockResponseUnmarshaller; static;
  end;
  
implementation

{ TGetPublicAccessBlockResponseUnmarshaller }

function TGetPublicAccessBlockResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetPublicAccessBlockResponse;
begin
  Response := TGetPublicAccessBlockResponse.Create;
  try
    Result := Response;
    UnmarshallResult(AContext, Response);
  except
    Response.Free;
    raise;
  end;
end;

class procedure TGetPublicAccessBlockResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetPublicAccessBlockResponse);
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
begin
  OriginalDepth := AContext.CurrentDepth;
  TargetDepth := OriginalDepth + 1;
  while AContext.Read do
    if AContext.IsStartElement or AContext.IsAttribute then
      if AContext.TestExpression('PublicAccessBlockConfiguration', TargetDepth) then
      begin
        var Unmarshaller := TPublicAccessBlockConfigurationUnmarshaller.Instance;
        AResponse.PublicAccessBlockConfiguration := Unmarshaller.Unmarshall(AContext);
        Continue;
      end
    else
      if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
        Exit;
end;

function TGetPublicAccessBlockResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'NoSuchPublicAccessBlockConfigurationException' then
          Exit(TNoSuchPublicAccessBlockConfigurationExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TGetPublicAccessBlockResponseUnmarshaller.Create;
begin
  FInstance := TGetPublicAccessBlockResponseUnmarshaller.Create;
end;

class function TGetPublicAccessBlockResponseUnmarshaller.Instance: IGetPublicAccessBlockResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
