unit AWS.S3Control.Transform.GetAccessPointPolicyForObjectLambdaResponseUnmarshaller;

interface

uses
  AWS.S3Control.Model.GetAccessPointPolicyForObjectLambdaResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3Control.Exception;

type
  IGetAccessPointPolicyForObjectLambdaResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetAccessPointPolicyForObjectLambdaResponseUnmarshaller = class(TXmlResponseUnmarshaller, IGetAccessPointPolicyForObjectLambdaResponseUnmarshaller)
  strict private
    class var FInstance: IGetAccessPointPolicyForObjectLambdaResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetAccessPointPolicyForObjectLambdaResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetAccessPointPolicyForObjectLambdaResponseUnmarshaller; static;
  end;
  
implementation

{ TGetAccessPointPolicyForObjectLambdaResponseUnmarshaller }

function TGetAccessPointPolicyForObjectLambdaResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetAccessPointPolicyForObjectLambdaResponse;
begin
  Response := TGetAccessPointPolicyForObjectLambdaResponse.Create;
  try
    Result := Response;
    UnmarshallResult(AContext, Response);
  except
    Response.Free;
    raise;
  end;
end;

class procedure TGetAccessPointPolicyForObjectLambdaResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetAccessPointPolicyForObjectLambdaResponse);
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
      if AContext.TestExpression('Policy', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.Policy := Unmarshaller.Unmarshall(AContext);
        Continue;
      end
    else
      if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
        Exit;
end;

function TGetAccessPointPolicyForObjectLambdaResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TGetAccessPointPolicyForObjectLambdaResponseUnmarshaller.Create;
begin
  FInstance := TGetAccessPointPolicyForObjectLambdaResponseUnmarshaller.Create;
end;

class function TGetAccessPointPolicyForObjectLambdaResponseUnmarshaller.Instance: IGetAccessPointPolicyForObjectLambdaResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
