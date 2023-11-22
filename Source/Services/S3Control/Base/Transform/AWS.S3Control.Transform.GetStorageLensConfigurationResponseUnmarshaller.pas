unit AWS.S3Control.Transform.GetStorageLensConfigurationResponseUnmarshaller;

interface

uses
  AWS.S3Control.Model.GetStorageLensConfigurationResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.S3Control.Transform.StorageLensConfigurationUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3Control.Exception;

type
  IGetStorageLensConfigurationResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetStorageLensConfigurationResponseUnmarshaller = class(TXmlResponseUnmarshaller, IGetStorageLensConfigurationResponseUnmarshaller)
  strict private
    class var FInstance: IGetStorageLensConfigurationResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetStorageLensConfigurationResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetStorageLensConfigurationResponseUnmarshaller; static;
  end;
  
implementation

{ TGetStorageLensConfigurationResponseUnmarshaller }

function TGetStorageLensConfigurationResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetStorageLensConfigurationResponse;
begin
  Response := TGetStorageLensConfigurationResponse.Create;
  try
    AContext.AllowEmptyElementLookup.Add('SSE-S3');
    UnmarshallResult(AContext, Response);
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class procedure TGetStorageLensConfigurationResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetStorageLensConfigurationResponse);
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
begin
  OriginalDepth := AContext.CurrentDepth;
  TargetDepth := OriginalDepth + 1;
  while AContext.Read do
    if AContext.IsStartElement or AContext.IsAttribute then
      if AContext.TestExpression('StorageLensConfiguration', TargetDepth) then
      begin
        var Unmarshaller := TStorageLensConfigurationUnmarshaller.Instance;
        AResponse.StorageLensConfiguration := Unmarshaller.Unmarshall(AContext);
        Continue;
      end
    else
      if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
        Exit;
end;

function TGetStorageLensConfigurationResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TGetStorageLensConfigurationResponseUnmarshaller.Create;
begin
  FInstance := TGetStorageLensConfigurationResponseUnmarshaller.Create;
end;

class function TGetStorageLensConfigurationResponseUnmarshaller.Instance: IGetStorageLensConfigurationResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
