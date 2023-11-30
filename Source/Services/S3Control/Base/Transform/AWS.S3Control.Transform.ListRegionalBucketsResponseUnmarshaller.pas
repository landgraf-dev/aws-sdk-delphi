unit AWS.S3Control.Transform.ListRegionalBucketsResponseUnmarshaller;

interface

uses
  AWS.S3Control.Model.ListRegionalBucketsResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.S3Control.Transform.RegionalBucketUnmarshaller, 
  AWS.S3Control.Model.RegionalBucket, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3Control.Exception;

type
  IListRegionalBucketsResponseUnmarshaller = IResponseUnmarshaller;
  
  TListRegionalBucketsResponseUnmarshaller = class(TXmlResponseUnmarshaller, IListRegionalBucketsResponseUnmarshaller)
  strict private
    class var FInstance: IListRegionalBucketsResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TListRegionalBucketsResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IListRegionalBucketsResponseUnmarshaller; static;
  end;
  
implementation

{ TListRegionalBucketsResponseUnmarshaller }

function TListRegionalBucketsResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TListRegionalBucketsResponse;
begin
  Response := TListRegionalBucketsResponse.Create;
  try
    Result := Response;
    UnmarshallResult(AContext, Response);
  except
    Response.Free;
    raise;
  end;
end;

class procedure TListRegionalBucketsResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TListRegionalBucketsResponse);
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
      if AContext.TestExpression('NextToken', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.NextToken := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('RegionalBucketList/RegionalBucket', TargetDepth) then
      begin
        var Unmarshaller := TRegionalBucketUnmarshaller.Instance;
        AResponse.RegionalBucketList.Add(Unmarshaller.Unmarshall(AContext));
        Continue;
      end;
    end
    else
      if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
        Exit;
end;

function TListRegionalBucketsResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TListRegionalBucketsResponseUnmarshaller.Create;
begin
  FInstance := TListRegionalBucketsResponseUnmarshaller.Create;
end;

class function TListRegionalBucketsResponseUnmarshaller.Instance: IListRegionalBucketsResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
