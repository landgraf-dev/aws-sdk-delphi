unit AWS.S3.Transform.GetObjectLegalHoldResponseUnmarshaller;

interface

uses
  AWS.S3.Model.GetObjectLegalHoldResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.S3.Transform.ObjectLockLegalHoldUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3.Exception;

type
  IGetObjectLegalHoldResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetObjectLegalHoldResponseUnmarshaller = class(TXmlResponseUnmarshaller, IGetObjectLegalHoldResponseUnmarshaller)
  strict private
    class var FInstance: IGetObjectLegalHoldResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetObjectLegalHoldResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetObjectLegalHoldResponseUnmarshaller; static;
  end;
  
implementation

{ TGetObjectLegalHoldResponseUnmarshaller }

function TGetObjectLegalHoldResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetObjectLegalHoldResponse;
begin
  Response := TGetObjectLegalHoldResponse.Create;
  try
    UnmarshallResult(AContext, Response);
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class procedure TGetObjectLegalHoldResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TGetObjectLegalHoldResponse);
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
begin
  OriginalDepth := AContext.CurrentDepth;
  TargetDepth := OriginalDepth + 1;
  while AContext.Read do
    if AContext.IsStartElement or AContext.IsAttribute then
      if AContext.TestExpression('LegalHold', TargetDepth) then
      begin
        var Unmarshaller := TObjectLockLegalHoldUnmarshaller.Instance;
        AResponse.LegalHold := Unmarshaller.Unmarshall(AContext);
        Continue;
      end
    else
      if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
        Exit;
end;

function TGetObjectLegalHoldResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TGetObjectLegalHoldResponseUnmarshaller.Create;
begin
  FInstance := TGetObjectLegalHoldResponseUnmarshaller.Create;
end;

class function TGetObjectLegalHoldResponseUnmarshaller.Instance: IGetObjectLegalHoldResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
