unit AWS.S3Control.Transform.PutPublicAccessBlockResponseUnmarshaller;

interface

uses
  AWS.S3Control.Model.PutPublicAccessBlockResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3Control.Exception;

type
  IPutPublicAccessBlockResponseUnmarshaller = IResponseUnmarshaller;
  
  TPutPublicAccessBlockResponseUnmarshaller = class(TXmlResponseUnmarshaller, IPutPublicAccessBlockResponseUnmarshaller)
  strict private
    class var FInstance: IPutPublicAccessBlockResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IPutPublicAccessBlockResponseUnmarshaller; static;
  end;
  
implementation

{ TPutPublicAccessBlockResponseUnmarshaller }

function TPutPublicAccessBlockResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TPutPublicAccessBlockResponse;
begin
  Response := TPutPublicAccessBlockResponse.Create;
  try
    Result := Response;
  except
    Response.Free;
    raise;
  end;
end;

function TPutPublicAccessBlockResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TPutPublicAccessBlockResponseUnmarshaller.Create;
begin
  FInstance := TPutPublicAccessBlockResponseUnmarshaller.Create;
end;

class function TPutPublicAccessBlockResponseUnmarshaller.Instance: IPutPublicAccessBlockResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
