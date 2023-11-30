unit AWS.S3Control.Transform.DeleteAccessPointPolicyResponseUnmarshaller;

interface

uses
  AWS.S3Control.Model.DeleteAccessPointPolicyResponse, 
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
  IDeleteAccessPointPolicyResponseUnmarshaller = IResponseUnmarshaller;
  
  TDeleteAccessPointPolicyResponseUnmarshaller = class(TXmlResponseUnmarshaller, IDeleteAccessPointPolicyResponseUnmarshaller)
  strict private
    class var FInstance: IDeleteAccessPointPolicyResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDeleteAccessPointPolicyResponseUnmarshaller; static;
  end;
  
implementation

{ TDeleteAccessPointPolicyResponseUnmarshaller }

function TDeleteAccessPointPolicyResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDeleteAccessPointPolicyResponse;
begin
  Response := TDeleteAccessPointPolicyResponse.Create;
  try
    Result := Response;
  except
    Response.Free;
    raise;
  end;
end;

function TDeleteAccessPointPolicyResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TDeleteAccessPointPolicyResponseUnmarshaller.Create;
begin
  FInstance := TDeleteAccessPointPolicyResponseUnmarshaller.Create;
end;

class function TDeleteAccessPointPolicyResponseUnmarshaller.Instance: IDeleteAccessPointPolicyResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
