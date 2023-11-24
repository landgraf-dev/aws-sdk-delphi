unit AWS.S3.Transform.ListMultipartUploadsResponseUnmarshaller;

interface

uses
  AWS.S3.Model.ListMultipartUploadsResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.S3.Transform.CommonPrefixUnmarshaller, 
  AWS.S3.Model.CommonPrefix, 
  AWS.S3.Transform.MultipartUploadUnmarshaller, 
  AWS.S3.Model.MultipartUpload, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3.Exception;

type
  IListMultipartUploadsResponseUnmarshaller = IResponseUnmarshaller;
  
  TListMultipartUploadsResponseUnmarshaller = class(TXmlResponseUnmarshaller, IListMultipartUploadsResponseUnmarshaller)
  strict private
    class var FInstance: IListMultipartUploadsResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TListMultipartUploadsResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IListMultipartUploadsResponseUnmarshaller; static;
  end;
  
implementation

{ TListMultipartUploadsResponseUnmarshaller }

function TListMultipartUploadsResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TListMultipartUploadsResponse;
begin
  Response := TListMultipartUploadsResponse.Create;
  try
    UnmarshallResult(AContext, Response);
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class procedure TListMultipartUploadsResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TListMultipartUploadsResponse);
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
        AResponse.BucketName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('member', TargetDepth) then
      begin
        var Unmarshaller := TCommonPrefixUnmarshaller.Instance;
        AResponse.CommonPrefixes.Add(Unmarshaller.Unmarshall(AContext));
        Continue;
      end;
      if AContext.TestExpression('Delimiter', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.Delimiter := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('EncodingType', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.EncodingType := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('IsTruncated', TargetDepth) then
      begin
        var Unmarshaller := TBooleanUnmarshaller.Instance;
        AResponse.IsTruncated := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('KeyMarker', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.KeyMarker := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('MaxUploads', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.Instance;
        AResponse.MaxUploads := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('NextKeyMarker', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.NextKeyMarker := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('NextUploadIdMarker', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.NextUploadIdMarker := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Prefix', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.Prefix := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('UploadIdMarker', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.UploadIdMarker := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('member', TargetDepth) then
      begin
        var Unmarshaller := TMultipartUploadUnmarshaller.Instance;
        AResponse.Uploads.Add(Unmarshaller.Unmarshall(AContext));
        Continue;
      end;
    end
    else
      if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
        Exit;
end;

function TListMultipartUploadsResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TListMultipartUploadsResponseUnmarshaller.Create;
begin
  FInstance := TListMultipartUploadsResponseUnmarshaller.Create;
end;

class function TListMultipartUploadsResponseUnmarshaller.Instance: IListMultipartUploadsResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
