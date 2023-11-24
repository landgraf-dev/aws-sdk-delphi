unit AWS.S3.Transform.GetBucketOwnershipControlsResponseUnmarshaller;

interface

uses
  AWS.S3.Model.GetBucketOwnershipControlsResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.S3.Transform.OwnershipControlsUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3.Exception;

type
  IGetBucketOwnershipControlsResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetBucketOwnershipControlsResponseUnmarshaller = class(TXmlResponseUnmarshaller, IGetBucketOwnershipControlsResponseUnmarshaller)
  strict private
    class var FInstance: IGetBucketOwnershipControlsResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetBucketOwnershipControlsResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetBucketOwnershipControlsResponseUnmarshaller; static;
  end;
  
implementation

{ TGetBucketOwnershipControlsResponseUnmarshaller }

function TGetBucketOwnershipControlsResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetBucketOwnershipControlsResponse;
begin
  Response := TGetBucketOwnershipControlsResponse.Create;
  try
    UnmarshallResult(AContext, Response);
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class procedure TGetBucketOwnershipControlsResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetBucketOwnershipControlsResponse);
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
begin
  OriginalDepth := AContext.CurrentDepth;
  TargetDepth := OriginalDepth + 1;
  while AContext.Read do
    if AContext.IsStartElement or AContext.IsAttribute then
      if AContext.TestExpression('OwnershipControls', TargetDepth) then
      begin
        var Unmarshaller := TOwnershipControlsUnmarshaller.Instance;
        AResponse.OwnershipControls := Unmarshaller.Unmarshall(AContext);
        Continue;
      end
    else
      if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
        Exit;
end;

function TGetBucketOwnershipControlsResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TGetBucketOwnershipControlsResponseUnmarshaller.Create;
begin
  FInstance := TGetBucketOwnershipControlsResponseUnmarshaller.Create;
end;

class function TGetBucketOwnershipControlsResponseUnmarshaller.Instance: IGetBucketOwnershipControlsResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
