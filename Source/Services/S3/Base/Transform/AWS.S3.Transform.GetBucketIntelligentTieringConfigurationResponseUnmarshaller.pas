unit AWS.S3.Transform.GetBucketIntelligentTieringConfigurationResponseUnmarshaller;

interface

uses
  AWS.S3.Model.GetBucketIntelligentTieringConfigurationResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.S3.Transform.IntelligentTieringConfigurationUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3.Exception;

type
  IGetBucketIntelligentTieringConfigurationResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetBucketIntelligentTieringConfigurationResponseUnmarshaller = class(TXmlResponseUnmarshaller, IGetBucketIntelligentTieringConfigurationResponseUnmarshaller)
  strict private
    class var FInstance: IGetBucketIntelligentTieringConfigurationResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetBucketIntelligentTieringConfigurationResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetBucketIntelligentTieringConfigurationResponseUnmarshaller; static;
  end;
  
implementation

{ TGetBucketIntelligentTieringConfigurationResponseUnmarshaller }

function TGetBucketIntelligentTieringConfigurationResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetBucketIntelligentTieringConfigurationResponse;
begin
  Response := TGetBucketIntelligentTieringConfigurationResponse.Create;
  try
    Result := Response;
    UnmarshallResult(AContext, Response);
  except
    Response.Free;
    raise;
  end;
end;

class procedure TGetBucketIntelligentTieringConfigurationResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetBucketIntelligentTieringConfigurationResponse);
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
begin
  OriginalDepth := AContext.CurrentDepth;
  TargetDepth := OriginalDepth + 1;
  while AContext.Read do
    if AContext.IsStartElement or AContext.IsAttribute then
      if AContext.TestExpression('IntelligentTieringConfiguration', TargetDepth) then
      begin
        var Unmarshaller := TIntelligentTieringConfigurationUnmarshaller.Instance;
        AResponse.IntelligentTieringConfiguration := Unmarshaller.Unmarshall(AContext);
        Continue;
      end
    else
      if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
        Exit;
end;

function TGetBucketIntelligentTieringConfigurationResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TGetBucketIntelligentTieringConfigurationResponseUnmarshaller.Create;
begin
  FInstance := TGetBucketIntelligentTieringConfigurationResponseUnmarshaller.Create;
end;

class function TGetBucketIntelligentTieringConfigurationResponseUnmarshaller.Instance: IGetBucketIntelligentTieringConfigurationResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
