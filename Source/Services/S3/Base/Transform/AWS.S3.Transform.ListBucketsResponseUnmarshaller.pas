unit AWS.S3.Transform.ListBucketsResponseUnmarshaller;

interface

uses
  AWS.S3.Model.ListBucketsResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.S3.Transform.BucketUnmarshaller, 
  AWS.S3.Model.Bucket, 
  AWS.S3.Transform.OwnerUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3.Exception;

type
  IListBucketsResponseUnmarshaller = IResponseUnmarshaller;
  
  TListBucketsResponseUnmarshaller = class(TXmlResponseUnmarshaller, IListBucketsResponseUnmarshaller)
  strict private
    class var FInstance: IListBucketsResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TListBucketsResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IListBucketsResponseUnmarshaller; static;
  end;
  
implementation

{ TListBucketsResponseUnmarshaller }

function TListBucketsResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TListBucketsResponse;
begin
  Response := TListBucketsResponse.Create;
  try
    Result := Response;
    UnmarshallResult(AContext, Response);
  except
    Response.Free;
    raise;
  end;
end;

class procedure TListBucketsResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TListBucketsResponse);
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
      if AContext.TestExpression('Buckets/Bucket', TargetDepth) then
      begin
        var Unmarshaller := TBucketUnmarshaller.Instance;
        AResponse.Buckets.Add(Unmarshaller.Unmarshall(AContext));
        Continue;
      end;
      if AContext.TestExpression('Owner', TargetDepth) then
      begin
        var Unmarshaller := TOwnerUnmarshaller.Instance;
        AResponse.Owner := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end
    else
      if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
        Exit;
end;

function TListBucketsResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TListBucketsResponseUnmarshaller.Create;
begin
  FInstance := TListBucketsResponseUnmarshaller.Create;
end;

class function TListBucketsResponseUnmarshaller.Instance: IListBucketsResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
