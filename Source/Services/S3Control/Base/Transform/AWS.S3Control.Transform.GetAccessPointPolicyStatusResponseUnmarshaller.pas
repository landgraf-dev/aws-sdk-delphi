unit AWS.S3Control.Transform.GetAccessPointPolicyStatusResponseUnmarshaller;

interface

uses
  AWS.S3Control.Model.GetAccessPointPolicyStatusResponse, 
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
  IGetAccessPointPolicyStatusResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetAccessPointPolicyStatusResponseUnmarshaller = class(TXmlResponseUnmarshaller, IGetAccessPointPolicyStatusResponseUnmarshaller)
  strict private
    class var FInstance: IGetAccessPointPolicyStatusResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetAccessPointPolicyStatusResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetAccessPointPolicyStatusResponseUnmarshaller; static;
  end;
  
implementation

{ TGetAccessPointPolicyStatusResponseUnmarshaller }

function TGetAccessPointPolicyStatusResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetAccessPointPolicyStatusResponse;
begin
  Response := TGetAccessPointPolicyStatusResponse.Create;
  try
    Result := Response;
    UnmarshallResult(AContext, Response);
  except
    Response.Free;
    raise;
  end;
end;

class procedure TGetAccessPointPolicyStatusResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetAccessPointPolicyStatusResponse);
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

function TGetAccessPointPolicyStatusResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TGetAccessPointPolicyStatusResponseUnmarshaller.Create;
begin
  FInstance := TGetAccessPointPolicyStatusResponseUnmarshaller.Create;
end;

class function TGetAccessPointPolicyStatusResponseUnmarshaller.Instance: IGetAccessPointPolicyStatusResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
