unit AWS.S3Control.Transform.DeletePublicAccessBlockResponseUnmarshaller;

interface

uses
  AWS.S3Control.Model.DeletePublicAccessBlockResponse, 
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
  IDeletePublicAccessBlockResponseUnmarshaller = IResponseUnmarshaller;
  
  TDeletePublicAccessBlockResponseUnmarshaller = class(TXmlResponseUnmarshaller, IDeletePublicAccessBlockResponseUnmarshaller)
  strict private
    class var FInstance: IDeletePublicAccessBlockResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDeletePublicAccessBlockResponseUnmarshaller; static;
  end;
  
implementation

{ TDeletePublicAccessBlockResponseUnmarshaller }

function TDeletePublicAccessBlockResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDeletePublicAccessBlockResponse;
begin
  Response := TDeletePublicAccessBlockResponse.Create;
  try
    Result := Response;
  except
    Response.Free;
    raise;
  end;
end;

function TDeletePublicAccessBlockResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TDeletePublicAccessBlockResponseUnmarshaller.Create;
begin
  FInstance := TDeletePublicAccessBlockResponseUnmarshaller.Create;
end;

class function TDeletePublicAccessBlockResponseUnmarshaller.Instance: IDeletePublicAccessBlockResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
