unit AWS.S3Control.Transform.GetAccessPointPolicyResponseUnmarshaller;

interface

uses
  AWS.S3Control.Model.GetAccessPointPolicyResponse, 
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
  IGetAccessPointPolicyResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetAccessPointPolicyResponseUnmarshaller = class(TXmlResponseUnmarshaller, IGetAccessPointPolicyResponseUnmarshaller)
  strict private
    class var FInstance: IGetAccessPointPolicyResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetAccessPointPolicyResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetAccessPointPolicyResponseUnmarshaller; static;
  end;
  
implementation

{ TGetAccessPointPolicyResponseUnmarshaller }

function TGetAccessPointPolicyResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetAccessPointPolicyResponse;
begin
  Response := TGetAccessPointPolicyResponse.Create;
  try
    UnmarshallResult(AContext, Response);
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class procedure TGetAccessPointPolicyResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetAccessPointPolicyResponse);
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

function TGetAccessPointPolicyResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TGetAccessPointPolicyResponseUnmarshaller.Create;
begin
  FInstance := TGetAccessPointPolicyResponseUnmarshaller.Create;
end;

class function TGetAccessPointPolicyResponseUnmarshaller.Instance: IGetAccessPointPolicyResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
