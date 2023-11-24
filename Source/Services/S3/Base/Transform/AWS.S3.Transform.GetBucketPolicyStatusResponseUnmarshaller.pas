unit AWS.S3.Transform.GetBucketPolicyStatusResponseUnmarshaller;

interface

uses
  AWS.S3.Model.GetBucketPolicyStatusResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.S3.Transform.PolicyStatusUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3.Exception;

type
  IGetBucketPolicyStatusResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetBucketPolicyStatusResponseUnmarshaller = class(TXmlResponseUnmarshaller, IGetBucketPolicyStatusResponseUnmarshaller)
  strict private
    class var FInstance: IGetBucketPolicyStatusResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetBucketPolicyStatusResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetBucketPolicyStatusResponseUnmarshaller; static;
  end;
  
implementation

{ TGetBucketPolicyStatusResponseUnmarshaller }

function TGetBucketPolicyStatusResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetBucketPolicyStatusResponse;
begin
  Response := TGetBucketPolicyStatusResponse.Create;
  try
    UnmarshallResult(AContext, Response);
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class procedure TGetBucketPolicyStatusResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetBucketPolicyStatusResponse);
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
begin
  OriginalDepth := AContext.CurrentDepth;
  TargetDepth := OriginalDepth + 1;
  while AContext.Read do
    if AContext.IsStartElement or AContext.IsAttribute then
      if AContext.TestExpression('PolicyStatus', TargetDepth) then
      begin
        var Unmarshaller := TPolicyStatusUnmarshaller.Instance;
        AResponse.PolicyStatus := Unmarshaller.Unmarshall(AContext);
        Continue;
      end
    else
      if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
        Exit;
end;

function TGetBucketPolicyStatusResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TGetBucketPolicyStatusResponseUnmarshaller.Create;
begin
  FInstance := TGetBucketPolicyStatusResponseUnmarshaller.Create;
end;

class function TGetBucketPolicyStatusResponseUnmarshaller.Instance: IGetBucketPolicyStatusResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
