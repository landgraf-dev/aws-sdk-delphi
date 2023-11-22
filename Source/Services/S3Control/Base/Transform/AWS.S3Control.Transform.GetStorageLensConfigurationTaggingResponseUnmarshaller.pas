unit AWS.S3Control.Transform.GetStorageLensConfigurationTaggingResponseUnmarshaller;

interface

uses
  AWS.S3Control.Model.GetStorageLensConfigurationTaggingResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.S3Control.Transform.StorageLensTagUnmarshaller, 
  AWS.S3Control.Model.StorageLensTag, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3Control.Exception;

type
  IGetStorageLensConfigurationTaggingResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetStorageLensConfigurationTaggingResponseUnmarshaller = class(TXmlResponseUnmarshaller, IGetStorageLensConfigurationTaggingResponseUnmarshaller)
  strict private
    class var FInstance: IGetStorageLensConfigurationTaggingResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetStorageLensConfigurationTaggingResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetStorageLensConfigurationTaggingResponseUnmarshaller; static;
  end;
  
implementation

{ TGetStorageLensConfigurationTaggingResponseUnmarshaller }

function TGetStorageLensConfigurationTaggingResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetStorageLensConfigurationTaggingResponse;
begin
  Response := TGetStorageLensConfigurationTaggingResponse.Create;
  try
    UnmarshallResult(AContext, Response);
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class procedure TGetStorageLensConfigurationTaggingResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetStorageLensConfigurationTaggingResponse);
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
      if AContext.TestExpression('Tags/Tag', TargetDepth) then
      begin
        var Unmarshaller := TStorageLensTagUnmarshaller.Instance;
        AResponse.Tags.Add(Unmarshaller.Unmarshall(AContext));
        Continue;
      end
    else
      if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
        Exit;
end;

function TGetStorageLensConfigurationTaggingResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TGetStorageLensConfigurationTaggingResponseUnmarshaller.Create;
begin
  FInstance := TGetStorageLensConfigurationTaggingResponseUnmarshaller.Create;
end;

class function TGetStorageLensConfigurationTaggingResponseUnmarshaller.Instance: IGetStorageLensConfigurationTaggingResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
