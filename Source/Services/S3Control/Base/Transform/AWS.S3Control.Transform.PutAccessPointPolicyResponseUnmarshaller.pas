unit AWS.S3Control.Transform.PutAccessPointPolicyResponseUnmarshaller;

interface

uses
  AWS.S3Control.Model.PutAccessPointPolicyResponse, 
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
  IPutAccessPointPolicyResponseUnmarshaller = IResponseUnmarshaller;
  
  TPutAccessPointPolicyResponseUnmarshaller = class(TXmlResponseUnmarshaller, IPutAccessPointPolicyResponseUnmarshaller)
  strict private
    class var FInstance: IPutAccessPointPolicyResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IPutAccessPointPolicyResponseUnmarshaller; static;
  end;
  
implementation

{ TPutAccessPointPolicyResponseUnmarshaller }

function TPutAccessPointPolicyResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TPutAccessPointPolicyResponse;
begin
  Response := TPutAccessPointPolicyResponse.Create;
  try
    Result := Response;
  except
    Response.Free;
    raise;
  end;
end;

function TPutAccessPointPolicyResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TPutAccessPointPolicyResponseUnmarshaller.Create;
begin
  FInstance := TPutAccessPointPolicyResponseUnmarshaller.Create;
end;

class function TPutAccessPointPolicyResponseUnmarshaller.Instance: IPutAccessPointPolicyResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
