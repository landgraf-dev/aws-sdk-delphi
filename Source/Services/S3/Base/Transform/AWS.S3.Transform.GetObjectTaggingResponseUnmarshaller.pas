unit AWS.S3.Transform.GetObjectTaggingResponseUnmarshaller;

interface

uses
  AWS.S3.Model.GetObjectTaggingResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.S3.Transform.TagUnmarshaller, 
  AWS.S3.Model.Tag, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3.Exception;

type
  IGetObjectTaggingResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetObjectTaggingResponseUnmarshaller = class(TXmlResponseUnmarshaller, IGetObjectTaggingResponseUnmarshaller)
  strict private
    class var FInstance: IGetObjectTaggingResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetObjectTaggingResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetObjectTaggingResponseUnmarshaller; static;
  end;
  
implementation

{ TGetObjectTaggingResponseUnmarshaller }

function TGetObjectTaggingResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetObjectTaggingResponse;
begin
  Response := TGetObjectTaggingResponse.Create;
  try
    Result := Response;
    UnmarshallResult(AContext, Response);
    if AContext.ResponseData.IsHeaderPresent('x-amz-version-id') then
      Response.VersionId := AContext.ResponseData.GetHeaderValue('x-amz-version-id');
  except
    Response.Free;
    raise;
  end;
end;

class procedure TGetObjectTaggingResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetObjectTaggingResponse);
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
      if AContext.TestExpression('TagSet/Tag', TargetDepth) then
      begin
        var Unmarshaller := TTagUnmarshaller.Instance;
        AResponse.TagSet.Add(Unmarshaller.Unmarshall(AContext));
        Continue;
      end
    else
      if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
        Exit;
end;

function TGetObjectTaggingResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TGetObjectTaggingResponseUnmarshaller.Create;
begin
  FInstance := TGetObjectTaggingResponseUnmarshaller.Create;
end;

class function TGetObjectTaggingResponseUnmarshaller.Instance: IGetObjectTaggingResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
