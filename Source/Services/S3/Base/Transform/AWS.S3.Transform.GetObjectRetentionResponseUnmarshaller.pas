unit AWS.S3.Transform.GetObjectRetentionResponseUnmarshaller;

interface

uses
  AWS.S3.Model.GetObjectRetentionResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.S3.Transform.ObjectLockRetentionUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3.Exception;

type
  IGetObjectRetentionResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetObjectRetentionResponseUnmarshaller = class(TXmlResponseUnmarshaller, IGetObjectRetentionResponseUnmarshaller)
  strict private
    class var FInstance: IGetObjectRetentionResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetObjectRetentionResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetObjectRetentionResponseUnmarshaller; static;
  end;
  
implementation

{ TGetObjectRetentionResponseUnmarshaller }

function TGetObjectRetentionResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetObjectRetentionResponse;
begin
  Response := TGetObjectRetentionResponse.Create;
  try
    Result := Response;
    UnmarshallResult(AContext, Response);
  except
    Response.Free;
    raise;
  end;
end;

class procedure TGetObjectRetentionResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetObjectRetentionResponse);
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
begin
  OriginalDepth := AContext.CurrentDepth;
  TargetDepth := OriginalDepth + 1;
  while AContext.Read do
    if AContext.IsStartElement or AContext.IsAttribute then
      if AContext.TestExpression('Retention', TargetDepth) then
      begin
        var Unmarshaller := TObjectLockRetentionUnmarshaller.Instance;
        AResponse.Retention := Unmarshaller.Unmarshall(AContext);
        Continue;
      end
    else
      if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
        Exit;
end;

function TGetObjectRetentionResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TGetObjectRetentionResponseUnmarshaller.Create;
begin
  FInstance := TGetObjectRetentionResponseUnmarshaller.Create;
end;

class function TGetObjectRetentionResponseUnmarshaller.Instance: IGetObjectRetentionResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
