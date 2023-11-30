unit AWS.S3.Transform.ListPartsResponseUnmarshaller;

interface

uses
  AWS.S3.Model.ListPartsResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.S3.Transform.InitiatorUnmarshaller, 
  AWS.S3.Transform.OwnerUnmarshaller, 
  AWS.S3.Transform.PartUnmarshaller, 
  AWS.S3.Model.Part, 
  AWS.S3.Internal.S3Transforms, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3.Exception;

type
  IListPartsResponseUnmarshaller = IResponseUnmarshaller;
  
  TListPartsResponseUnmarshaller = class(TXmlResponseUnmarshaller, IListPartsResponseUnmarshaller)
  strict private
    class var FInstance: IListPartsResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TListPartsResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IListPartsResponseUnmarshaller; static;
  end;
  
implementation

{ TListPartsResponseUnmarshaller }

function TListPartsResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TListPartsResponse;
begin
  Response := TListPartsResponse.Create;
  try
    Result := Response;
    UnmarshallResult(AContext, Response);
    if AContext.ResponseData.IsHeaderPresent('x-amz-abort-date') then
      Response.AbortDate := TS3Transforms.ToDateTime(AContext.ResponseData.GetHeaderValue('x-amz-abort-date'));
    if AContext.ResponseData.IsHeaderPresent('x-amz-abort-rule-id') then
      Response.AbortRuleId := AContext.ResponseData.GetHeaderValue('x-amz-abort-rule-id');
    if AContext.ResponseData.IsHeaderPresent('x-amz-request-charged') then
      Response.RequestCharged := AContext.ResponseData.GetHeaderValue('x-amz-request-charged');
  except
    Response.Free;
    raise;
  end;
end;

class procedure TListPartsResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TListPartsResponse);
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
      if AContext.TestExpression('Initiator', TargetDepth) then
      begin
        var Unmarshaller := TInitiatorUnmarshaller.Instance;
        AResponse.Initiator := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('IsTruncated', TargetDepth) then
      begin
        var Unmarshaller := TBooleanUnmarshaller.Instance;
        AResponse.IsTruncated := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Key', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.Key := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('MaxParts', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.Instance;
        AResponse.MaxParts := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('NextPartNumberMarker', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.Instance;
        AResponse.NextPartNumberMarker := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Owner', TargetDepth) then
      begin
        var Unmarshaller := TOwnerUnmarshaller.Instance;
        AResponse.Owner := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('PartNumberMarker', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.Instance;
        AResponse.PartNumberMarker := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('member', TargetDepth) then
      begin
        var Unmarshaller := TPartUnmarshaller.Instance;
        AResponse.Parts.Add(Unmarshaller.Unmarshall(AContext));
        Continue;
      end;
      if AContext.TestExpression('StorageClass', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.StorageClass := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('UploadId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.UploadId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end
    else
      if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
        Exit;
end;

function TListPartsResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TListPartsResponseUnmarshaller.Create;
begin
  FInstance := TListPartsResponseUnmarshaller.Create;
end;

class function TListPartsResponseUnmarshaller.Instance: IListPartsResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
