unit AWS.S3Control.Transform.CreateBucketResponseUnmarshaller;

interface

uses
  AWS.S3Control.Model.CreateBucketResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3Control.Transform.BucketAlreadyExistsExceptionUnmarshaller, 
  AWS.S3Control.Transform.BucketAlreadyOwnedByYouExceptionUnmarshaller, 
  AWS.S3Control.Exception;

type
  ICreateBucketResponseUnmarshaller = IResponseUnmarshaller;
  
  TCreateBucketResponseUnmarshaller = class(TXmlResponseUnmarshaller, ICreateBucketResponseUnmarshaller)
  strict private
    class var FInstance: ICreateBucketResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TCreateBucketResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: ICreateBucketResponseUnmarshaller; static;
  end;
  
implementation

{ TCreateBucketResponseUnmarshaller }

function TCreateBucketResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TCreateBucketResponse;
begin
  Response := TCreateBucketResponse.Create;
  try
    Result := Response;
    UnmarshallResult(AContext, Response);
    if AContext.ResponseData.IsHeaderPresent('Location') then
      Response.Location := AContext.ResponseData.GetHeaderValue('Location');
  except
    Response.Free;
    raise;
  end;
end;

class procedure TCreateBucketResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TCreateBucketResponse);
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
      if AContext.TestExpression('BucketArn', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.BucketArn := Unmarshaller.Unmarshall(AContext);
        Continue;
      end
    else
      if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
        Exit;
end;

function TCreateBucketResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'BucketAlreadyExistsException' then
          Exit(TBucketAlreadyExistsExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'BucketAlreadyOwnedByYouException' then
          Exit(TBucketAlreadyOwnedByYouExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TCreateBucketResponseUnmarshaller.Create;
begin
  FInstance := TCreateBucketResponseUnmarshaller.Create;
end;

class function TCreateBucketResponseUnmarshaller.Instance: ICreateBucketResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
