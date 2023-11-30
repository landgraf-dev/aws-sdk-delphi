unit AWS.S3Control.Transform.DeleteAccessPointPolicyForObjectLambdaResponseUnmarshaller;

interface

uses
  AWS.S3Control.Model.DeleteAccessPointPolicyForObjectLambdaResponse, 
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
  IDeleteAccessPointPolicyForObjectLambdaResponseUnmarshaller = IResponseUnmarshaller;
  
  TDeleteAccessPointPolicyForObjectLambdaResponseUnmarshaller = class(TXmlResponseUnmarshaller, IDeleteAccessPointPolicyForObjectLambdaResponseUnmarshaller)
  strict private
    class var FInstance: IDeleteAccessPointPolicyForObjectLambdaResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDeleteAccessPointPolicyForObjectLambdaResponseUnmarshaller; static;
  end;
  
implementation

{ TDeleteAccessPointPolicyForObjectLambdaResponseUnmarshaller }

function TDeleteAccessPointPolicyForObjectLambdaResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDeleteAccessPointPolicyForObjectLambdaResponse;
begin
  Response := TDeleteAccessPointPolicyForObjectLambdaResponse.Create;
  try
    Result := Response;
  except
    Response.Free;
    raise;
  end;
end;

function TDeleteAccessPointPolicyForObjectLambdaResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TDeleteAccessPointPolicyForObjectLambdaResponseUnmarshaller.Create;
begin
  FInstance := TDeleteAccessPointPolicyForObjectLambdaResponseUnmarshaller.Create;
end;

class function TDeleteAccessPointPolicyForObjectLambdaResponseUnmarshaller.Instance: IDeleteAccessPointPolicyForObjectLambdaResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
