unit AWS.S3.Transform.ListBucketInventoryConfigurationsResponseUnmarshaller;

interface

uses
  AWS.S3.Model.ListBucketInventoryConfigurationsResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.S3.Transform.InventoryConfigurationUnmarshaller, 
  AWS.S3.Model.InventoryConfiguration, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3.Exception;

type
  IListBucketInventoryConfigurationsResponseUnmarshaller = IResponseUnmarshaller;
  
  TListBucketInventoryConfigurationsResponseUnmarshaller = class(TXmlResponseUnmarshaller, IListBucketInventoryConfigurationsResponseUnmarshaller)
  strict private
    class var FInstance: IListBucketInventoryConfigurationsResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TListBucketInventoryConfigurationsResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IListBucketInventoryConfigurationsResponseUnmarshaller; static;
  end;
  
implementation

{ TListBucketInventoryConfigurationsResponseUnmarshaller }

function TListBucketInventoryConfigurationsResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TListBucketInventoryConfigurationsResponse;
begin
  Response := TListBucketInventoryConfigurationsResponse.Create;
  try
    UnmarshallResult(AContext, Response);
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class procedure TListBucketInventoryConfigurationsResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TListBucketInventoryConfigurationsResponse);
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
      if AContext.TestExpression('ContinuationToken', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.ContinuationToken := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('member', TargetDepth) then
      begin
        var Unmarshaller := TInventoryConfigurationUnmarshaller.Instance;
        AResponse.InventoryConfigurationList.Add(Unmarshaller.Unmarshall(AContext));
        Continue;
      end;
      if AContext.TestExpression('IsTruncated', TargetDepth) then
      begin
        var Unmarshaller := TBooleanUnmarshaller.Instance;
        AResponse.IsTruncated := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('NextContinuationToken', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.NextContinuationToken := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end
    else
      if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
        Exit;
end;

function TListBucketInventoryConfigurationsResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TListBucketInventoryConfigurationsResponseUnmarshaller.Create;
begin
  FInstance := TListBucketInventoryConfigurationsResponseUnmarshaller.Create;
end;

class function TListBucketInventoryConfigurationsResponseUnmarshaller.Instance: IListBucketInventoryConfigurationsResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
