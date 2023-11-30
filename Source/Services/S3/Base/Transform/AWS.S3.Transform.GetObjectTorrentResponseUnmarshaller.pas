unit AWS.S3.Transform.GetObjectTorrentResponseUnmarshaller;

interface

uses
  AWS.S3.Model.GetObjectTorrentResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  System.Classes, 
  AWS.SDKUtils, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  AWS.S3.Exception;

type
  IGetObjectTorrentResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetObjectTorrentResponseUnmarshaller = class(TXmlResponseUnmarshaller, IGetObjectTorrentResponseUnmarshaller)
  strict private
    class var FInstance: IGetObjectTorrentResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetObjectTorrentResponseUnmarshaller; static;
  end;
  
implementation

{ TGetObjectTorrentResponseUnmarshaller }

function TGetObjectTorrentResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetObjectTorrentResponse;
begin
  Response := TGetObjectTorrentResponse.Create;
  try
    Result := Response;
    var ms := TBytesStream.Create;
    Response.Body := ms;
    Response.KeepBody := False;
    TAWSSDKUtils.CopyStream(AContext.Stream, ms);
    if AContext.ResponseData.IsHeaderPresent('x-amz-request-charged') then
      Response.RequestCharged := AContext.ResponseData.GetHeaderValue('x-amz-request-charged');
  except
    Response.Free;
    raise;
  end;
end;

function TGetObjectTorrentResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TGetObjectTorrentResponseUnmarshaller.Create;
begin
  FInstance := TGetObjectTorrentResponseUnmarshaller.Create;
end;

class function TGetObjectTorrentResponseUnmarshaller.Instance: IGetObjectTorrentResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
