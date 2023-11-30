unit AWS.S3Control.Transform.GetAccessPointPolicyStatusForObjectLambdaResponseUnmarshaller;

interface

uses
  AWS.S3Control.Model.GetAccessPointPolicyStatusForObjectLambdaResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.S3Control.Transform.PolicyStatusUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3Control.Exception;

type
  IGetAccessPointPolicyStatusForObjectLambdaResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetAccessPointPolicyStatusForObjectLambdaResponseUnmarshaller = class(TXmlResponseUnmarshaller, IGetAccessPointPolicyStatusForObjectLambdaResponseUnmarshaller)
  strict private
    class var FInstance: IGetAccessPointPolicyStatusForObjectLambdaResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetAccessPointPolicyStatusForObjectLambdaResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetAccessPointPolicyStatusForObjectLambdaResponseUnmarshaller; static;
  end;
  
implementation

{ TGetAccessPointPolicyStatusForObjectLambdaResponseUnmarshaller }

function TGetAccessPointPolicyStatusForObjectLambdaResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetAccessPointPolicyStatusForObjectLambdaResponse;
begin
  Response := TGetAccessPointPolicyStatusForObjectLambdaResponse.Create;
  try
    Result := Response;
    UnmarshallResult(AContext, Response);
  except
    Response.Free;
    raise;
  end;
end;

class procedure TGetAccessPointPolicyStatusForObjectLambdaResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetAccessPointPolicyStatusForObjectLambdaResponse);
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

function TGetAccessPointPolicyStatusForObjectLambdaResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TGetAccessPointPolicyStatusForObjectLambdaResponseUnmarshaller.Create;
begin
  FInstance := TGetAccessPointPolicyStatusForObjectLambdaResponseUnmarshaller.Create;
end;

class function TGetAccessPointPolicyStatusForObjectLambdaResponseUnmarshaller.Instance: IGetAccessPointPolicyStatusForObjectLambdaResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
