unit AWS.S3.Transform.SelectObjectContentResponseUnmarshaller;

interface

uses
  AWS.S3.Model.SelectObjectContentResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.S3.Transform.SelectObjectContentEventStreamUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3.Exception;

type
  ISelectObjectContentResponseUnmarshaller = IResponseUnmarshaller;
  
  TSelectObjectContentResponseUnmarshaller = class(TXmlResponseUnmarshaller, ISelectObjectContentResponseUnmarshaller)
  strict private
    class var FInstance: ISelectObjectContentResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TSelectObjectContentResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: ISelectObjectContentResponseUnmarshaller; static;
  end;
  
implementation

{ TSelectObjectContentResponseUnmarshaller }

function TSelectObjectContentResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TSelectObjectContentResponse;
begin
  Response := TSelectObjectContentResponse.Create;
  try
    AContext.AllowEmptyElementLookup.Add('Cont');
    AContext.AllowEmptyElementLookup.Add('End');
    UnmarshallResult(AContext, Response);
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class procedure TSelectObjectContentResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TSelectObjectContentResponse);
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
begin
  OriginalDepth := AContext.CurrentDepth;
  TargetDepth := OriginalDepth + 1;
  while AContext.Read do
    if AContext.IsStartElement or AContext.IsAttribute then
      if AContext.TestExpression('Payload', TargetDepth) then
      begin
        var Unmarshaller := TSelectObjectContentEventStreamUnmarshaller.Instance;
        AResponse.Payload := Unmarshaller.Unmarshall(AContext);
        Continue;
      end
    else
      if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
        Exit;
end;

function TSelectObjectContentResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TSelectObjectContentResponseUnmarshaller.Create;
begin
  FInstance := TSelectObjectContentResponseUnmarshaller.Create;
end;

class function TSelectObjectContentResponseUnmarshaller.Instance: ISelectObjectContentResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
