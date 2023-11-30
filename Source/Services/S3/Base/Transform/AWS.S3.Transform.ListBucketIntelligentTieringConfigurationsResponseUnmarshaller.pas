unit AWS.S3.Transform.ListBucketIntelligentTieringConfigurationsResponseUnmarshaller;

interface

uses
  AWS.S3.Model.ListBucketIntelligentTieringConfigurationsResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.S3.Transform.IntelligentTieringConfigurationUnmarshaller, 
  AWS.S3.Model.IntelligentTieringConfiguration, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3.Exception;

type
  IListBucketIntelligentTieringConfigurationsResponseUnmarshaller = IResponseUnmarshaller;
  
  TListBucketIntelligentTieringConfigurationsResponseUnmarshaller = class(TXmlResponseUnmarshaller, IListBucketIntelligentTieringConfigurationsResponseUnmarshaller)
  strict private
    class var FInstance: IListBucketIntelligentTieringConfigurationsResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TListBucketIntelligentTieringConfigurationsResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IListBucketIntelligentTieringConfigurationsResponseUnmarshaller; static;
  end;
  
implementation

{ TListBucketIntelligentTieringConfigurationsResponseUnmarshaller }

function TListBucketIntelligentTieringConfigurationsResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TListBucketIntelligentTieringConfigurationsResponse;
begin
  Response := TListBucketIntelligentTieringConfigurationsResponse.Create;
  try
    Result := Response;
    UnmarshallResult(AContext, Response);
  except
    Response.Free;
    raise;
  end;
end;

class procedure TListBucketIntelligentTieringConfigurationsResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TListBucketIntelligentTieringConfigurationsResponse);
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
        var Unmarshaller := TIntelligentTieringConfigurationUnmarshaller.Instance;
        AResponse.IntelligentTieringConfigurationList.Add(Unmarshaller.Unmarshall(AContext));
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

function TListBucketIntelligentTieringConfigurationsResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TListBucketIntelligentTieringConfigurationsResponseUnmarshaller.Create;
begin
  FInstance := TListBucketIntelligentTieringConfigurationsResponseUnmarshaller.Create;
end;

class function TListBucketIntelligentTieringConfigurationsResponseUnmarshaller.Instance: IListBucketIntelligentTieringConfigurationsResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
