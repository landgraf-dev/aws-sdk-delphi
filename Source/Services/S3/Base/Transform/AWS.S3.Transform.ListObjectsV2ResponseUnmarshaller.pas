unit AWS.S3.Transform.ListObjectsV2ResponseUnmarshaller;

interface

uses
  AWS.S3.Model.ListObjectsV2Response, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.S3.Transform.CommonPrefixUnmarshaller, 
  AWS.S3.Model.CommonPrefix, 
  AWS.S3.Transform.ObjectUnmarshaller, 
  AWS.S3.Model.ObjectTypes, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3.Transform.NoSuchBucketExceptionUnmarshaller, 
  AWS.S3.Exception;

type
  IListObjectsV2ResponseUnmarshaller = IResponseUnmarshaller;
  
  TListObjectsV2ResponseUnmarshaller = class(TXmlResponseUnmarshaller, IListObjectsV2ResponseUnmarshaller)
  strict private
    class var FInstance: IListObjectsV2ResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TListObjectsV2Response); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IListObjectsV2ResponseUnmarshaller; static;
  end;
  
implementation

{ TListObjectsV2ResponseUnmarshaller }

function TListObjectsV2ResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TListObjectsV2Response;
begin
  Response := TListObjectsV2Response.Create;
  try
    Result := Response;
    UnmarshallResult(AContext, Response);
  except
    Response.Free;
    raise;
  end;
end;

class procedure TListObjectsV2ResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TListObjectsV2Response);
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
      if AContext.TestExpression('member', TargetDepth) then
      begin
        var Unmarshaller := TCommonPrefixUnmarshaller.Instance;
        AResponse.CommonPrefixes.Add(Unmarshaller.Unmarshall(AContext));
        Continue;
      end;
      if AContext.TestExpression('member', TargetDepth) then
      begin
        var Unmarshaller := TObjectUnmarshaller.Instance;
        AResponse.Contents.Add(Unmarshaller.Unmarshall(AContext));
        Continue;
      end;
      if AContext.TestExpression('ContinuationToken', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.ContinuationToken := Unmarshaller.Unmarshall(AContext);
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
      if AContext.TestExpression('KeyCount', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.Instance;
        AResponse.KeyCount := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('MaxKeys', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.Instance;
        AResponse.MaxKeys := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Name', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.Name := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('NextContinuationToken', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.NextContinuationToken := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Prefix', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.Prefix := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('StartAfter', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.StartAfter := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end
    else
      if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
        Exit;
end;

function TListObjectsV2ResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'NoSuchBucketException' then
          Exit(TNoSuchBucketExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TListObjectsV2ResponseUnmarshaller.Create;
begin
  FInstance := TListObjectsV2ResponseUnmarshaller.Create;
end;

class function TListObjectsV2ResponseUnmarshaller.Instance: IListObjectsV2ResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
